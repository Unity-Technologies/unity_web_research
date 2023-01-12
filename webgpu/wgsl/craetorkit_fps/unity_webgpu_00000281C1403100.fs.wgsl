const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct PGlobals {
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Color : vec4<f32>,
}

struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct unity_Builtins2Array_Type {
  unity_SHArArray : vec4<f32>,
  unity_SHAgArray : vec4<f32>,
  unity_SHAbArray : vec4<f32>,
  unity_SHBrArray : vec4<f32>,
  unity_SHBgArray : vec4<f32>,
  unity_SHBbArray : vec4<f32>,
  unity_SHCArray : vec4<f32>,
}

type Arr = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_SV_InstanceID0 : u32;

@group(1) @binding(1) var<uniform> x_221 : UnityDrawCallInfo;

@group(1) @binding(2) var<uniform> x_238 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlat1 : vec4<f32>;
  var x_103 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlati15 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_47 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb15 = (x_47 == 1.0f);
  let x_50 : bool = u_xlatb15;
  if (x_50) {
    let x_55 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb15 = (x_55 == 1.0f);
    let x_61 : vec3<f32> = vs_TEXCOORD2;
    let x_65 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_67 : vec3<f32> = (vec3<f32>(x_61.y, x_61.y, x_61.y) * vec3<f32>(x_65.x, x_65.y, x_65.z));
    let x_68 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
    let x_71 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_73 : vec3<f32> = vs_TEXCOORD2;
    let x_76 : vec4<f32> = u_xlat1;
    let x_78 : vec3<f32> = ((vec3<f32>(x_71.x, x_71.y, x_71.z) * vec3<f32>(x_73.x, x_73.x, x_73.x)) + vec3<f32>(x_76.x, x_76.y, x_76.z));
    let x_79 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
    let x_83 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_85 : vec3<f32> = vs_TEXCOORD2;
    let x_88 : vec4<f32> = u_xlat1;
    let x_90 : vec3<f32> = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_85.z, x_85.z, x_85.z)) + vec3<f32>(x_88.x, x_88.y, x_88.z));
    let x_91 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
    let x_93 : vec4<f32> = u_xlat1;
    let x_97 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_99 : vec3<f32> = (vec3<f32>(x_93.x, x_93.y, x_93.z) + vec3<f32>(x_97.x, x_97.y, x_97.z));
    let x_100 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
    let x_102 : bool = u_xlatb15;
    if (x_102) {
      let x_106 : vec4<f32> = u_xlat1;
      x_103 = vec3<f32>(x_106.x, x_106.y, x_106.z);
    } else {
      let x_109 : vec3<f32> = vs_TEXCOORD2;
      x_103 = x_109;
    }
    let x_110 : vec3<f32> = x_103;
    let x_111 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
    let x_113 : vec4<f32> = u_xlat1;
    let x_117 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_119 : vec3<f32> = (vec3<f32>(x_113.x, x_113.y, x_113.z) + -(x_117));
    let x_120 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
    let x_122 : vec4<f32> = u_xlat1;
    let x_125 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_126 : vec3<f32> = (vec3<f32>(x_122.x, x_122.y, x_122.z) * x_125);
    let x_127 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_127.x, x_126.x, x_126.y, x_126.z);
    let x_132 : f32 = u_xlat1.y;
    u_xlat15 = (x_132 * 0.25f);
    let x_138 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat6 = (x_138 * 0.5f);
    let x_143 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat2.x = ((-(x_143) * 0.5f) + 0.25f);
    let x_148 : f32 = u_xlat15;
    let x_149 : f32 = u_xlat6;
    u_xlat15 = max(x_148, x_149);
    let x_152 : f32 = u_xlat2.x;
    let x_153 : f32 = u_xlat15;
    u_xlat1.x = min(x_152, x_153);
    let x_164 : vec4<f32> = u_xlat1;
    let x_166 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_164.x, x_164.z, x_164.w));
    u_xlat2 = x_166;
    let x_168 : vec4<f32> = u_xlat1;
    let x_172 : vec3<f32> = (vec3<f32>(x_168.x, x_168.z, x_168.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_173 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
    let x_178 : vec4<f32> = u_xlat3;
    let x_180 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_178.x, x_178.y, x_178.z));
    u_xlat3 = x_180;
    let x_181 : vec4<f32> = u_xlat1;
    let x_184 : vec3<f32> = (vec3<f32>(x_181.x, x_181.z, x_181.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_185 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_190 : vec4<f32> = u_xlat1;
    let x_192 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_190.x, x_190.y, x_190.z));
    u_xlat1 = x_192;
    let x_195 : vec3<f32> = vs_TEXCOORD1;
    let x_196 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    u_xlat4.w = 1.0f;
    let x_200 : vec4<f32> = u_xlat2;
    let x_201 : vec4<f32> = u_xlat4;
    u_xlat2.x = dot(x_200, x_201);
    let x_204 : vec4<f32> = u_xlat3;
    let x_205 : vec4<f32> = u_xlat4;
    u_xlat2.y = dot(x_204, x_205);
    let x_208 : vec4<f32> = u_xlat1;
    let x_209 : vec4<f32> = u_xlat4;
    u_xlat2.z = dot(x_208, x_209);
  } else {
    let x_217 : u32 = vs_SV_InstanceID0;
    let x_224 : i32 = x_221.unity_BaseInstanceID;
    u_xlati15 = (bitcast<i32>(x_217) + x_224);
    let x_226 : i32 = u_xlati15;
    u_xlati15 = (x_226 * 7i);
    let x_229 : vec3<f32> = vs_TEXCOORD1;
    let x_230 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    u_xlat1.w = 1.0f;
    let x_239 : i32 = u_xlati15;
    let x_242 : vec4<f32> = x_238.unity_Builtins2Array[(x_239 / 7i)].unity_SHArArray;
    let x_243 : vec4<f32> = u_xlat1;
    u_xlat2.x = dot(x_242, x_243);
    let x_246 : i32 = u_xlati15;
    let x_249 : vec4<f32> = x_238.unity_Builtins2Array[(x_246 / 7i)].unity_SHAgArray;
    let x_250 : vec4<f32> = u_xlat1;
    u_xlat2.y = dot(x_249, x_250);
    let x_253 : i32 = u_xlati15;
    let x_256 : vec4<f32> = x_238.unity_Builtins2Array[(x_253 / 7i)].unity_SHAbArray;
    let x_257 : vec4<f32> = u_xlat1;
    u_xlat2.z = dot(x_256, x_257);
  }
  let x_260 : vec4<f32> = u_xlat2;
  let x_263 : vec3<f32> = vs_TEXCOORD4;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + x_263);
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = max(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec3<f32> = u_xlat0;
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec3<f32> = (x_273 * vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_281 : vec4<f32> = u_xlat1;
  let x_284 : vec3<f32> = exp2(-(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_285 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : vec3<f32> = u_xlat0;
  let x_289 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  SV_Target0.w = 1.0f;
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_296 : vec3<f32> = vs_TEXCOORD1;
  let x_299 : vec3<f32> = ((x_296 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_300 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(3) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target3, SV_Target0, SV_Target1, SV_Target2);
}

