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
  @size(4)
  padding_1 : u32,
  x_VeinColor : vec4<f32>,
  x_BrainColor : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Occlusion : texture_2d<f32>;

@group(0) @binding(9) var sampler_Occlusion : sampler;

@group(0) @binding(2) var x_Metallic : texture_2d<f32>;

@group(0) @binding(7) var sampler_Metallic : sampler;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_NormalMap : sampler;

@group(1) @binding(0) var<uniform> x_96 : PGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb8 : bool;
  var u_xlat12 : vec3<f32>;
  var x_303 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat24 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  let x_26 : vec3<f32> = vec3<f32>(x_24.x, x_24.y, x_24.z);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_34 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : vec4<f32> = textureSample(x_Occlusion, sampler_Occlusion, x_34);
  u_xlat0.w = x_35.x;
  let x_48 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_48);
  u_xlat1 = x_49;
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  let x_57 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_56);
  let x_58 : vec3<f32> = vec3<f32>(x_57.x, x_57.y, x_57.w);
  let x_59 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_58.x, x_58.y, x_58.z, x_59.w);
  let x_63 : f32 = u_xlat2.z;
  let x_65 : f32 = u_xlat2.x;
  u_xlat2.x = (x_63 * x_65);
  let x_68 : vec4<f32> = u_xlat2;
  let x_75 : vec2<f32> = ((vec2<f32>(x_68.x, x_68.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_75.x, x_75.y, x_76.z, x_76.w);
  let x_79 : vec4<f32> = u_xlat2;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat23 = dot(vec2<f32>(x_79.x, x_79.y), vec2<f32>(x_81.x, x_81.y));
  let x_84 : f32 = u_xlat23;
  u_xlat23 = min(x_84, 1.0f);
  let x_87 : f32 = u_xlat23;
  u_xlat23 = (-(x_87) + 1.0f);
  let x_90 : f32 = u_xlat23;
  u_xlat2.z = sqrt(x_90);
  let x_102 : f32 = x_96.x_Time.y;
  u_xlat23 = fract(x_102);
  let x_104 : f32 = u_xlat23;
  u_xlat23 = (x_104 + -0.039999999f);
  let x_107 : f32 = u_xlat23;
  let x_111 : f32 = vs_TEXCOORD0.y;
  u_xlat23 = (-(x_107) + x_111);
  let x_113 : f32 = u_xlat23;
  u_xlat23 = (x_113 * 12.5f);
  let x_116 : f32 = u_xlat23;
  u_xlat23 = clamp(x_116, 0.0f, 1.0f);
  let x_121 : f32 = u_xlat23;
  u_xlat3.x = ((x_121 * -2.0f) + 3.0f);
  let x_127 : f32 = u_xlat23;
  let x_128 : f32 = u_xlat23;
  u_xlat23 = (x_127 * x_128);
  let x_130 : f32 = u_xlat23;
  let x_132 : f32 = u_xlat3.x;
  u_xlat23 = (x_130 * x_132);
  let x_134 : f32 = u_xlat23;
  u_xlat23 = (x_134 * 3.140000105f);
  let x_137 : f32 = u_xlat23;
  u_xlat23 = sin(x_137);
  let x_139 : f32 = u_xlat23;
  u_xlat23 = max(x_139, 0.0f);
  let x_142 : f32 = x_96.x_Time.y;
  u_xlat3.x = (x_142 * 0.200000003f);
  let x_147 : f32 = u_xlat3.x;
  u_xlat3.x = fract(x_147);
  let x_151 : f32 = u_xlat3.x;
  u_xlat3.x = (x_151 * 3.140000105f);
  let x_155 : f32 = u_xlat3.x;
  u_xlat3.x = sin(x_155);
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat8 = (-(vec2<f32>(x_160.y, x_160.z)) + vec2<f32>(1.0f, 1.0f));
  let x_166 : vec2<f32> = u_xlat8;
  let x_171 : vec4<f32> = x_96.x_BrainColor;
  u_xlat10 = (vec3<f32>(x_166.x, x_166.x, x_166.x) * vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec2<f32> = u_xlat8;
  let x_179 : vec4<f32> = x_96.x_VeinColor;
  let x_181 : vec3<f32> = (vec3<f32>(x_175.y, x_175.y, x_175.y) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : f32 = u_xlat23;
  let x_186 : vec4<f32> = u_xlat4;
  let x_188 : vec3<f32> = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec3<f32> = u_xlat10;
  let x_192 : vec3<f32> = u_xlat3;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_191 * vec3<f32>(x_192.x, x_192.x, x_192.x)) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : vec4<f32> = vs_TEXCOORD1;
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_207 : vec4<f32> = vs_TEXCOORD2;
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(vec3<f32>(x_207.x, x_207.y, x_207.z), vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_214 : vec4<f32> = vs_TEXCOORD3;
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(vec3<f32>(x_214.x, x_214.y, x_214.z), vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_220 : vec4<f32> = u_xlat4;
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat8.x = dot(vec3<f32>(x_220.x, x_220.y, x_220.z), vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_227 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_227);
  let x_230 : vec2<f32> = u_xlat8;
  let x_232 : vec4<f32> = u_xlat4;
  let x_234 : vec3<f32> = (vec3<f32>(x_230.x, x_230.x, x_230.x) * vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_242 : f32 = x_96.unity_ProbeVolumeParams.x;
  u_xlatb8 = (x_242 == 1.0f);
  let x_244 : bool = u_xlatb8;
  if (x_244) {
    let x_248 : f32 = x_96.unity_ProbeVolumeParams.y;
    u_xlatb8 = (x_248 == 1.0f);
    let x_250 : vec4<f32> = vs_TEXCOORD2;
    let x_255 : vec4<f32> = x_96.unity_ProbeVolumeWorldToObject[1i];
    let x_257 : vec3<f32> = (vec3<f32>(x_250.w, x_250.w, x_250.w) * vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_261 : vec4<f32> = x_96.unity_ProbeVolumeWorldToObject[0i];
    let x_263 : vec4<f32> = vs_TEXCOORD1;
    let x_266 : vec4<f32> = u_xlat4;
    let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.w, x_263.w, x_263.w)) + vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_273 : vec4<f32> = x_96.unity_ProbeVolumeWorldToObject[2i];
    let x_275 : vec4<f32> = vs_TEXCOORD3;
    let x_278 : vec4<f32> = u_xlat4;
    let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.w, x_275.w, x_275.w)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
    let x_281 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
    let x_283 : vec4<f32> = u_xlat4;
    let x_287 : vec4<f32> = x_96.unity_ProbeVolumeWorldToObject[3i];
    let x_289 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) + vec3<f32>(x_287.x, x_287.y, x_287.z));
    let x_290 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_294 : f32 = vs_TEXCOORD1.w;
    u_xlat12.x = x_294;
    let x_297 : f32 = vs_TEXCOORD2.w;
    u_xlat12.y = x_297;
    let x_300 : f32 = vs_TEXCOORD3.w;
    u_xlat12.z = x_300;
    let x_302 : bool = u_xlatb8;
    if (x_302) {
      let x_306 : vec4<f32> = u_xlat4;
      x_303 = vec3<f32>(x_306.x, x_306.y, x_306.z);
    } else {
      let x_309 : vec3<f32> = u_xlat12;
      x_303 = x_309;
    }
    let x_310 : vec3<f32> = x_303;
    let x_311 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : vec4<f32> = u_xlat4;
    let x_318 : vec3<f32> = x_96.unity_ProbeVolumeMin;
    let x_320 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) + -(x_318));
    let x_321 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_323 : vec4<f32> = u_xlat4;
    let x_327 : vec3<f32> = x_96.unity_ProbeVolumeSizeInv;
    let x_328 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) * x_327);
    let x_329 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_329.x, x_328.x, x_328.y, x_328.z);
    let x_332 : f32 = u_xlat4.y;
    u_xlat8.x = (x_332 * 0.25f);
    let x_338 : f32 = x_96.unity_ProbeVolumeParams.z;
    u_xlat15 = (x_338 * 0.5f);
    let x_343 : f32 = x_96.unity_ProbeVolumeParams.z;
    u_xlat24 = ((-(x_343) * 0.5f) + 0.25f);
    let x_347 : f32 = u_xlat15;
    let x_349 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_347, x_349);
    let x_352 : f32 = u_xlat24;
    let x_354 : f32 = u_xlat8.x;
    u_xlat4.x = min(x_352, x_354);
    let x_366 : vec4<f32> = u_xlat4;
    let x_368 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_366.x, x_366.z, x_366.w));
    u_xlat5 = x_368;
    let x_370 : vec4<f32> = u_xlat4;
    let x_373 : vec3<f32> = (vec3<f32>(x_370.x, x_370.z, x_370.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_374 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
    let x_379 : vec4<f32> = u_xlat6;
    let x_381 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_379.x, x_379.y, x_379.z));
    u_xlat6 = x_381;
    let x_382 : vec4<f32> = u_xlat4;
    let x_385 : vec3<f32> = (vec3<f32>(x_382.x, x_382.z, x_382.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_386 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
    let x_391 : vec4<f32> = u_xlat4;
    let x_393 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_391.x, x_391.y, x_391.z));
    u_xlat4 = x_393;
    u_xlat2.w = 1.0f;
    let x_395 : vec4<f32> = u_xlat5;
    let x_396 : vec4<f32> = u_xlat2;
    u_xlat5.x = dot(x_395, x_396);
    let x_399 : vec4<f32> = u_xlat6;
    let x_400 : vec4<f32> = u_xlat2;
    u_xlat5.y = dot(x_399, x_400);
    let x_403 : vec4<f32> = u_xlat4;
    let x_404 : vec4<f32> = u_xlat2;
    u_xlat5.z = dot(x_403, x_404);
  } else {
    u_xlat2.w = 1.0f;
    let x_410 : vec4<f32> = x_96.unity_SHAr;
    let x_411 : vec4<f32> = u_xlat2;
    u_xlat5.x = dot(x_410, x_411);
    let x_415 : vec4<f32> = x_96.unity_SHAg;
    let x_416 : vec4<f32> = u_xlat2;
    u_xlat5.y = dot(x_415, x_416);
    let x_420 : vec4<f32> = x_96.unity_SHAb;
    let x_421 : vec4<f32> = u_xlat2;
    u_xlat5.z = dot(x_420, x_421);
  }
  let x_424 : vec4<f32> = u_xlat5;
  let x_428 : vec3<f32> = vs_TEXCOORD6;
  let x_429 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) + x_428);
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat4;
  let x_435 : vec3<f32> = max(vec3<f32>(x_432.x, x_432.y, x_432.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_436 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat0;
  let x_440 : vec4<f32> = u_xlat4;
  let x_442 : vec3<f32> = (vec3<f32>(x_438.w, x_438.w, x_438.w) * vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_449 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_453 : vec4<f32> = u_xlat1;
  let x_455 : vec4<f32> = u_xlat5;
  let x_460 : vec3<f32> = ((vec3<f32>(x_453.x, x_453.x, x_453.x) * vec3<f32>(x_455.x, x_455.y, x_455.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_461 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_464) * 0.959999979f) + 0.959999979f);
  let x_470 : vec4<f32> = u_xlat0;
  let x_472 : vec4<f32> = u_xlat1;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472.x, x_472.x, x_472.x));
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : vec4<f32> = u_xlat2;
  let x_482 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_483 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = u_xlat4;
  let x_490 : vec3<f32> = u_xlat3;
  let x_491 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487.x, x_487.y, x_487.z)) + x_490);
  let x_492 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : vec4<f32> = u_xlat1;
  let x_498 : vec3<f32> = exp2(-(vec3<f32>(x_495.x, x_495.y, x_495.z)));
  let x_499 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_502 : vec4<f32> = u_xlat0;
  SV_Target0 = x_502;
  let x_504 : f32 = u_xlat1.w;
  SV_Target1.w = x_504;
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
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

