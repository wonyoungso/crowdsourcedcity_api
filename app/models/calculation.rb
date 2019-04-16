class Calculation
  def initialize(p)

  end

    A=28    #45-49 Recommended
    n=3   #3.25-4.5 Recommended
    sensorList = []

    def SetParameter(self,p_A,p_n):
        A=p_A
        n=p_n

    def CalculateDistance(self,rssi):
        Mi=(abs(rssi)-self.A)/(10*self.n)
        return pow(10,Mi)
    def CalculateDistanceList(self,rssi):
        ret=[]
        for i in range(len(rssi)):
            if(rssi==-1):
                ret.append(-1)
                continue
            Mi=(abs(rssi[i])-self.A)/(10*self.n)
            ret.append(pow(10,Mi))
        return ret

    def SetSensor(self,positionX,positionY):
        """Set sensor position in the map"""
        self.sensorList.append([positionX,positionY])

    def CalculateCoordinate(self,rssiList):
        convertedList=[]
        sensorX=[]
        sensorY=[]
        distance=[]
        # print(rssiList)
        for i in range(len(rssiList)):
            if(rssiList[i]==-1):
                convertedList.append(-1)
                continue
            else:
                distance.append(self.CalculateDistance(rssiList[i]))
                sensorX.append(self.sensorList[i][0])
                sensorY.append(self.sensorList[i][1])

        lx=len(distance)
        matrixA=[]
        matrixB=[]
        for i in range(lx-1):
            objA=[2*(sensorX[i]-sensorX[lx-1]),2 * (sensorY[i] - sensorY[lx - 1])]
            objB=[sensorX[i]*sensorX[i]-sensorX[lx - 1]*sensorX[lx - 1] \
                    +sensorY[i] * sensorY[i] - sensorY[lx - 1] * sensorY[lx - 1] \
                    +distance[lx - 1] * distance[lx - 1] - distance[i]*distance[i]]
            matrixA.append(objA)
            matrixB.append(objB)

        matrixA=mat(matrixA)
        matrixB=mat(matrixB)
        answer=(matrixA.T*matrixA).I*matrixA.T*matrixB
        return answer