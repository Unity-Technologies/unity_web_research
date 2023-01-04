let      UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
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
  x_Metallic : f32,
  x_Glossiness : f32,
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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlati18 : i32;

var<private> vs_SV_InstanceID0 : u32;

@group(0) @binding(1) var<uniform> x_228 : UnityDrawCallInfo;

@group(0) @binding(2) var<uniform> x_245 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_111 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD2;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_40 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_40 * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_54 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_54 == 1.0f);
  let x_57 : bool = u_xlatb18;
  if (x_57) {
    let x_62 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_62 == 1.0f);
    let x_68 : vec3<f32> = vs_TEXCOORD1;
    let x_72 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_74 : vec3<f32> = (vec3<f32>(x_68.y, x_68.y, x_68.y) * vec3<f32>(x_72.x, x_72.y, x_72.z));
    let x_75 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
    let x_78 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_80 : vec3<f32> = vs_TEXCOORD1;
    let x_83 : vec4<f32> = u_xlat2;
    let x_85 : vec3<f32> = ((vec3<f32>(x_78.x, x_78.y, x_78.z) * vec3<f32>(x_80.x, x_80.x, x_80.x)) + vec3<f32>(x_83.x, x_83.y, x_83.z));
    let x_86 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
    let x_90 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_92 : vec3<f32> = vs_TEXCOORD1;
    let x_95 : vec4<f32> = u_xlat2;
    let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.z) * vec3<f32>(x_92.z, x_92.z, x_92.z)) + vec3<f32>(x_95.x, x_95.y, x_95.z));
    let x_98 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
    let x_100 : vec4<f32> = u_xlat2;
    let x_104 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_106 : vec3<f32> = (vec3<f32>(x_100.x, x_100.y, x_100.z) + vec3<f32>(x_104.x, x_104.y, x_104.z));
    let x_107 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
    let x_109 : bool = u_xlatb18;
    if (x_109) {
      let x_114 : vec4<f32> = u_xlat2;
      x_111 = vec3<f32>(x_114.x, x_114.y, x_114.z);
    } else {
      let x_117 : vec3<f32> = vs_TEXCOORD1;
      x_111 = x_117;
    }
    let x_118 : vec3<f32> = x_111;
    let x_119 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
    let x_121 : vec4<f32> = u_xlat2;
    let x_125 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_127 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) + -(x_125));
    let x_128 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
    let x_130 : vec4<f32> = u_xlat2;
    let x_133 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_134 : vec3<f32> = (vec3<f32>(x_130.x, x_130.y, x_130.z) * x_133);
    let x_135 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_135.x, x_134.x, x_134.y, x_134.z);
    let x_140 : f32 = u_xlat2.y;
    u_xlat18 = (x_140 * 0.25f);
    let x_146 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat19 = (x_146 * 0.5f);
    let x_151 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat8 = ((-(x_151) * 0.5f) + 0.25f);
    let x_155 : f32 = u_xlat18;
    let x_156 : f32 = u_xlat19;
    u_xlat18 = max(x_155, x_156);
    let x_158 : f32 = u_xlat8;
    let x_159 : f32 = u_xlat18;
    u_xlat2.x = min(x_158, x_159);
    let x_171 : vec4<f32> = u_xlat2;
    let x_173 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_171.x, x_171.z, x_171.w));
    u_xlat3 = x_173;
    let x_175 : vec4<f32> = u_xlat2;
    let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.z, x_175.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_180 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_185 : vec4<f32> = u_xlat4;
    let x_187 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_185.x, x_185.y, x_185.z));
    u_xlat4 = x_187;
    let x_188 : vec4<f32> = u_xlat2;
    let x_191 : vec3<f32> = (vec3<f32>(x_188.x, x_188.z, x_188.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_192 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_197 : vec4<f32> = u_xlat2;
    let x_199 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_197.x, x_197.y, x_197.z));
    u_xlat2 = x_199;
    let x_202 : vec3<f32> = vs_TEXCOORD0;
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    u_xlat5.w = 1.0f;
    let x_207 : vec4<f32> = u_xlat3;
    let x_208 : vec4<f32> = u_xlat5;
    u_xlat3.x = dot(x_207, x_208);
    let x_211 : vec4<f32> = u_xlat4;
    let x_212 : vec4<f32> = u_xlat5;
    u_xlat3.y = dot(x_211, x_212);
    let x_215 : vec4<f32> = u_xlat2;
    let x_216 : vec4<f32> = u_xlat5;
    u_xlat3.z = dot(x_215, x_216);
  } else {
    let x_224 : u32 = vs_SV_InstanceID0;
    let x_231 : i32 = x_228.unity_BaseInstanceID;
    u_xlati18 = (bitcast<i32>(x_224) + x_231);
    let x_233 : i32 = u_xlati18;
    u_xlati18 = (x_233 * 7i);
    let x_236 : vec3<f32> = vs_TEXCOORD0;
    let x_237 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    u_xlat2.w = 1.0f;
    let x_246 : i32 = u_xlati18;
    let x_249 : vec4<f32> = x_245.unity_Builtins2Array[(x_246 / 7i)].unity_SHArArray;
    let x_250 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_249, x_250);
    let x_253 : i32 = u_xlati18;
    let x_256 : vec4<f32> = x_245.unity_Builtins2Array[(x_253 / 7i)].unity_SHAgArray;
    let x_257 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_256, x_257);
    let x_260 : i32 = u_xlati18;
    let x_263 : vec4<f32> = x_245.unity_Builtins2Array[(x_260 / 7i)].unity_SHAbArray;
    let x_264 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_263, x_264);
  }
  let x_267 : vec4<f32> = u_xlat3;
  let x_270 : vec3<f32> = vs_TEXCOORD6;
  let x_271 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) + x_270);
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat2;
  let x_277 : vec3<f32> = max(vec3<f32>(x_274.x, x_274.y, x_274.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec3<f32> = u_xlat0;
  let x_281 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((x_280 * vec3<f32>(x_281.x, x_281.y, x_281.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_291 : f32 = x_31.x_Metallic;
  let x_293 : vec3<f32> = u_xlat0;
  let x_297 : vec3<f32> = ((vec3<f32>(x_291, x_291, x_291) * x_293) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_298 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_301 : f32 = x_31.x_Metallic;
  u_xlat0.x = ((-(x_301) * 0.959999979f) + 0.959999979f);
  let x_307 : vec3<f32> = u_xlat0;
  let x_309 : vec3<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_307.x, x_307.x, x_307.x) * x_309);
  let x_311 : vec4<f32> = u_xlat2;
  let x_313 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_311.x, x_311.y, x_311.z) * x_313);
  let x_316 : vec3<f32> = u_xlat1;
  let x_318 : vec3<f32> = exp2(-(x_316));
  let x_319 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : vec3<f32> = u_xlat0;
  let x_323 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  SV_Target0.w = 1.0f;
  let x_329 : f32 = x_31.x_Glossiness;
  SV_Target1.w = x_329;
  let x_332 : vec3<f32> = vs_TEXCOORD0;
  let x_335 : vec3<f32> = ((x_332 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_336 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(5) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(4) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target3, SV_Target0, SV_Target2);
}

