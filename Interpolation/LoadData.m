%callback 1
[filename, pathname] = ...
     uigetfile('*.txt','Select your data');
 
if isequal(filename,0)
   disp('User selected Cancel')
else
   disp(['User selected ', fullfile(pathname, filename)])
end

set(data,'string',fullfile(pathname,filename));

eval(['cd ''' pathname ''';']);
eval(['dataku = load(''' filename ''')']);
x=dataku(:,1);
y=dataku(:,2);



