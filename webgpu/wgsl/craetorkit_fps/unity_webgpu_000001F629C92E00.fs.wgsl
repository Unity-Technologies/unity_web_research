struct PGlobals {
  x_Time : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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
  var x_257 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
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
  let x_197 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_197 == 1.0f);
  let x_199 : bool = u_xlatb18;
  if (x_199) {
    let x_203 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_203 == 1.0f);
    let x_205 : vec4<f32> = vs_TEXCOORD2;
    let x_209 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_211 : vec3<f32> = (vec3<f32>(x_205.w, x_205.w, x_205.w) * vec3<f32>(x_209.x, x_209.y, x_209.z));
    let x_212 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_215 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_217 : vec4<f32> = vs_TEXCOORD1;
    let x_220 : vec4<f32> = u_xlat3;
    let x_222 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217.w, x_217.w, x_217.w)) + vec3<f32>(x_220.x, x_220.y, x_220.z));
    let x_223 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
    let x_227 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_229 : vec4<f32> = vs_TEXCOORD3;
    let x_232 : vec4<f32> = u_xlat3;
    let x_234 : vec3<f32> = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.w, x_229.w, x_229.w)) + vec3<f32>(x_232.x, x_232.y, x_232.z));
    let x_235 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_237 : vec4<f32> = u_xlat3;
    let x_241 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_243 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) + vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_248 : f32 = vs_TEXCOORD1.w;
    u_xlat10.x = x_248;
    let x_251 : f32 = vs_TEXCOORD2.w;
    u_xlat10.y = x_251;
    let x_254 : f32 = vs_TEXCOORD3.w;
    u_xlat10.z = x_254;
    let x_256 : bool = u_xlatb18;
    if (x_256) {
      let x_260 : vec4<f32> = u_xlat3;
      x_257 = vec3<f32>(x_260.x, x_260.y, x_260.z);
    } else {
      let x_263 : vec3<f32> = u_xlat10;
      x_257 = x_263;
    }
    let x_264 : vec3<f32> = x_257;
    let x_265 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_267 : vec4<f32> = u_xlat3;
    let x_272 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_274 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) + -(x_272));
    let x_275 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat3;
    let x_281 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_282 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) * x_281);
    let x_283 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_283.x, x_282.x, x_282.y, x_282.z);
    let x_286 : f32 = u_xlat3.y;
    u_xlat18 = (x_286 * 0.25f);
    let x_290 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat19 = (x_290 * 0.5f);
    let x_295 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat9 = ((-(x_295) * 0.5f) + 0.25f);
    let x_299 : f32 = u_xlat18;
    let x_300 : f32 = u_xlat19;
    u_xlat18 = max(x_299, x_300);
    let x_302 : f32 = u_xlat9;
    let x_303 : f32 = u_xlat18;
    u_xlat3.x = min(x_302, x_303);
    let x_315 : vec4<f32> = u_xlat3;
    let x_317 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_315.x, x_315.z, x_315.w));
    u_xlat4 = x_317;
    let x_319 : vec4<f32> = u_xlat3;
    let x_322 : vec3<f32> = (vec3<f32>(x_319.x, x_319.z, x_319.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_323 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_328 : vec4<f32> = u_xlat5;
    let x_330 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_328.x, x_328.y, x_328.z));
    u_xlat5 = x_330;
    let x_331 : vec4<f32> = u_xlat3;
    let x_334 : vec3<f32> = (vec3<f32>(x_331.x, x_331.z, x_331.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_335 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_340 : vec4<f32> = u_xlat3;
    let x_342 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_340.x, x_340.y, x_340.z));
    u_xlat3 = x_342;
    u_xlat2.w = 1.0f;
    let x_344 : vec4<f32> = u_xlat4;
    let x_345 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_344, x_345);
    let x_348 : vec4<f32> = u_xlat5;
    let x_349 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_348, x_349);
    let x_352 : vec4<f32> = u_xlat3;
    let x_353 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_352, x_353);
  } else {
    u_xlat2.w = 1.0f;
    let x_359 : vec4<f32> = x_32.unity_SHAr;
    let x_360 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_359, x_360);
    let x_364 : vec4<f32> = x_32.unity_SHAg;
    let x_365 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_364, x_365);
    let x_369 : vec4<f32> = x_32.unity_SHAb;
    let x_370 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_369, x_370);
  }
  let x_373 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = vs_TEXCOORD7;
  let x_378 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + x_377);
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat3;
  let x_384 : vec3<f32> = max(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_385 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = vs_COLOR0;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389.x, x_389.y, x_389.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_395 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_401 : f32 = x_32.x_Metallic;
  let x_403 : f32 = x_32.x_Metallic;
  let x_405 : f32 = x_32.x_Metallic;
  let x_406 : vec3<f32> = vec3<f32>(x_401, x_403, x_405);
  let x_411 : vec4<f32> = u_xlat0;
  let x_416 : vec3<f32> = ((vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_411.x, x_411.y, x_411.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_417 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : f32 = x_32.x_Metallic;
  u_xlat0.x = ((-(x_420) * 0.959999979f) + 0.959999979f);
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec3<f32> = u_xlat1;
  let x_429 : vec3<f32> = (vec3<f32>(x_426.x, x_426.x, x_426.x) * x_428);
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_433 : vec4<f32> = u_xlat2;
  let x_437 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_438 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat0;
  let x_442 : vec4<f32> = u_xlat3;
  let x_447 : vec4<f32> = x_32.x_AmbientColor;
  u_xlat1 = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_442.x, x_442.y, x_442.z)) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_451 : vec3<f32> = u_xlat1;
  let x_453 : vec3<f32> = exp2(-(x_451));
  let x_454 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = vec3<f32>(x_457.x, x_457.y, x_457.z);
  let x_459 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  SV_Target0.w = 1.0f;
  let x_465 : f32 = x_32.x_Glossiness;
  SV_Target1.w = x_465;
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
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

