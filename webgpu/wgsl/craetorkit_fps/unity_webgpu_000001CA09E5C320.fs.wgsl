const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct PGlobals {
  x_Time : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(12)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_AmbientColor : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
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

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(5) var sampler_Normal : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_SV_InstanceID0 : u32;

@group(1) @binding(1) var<uniform> x_362 : UnityDrawCallInfo;

@group(1) @binding(2) var<uniform> x_375 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat18 : f32;
  var u_xlatb18 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var x_255 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlati18 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  let x_39 : vec3<f32> = (vec3<f32>(x_27.x, x_27.y, x_27.z) * vec3<f32>(x_37.x, x_37.y, x_37.z));
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_44 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec3<f32>(x_44.x, x_44.y, x_44.z) * vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_56 : f32 = x_32.x_Time.x;
  let x_59 : f32 = x_32.x_MovementSpeed;
  let x_64 : f32 = vs_TEXCOORD0.z;
  u_xlat2.x = ((x_56 * x_59) + x_64);
  let x_69 : f32 = x_32.x_Time.x;
  let x_72 : f32 = x_32.x_MovementSpeed;
  let x_76 : f32 = vs_TEXCOORD0.w;
  u_xlat2.y = ((-(x_69) * x_72) + x_76);
  let x_85 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_85.x, x_85.y));
  let x_88 : vec3<f32> = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_92 : f32 = u_xlat2.z;
  let x_94 : f32 = u_xlat2.x;
  u_xlat2.x = (x_92 * x_94);
  let x_97 : vec4<f32> = u_xlat2;
  let x_104 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_107 : vec4<f32> = u_xlat2;
  let x_111 : f32 = x_32.x_NormalSacle;
  let x_113 : vec2<f32> = (vec2<f32>(x_107.x, x_107.y) * vec2<f32>(x_111, x_111));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_117 : vec4<f32> = u_xlat2;
  let x_119 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec2<f32>(x_117.x, x_117.y), vec2<f32>(x_119.x, x_119.y));
  let x_122 : f32 = u_xlat19;
  u_xlat19 = min(x_122, 1.0f);
  let x_125 : f32 = u_xlat19;
  u_xlat19 = (-(x_125) + 1.0f);
  let x_128 : f32 = u_xlat19;
  u_xlat2.z = sqrt(x_128);
  let x_132 : f32 = vs_COLOR0.w;
  u_xlat19 = (-(x_132) + 1.0f);
  let x_137 : f32 = u_xlat0.w;
  let x_139 : f32 = x_32.x_Color.w;
  let x_141 : f32 = u_xlat19;
  u_xlat18 = ((x_137 * x_139) + -(x_141));
  let x_147 : f32 = u_xlat18;
  u_xlatb18 = (x_147 < 0.0f);
  let x_150 : bool = u_xlatb18;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_161 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_168 : vec4<f32> = vs_TEXCOORD2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_175 : vec4<f32> = vs_TEXCOORD3;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec4<f32> = u_xlat3;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_186);
  let x_188 : f32 = u_xlat18;
  let x_190 : vec4<f32> = u_xlat3;
  let x_192 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_196 == 1.0f);
  let x_198 : bool = u_xlatb18;
  if (x_198) {
    let x_202 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_202 == 1.0f);
    let x_204 : vec4<f32> = vs_TEXCOORD2;
    let x_208 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_210 : vec3<f32> = (vec3<f32>(x_204.w, x_204.w, x_204.w) * vec3<f32>(x_208.x, x_208.y, x_208.z));
    let x_211 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_214 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_216 : vec4<f32> = vs_TEXCOORD1;
    let x_219 : vec4<f32> = u_xlat3;
    let x_221 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.w, x_216.w, x_216.w)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_222 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_225 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_227 : vec4<f32> = vs_TEXCOORD3;
    let x_230 : vec4<f32> = u_xlat3;
    let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.w, x_227.w, x_227.w)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
    let x_233 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : vec4<f32> = u_xlat3;
    let x_239 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_241 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) + vec3<f32>(x_239.x, x_239.y, x_239.z));
    let x_242 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_246 : f32 = vs_TEXCOORD1.w;
    u_xlat10.x = x_246;
    let x_249 : f32 = vs_TEXCOORD2.w;
    u_xlat10.y = x_249;
    let x_252 : f32 = vs_TEXCOORD3.w;
    u_xlat10.z = x_252;
    let x_254 : bool = u_xlatb18;
    if (x_254) {
      let x_258 : vec4<f32> = u_xlat3;
      x_255 = vec3<f32>(x_258.x, x_258.y, x_258.z);
    } else {
      let x_261 : vec3<f32> = u_xlat10;
      x_255 = x_261;
    }
    let x_262 : vec3<f32> = x_255;
    let x_263 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat3;
    let x_270 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_272 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + -(x_270));
    let x_273 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat3;
    let x_278 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) * x_278);
    let x_280 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
    let x_283 : f32 = u_xlat3.y;
    u_xlat18 = (x_283 * 0.25f);
    let x_287 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat19 = (x_287 * 0.5f);
    let x_292 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat9 = ((-(x_292) * 0.5f) + 0.25f);
    let x_296 : f32 = u_xlat18;
    let x_297 : f32 = u_xlat19;
    u_xlat18 = max(x_296, x_297);
    let x_299 : f32 = u_xlat9;
    let x_300 : f32 = u_xlat18;
    u_xlat3.x = min(x_299, x_300);
    let x_312 : vec4<f32> = u_xlat3;
    let x_314 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_312.x, x_312.z, x_312.w));
    u_xlat4 = x_314;
    let x_316 : vec4<f32> = u_xlat3;
    let x_319 : vec3<f32> = (vec3<f32>(x_316.x, x_316.z, x_316.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_320 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_325 : vec4<f32> = u_xlat5;
    let x_327 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_325.x, x_325.y, x_325.z));
    u_xlat5 = x_327;
    let x_328 : vec4<f32> = u_xlat3;
    let x_331 : vec3<f32> = (vec3<f32>(x_328.x, x_328.z, x_328.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_332 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
    let x_337 : vec4<f32> = u_xlat3;
    let x_339 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_337.x, x_337.y, x_337.z));
    u_xlat3 = x_339;
    u_xlat2.w = 1.0f;
    let x_341 : vec4<f32> = u_xlat4;
    let x_342 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_341, x_342);
    let x_345 : vec4<f32> = u_xlat5;
    let x_346 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_345, x_346);
    let x_349 : vec4<f32> = u_xlat3;
    let x_350 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_349, x_350);
  } else {
    let x_358 : u32 = vs_SV_InstanceID0;
    let x_365 : i32 = x_362.unity_BaseInstanceID;
    u_xlati18 = (bitcast<i32>(x_358) + x_365);
    let x_367 : i32 = u_xlati18;
    u_xlati18 = (x_367 * 7i);
    u_xlat2.w = 1.0f;
    let x_376 : i32 = u_xlati18;
    let x_379 : vec4<f32> = x_375.unity_Builtins2Array[(x_376 / 7i)].unity_SHArArray;
    let x_380 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_379, x_380);
    let x_383 : i32 = u_xlati18;
    let x_386 : vec4<f32> = x_375.unity_Builtins2Array[(x_383 / 7i)].unity_SHAgArray;
    let x_387 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_386, x_387);
    let x_390 : i32 = u_xlati18;
    let x_393 : vec4<f32> = x_375.unity_Builtins2Array[(x_390 / 7i)].unity_SHAbArray;
    let x_394 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_393, x_394);
  }
  let x_397 : vec4<f32> = u_xlat4;
  let x_401 : vec3<f32> = vs_TEXCOORD7;
  let x_402 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) + x_401);
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat3;
  let x_408 : vec3<f32> = max(vec3<f32>(x_405.x, x_405.y, x_405.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : vec4<f32> = vs_COLOR0;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_419 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_425 : f32 = x_32.x_Metallic;
  let x_427 : f32 = x_32.x_Metallic;
  let x_429 : f32 = x_32.x_Metallic;
  let x_430 : vec3<f32> = vec3<f32>(x_425, x_427, x_429);
  let x_435 : vec4<f32> = u_xlat0;
  let x_440 : vec3<f32> = ((vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(x_435.x, x_435.y, x_435.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_441 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = x_32.x_Metallic;
  u_xlat0.x = ((-(x_444) * 0.959999979f) + 0.959999979f);
  let x_450 : vec4<f32> = u_xlat0;
  let x_452 : vec3<f32> = u_xlat1;
  let x_453 : vec3<f32> = (vec3<f32>(x_450.x, x_450.x, x_450.x) * x_452);
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : vec4<f32> = u_xlat2;
  let x_461 : vec3<f32> = ((vec3<f32>(x_457.x, x_457.y, x_457.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_462 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = u_xlat3;
  let x_471 : vec4<f32> = x_32.x_AmbientColor;
  u_xlat1 = ((vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_466.x, x_466.y, x_466.z)) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_475 : vec3<f32> = u_xlat1;
  let x_477 : vec3<f32> = exp2(-(x_475));
  let x_478 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = vec3<f32>(x_481.x, x_481.y, x_481.z);
  let x_483 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  SV_Target0.w = 1.0f;
  let x_489 : f32 = x_32.x_Glossiness;
  SV_Target1.w = x_489;
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(5) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

