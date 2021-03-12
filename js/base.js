function exportToGlobal(exportData,name)
{
    if(typeof exports === 'object' && typeof module !== 'undefined' ){
        module.exports = exportData;
    }else if(typeof define === 'function' && define.amd){
        define(exportData);
    }else if(typeof window === 'object'){
        window[name] = exportData;
    }else if(typeof global === 'object'){
        global[name] = exportData;
    }
}
