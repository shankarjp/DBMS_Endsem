#include <iostream>
#include <vector>
#include <string>
#include <set>

using namespace std;

class FD {
	public:
	vector<string> left;
	vector<string> right;
	
	FD(vector<string> left, vector<string> right): left(left), right(right) {};
	};
	
set<string> closure(set<string> step4, vector<FD> fds){
	
	set<string> result;
	result=step4;
	
	for(int i=0;i<fds.size();i++){
		bool flag=true;
		for(auto l: fds[i].left){
			if(result.find(l)==result.end()){
				flag=false;
			}
		}
		
		if(flag){
			for(auto r: fds[i].right){
				result.insert(r);
			}
		}
	}

	return result;
}

int main(){
	vector<string> R = {"W","X","Y","Z"};
	vector<FD> fds;
	
	fds.push_back(FD({"X","Y","Z"},{"W"}));
	fds.push_back(FD({"X","Y"},{"Z","W"}));
	fds.push_back(FD({"X"},{"W","Y","Z"}));
	
	//attributes that are neither on right or left
	vector<string> neither;

	//right, left
	set<string> allright;
	set<string> allleft;
	
	for(int i=0;i<fds.size();i++){
		for(auto attribute: fds[i].left){
			allleft.insert(attribute);
		}
		for(auto attribute: fds[i].right){
			allright.insert(attribute);
		}
	}
	
	//right, left
	set<string> right;
	set<string> left;
	
	for(int i=0;i<fds.size();i++){
		for(auto attribute: fds[i].left){
			if(allright.find(attribute)==allright.end())
				left.insert(attribute);
		}
		for(auto attribute: fds[i].right){
			if(allleft.find(attribute)==allleft.end())
				right.insert(attribute);
		}
	}
	
	set<string> step4;
	
	for(int i=0;i<R.size();i++){
		if(right.find(R[i])==right.end() && left.find(R[i])==left.end()){
			neither.push_back(R[i]);
		}
	}
		
	for(auto i: left){
		step4.insert(i);
	}
	
	set<string> step5;
	step5=closure(step4,fds);
	
	if(step5.size()==R.size()){
		cout<<"Candidate Key Found"<<endl;
		for(auto i: step4){
			cout<<i<<",";
		}
	}
	
	return 1;
	

}
