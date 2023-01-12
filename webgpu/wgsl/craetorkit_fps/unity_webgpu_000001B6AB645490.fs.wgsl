struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat4 : vec4<f32>;
  var x_172 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat21;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat21;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_117 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_117 == 1.0f);
  let x_120 : bool = u_xlatb22;
  if (x_120) {
    let x_125 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_125 == 1.0f);
    let x_130 : vec3<f32> = vs_TEXCOORD5;
    let x_134 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_136 : vec3<f32> = (vec3<f32>(x_130.y, x_130.y, x_130.y) * vec3<f32>(x_134.x, x_134.y, x_134.z));
    let x_137 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
    let x_141 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_143 : vec3<f32> = vs_TEXCOORD5;
    let x_146 : vec4<f32> = u_xlat4;
    let x_148 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + vec3<f32>(x_146.x, x_146.y, x_146.z));
    let x_149 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
    let x_152 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_154 : vec3<f32> = vs_TEXCOORD5;
    let x_157 : vec4<f32> = u_xlat4;
    let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.z, x_154.z, x_154.z)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
    let x_160 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_162 : vec4<f32> = u_xlat4;
    let x_166 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_168 : vec3<f32> = (vec3<f32>(x_162.x, x_162.y, x_162.z) + vec3<f32>(x_166.x, x_166.y, x_166.z));
    let x_169 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_171 : bool = u_xlatb22;
    if (x_171) {
      let x_175 : vec4<f32> = u_xlat4;
      x_172 = vec3<f32>(x_175.x, x_175.y, x_175.z);
    } else {
      let x_178 : vec3<f32> = vs_TEXCOORD5;
      x_172 = x_178;
    }
    let x_179 : vec3<f32> = x_172;
    let x_180 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat4;
    let x_187 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_189 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + -(x_187));
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat4;
    let x_195 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_196 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) * x_195);
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_197.x, x_196.x, x_196.y, x_196.z);
    let x_201 : f32 = u_xlat4.y;
    u_xlat22 = ((x_201 * 0.25f) + 0.75f);
    let x_209 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_209 * 0.5f) + 0.75f);
    let x_213 : f32 = u_xlat22;
    let x_214 : f32 = u_xlat23;
    u_xlat4.x = max(x_213, x_214);
    let x_225 : vec4<f32> = u_xlat4;
    let x_227 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_225.x, x_225.z, x_225.w));
    u_xlat4 = x_227;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_234, x_236);
  let x_238 : f32 = u_xlat22;
  u_xlat22 = clamp(x_238, 0.0f, 1.0f);
  let x_241 : f32 = u_xlat22;
  let x_245 : vec4<f32> = x_33.x_LightColor0;
  let x_247 : vec3<f32> = (vec3<f32>(x_241, x_241, x_241) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_252 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_252) + 1.0f);
  let x_259 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_259;
  let x_263 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_263;
  let x_266 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_266;
  let x_269 : vec4<f32> = vs_TEXCOORD1;
  let x_272 : f32 = u_xlat21;
  let x_275 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_269.x, x_269.y, x_269.z)) * vec3<f32>(x_272, x_272, x_272)) + x_275);
  let x_277 : vec3<f32> = u_xlat6;
  let x_278 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_277, x_278);
  let x_280 : f32 = u_xlat21;
  u_xlat21 = max(x_280, 0.001f);
  let x_283 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_283);
  let x_285 : f32 = u_xlat21;
  let x_287 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_285, x_285, x_285) * x_287);
  let x_289 : vec4<f32> = u_xlat2;
  let x_291 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), -(x_291));
  let x_294 : vec4<f32> = u_xlat2;
  let x_296 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), x_296);
  let x_298 : f32 = u_xlat23;
  u_xlat23 = clamp(x_298, 0.0f, 1.0f);
  let x_300 : vec4<f32> = u_xlat2;
  let x_302 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), x_302);
  let x_306 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_306, 0.0f, 1.0f);
  let x_310 : vec3<f32> = u_xlat5;
  let x_311 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_310, x_311);
  let x_313 : f32 = u_xlat9;
  u_xlat9 = clamp(x_313, 0.0f, 1.0f);
  let x_316 : f32 = u_xlat9;
  let x_317 : f32 = u_xlat9;
  u_xlat16 = (x_316 * x_317);
  let x_319 : f32 = u_xlat16;
  let x_321 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_319, x_319), vec2<f32>(x_321, x_321));
  let x_324 : f32 = u_xlat16;
  u_xlat16 = (x_324 + -0.5f);
  let x_327 : f32 = u_xlat23;
  u_xlat3.x = (-(x_327) + 1.0f);
  let x_333 : f32 = u_xlat3.x;
  let x_335 : f32 = u_xlat3.x;
  u_xlat10 = (x_333 * x_335);
  let x_337 : f32 = u_xlat10;
  let x_338 : f32 = u_xlat10;
  u_xlat10 = (x_337 * x_338);
  let x_341 : f32 = u_xlat3.x;
  let x_342 : f32 = u_xlat10;
  u_xlat3.x = (x_341 * x_342);
  let x_345 : f32 = u_xlat16;
  let x_347 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_345 * x_347) + 1.0f);
  let x_351 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_351)) + 1.0f);
  let x_356 : f32 = u_xlat10;
  let x_357 : f32 = u_xlat10;
  u_xlat17 = (x_356 * x_357);
  let x_359 : f32 = u_xlat17;
  let x_360 : f32 = u_xlat17;
  u_xlat17 = (x_359 * x_360);
  let x_362 : f32 = u_xlat10;
  let x_363 : f32 = u_xlat17;
  u_xlat10 = (x_362 * x_363);
  let x_365 : f32 = u_xlat16;
  let x_366 : f32 = u_xlat10;
  u_xlat16 = ((x_365 * x_366) + 1.0f);
  let x_369 : f32 = u_xlat16;
  let x_371 : f32 = u_xlat3.x;
  u_xlat16 = (x_369 * x_371);
  let x_373 : f32 = u_xlat23;
  let x_374 : f32 = u_xlat16;
  u_xlat16 = (x_373 * x_374);
  let x_376 : f32 = u_xlat22;
  let x_377 : f32 = u_xlat22;
  u_xlat22 = (x_376 * x_377);
  let x_379 : f32 = u_xlat22;
  u_xlat22 = max(x_379, 0.002f);
  let x_382 : f32 = u_xlat22;
  u_xlat3.x = (-(x_382) + 1.0f);
  let x_386 : f32 = u_xlat21;
  let x_389 : f32 = u_xlat3.x;
  let x_391 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_386) * x_389) + x_391);
  let x_393 : f32 = u_xlat23;
  let x_395 : f32 = u_xlat3.x;
  let x_397 : f32 = u_xlat22;
  u_xlat3.x = ((x_393 * x_395) + x_397);
  let x_400 : f32 = u_xlat21;
  let x_403 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_400) * x_403);
  let x_405 : f32 = u_xlat23;
  let x_406 : f32 = u_xlat10;
  let x_408 : f32 = u_xlat21;
  u_xlat21 = ((x_405 * x_406) + x_408);
  let x_410 : f32 = u_xlat21;
  u_xlat21 = (x_410 + 0.00001f);
  let x_413 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_413);
  let x_415 : f32 = u_xlat22;
  let x_416 : f32 = u_xlat22;
  u_xlat22 = (x_415 * x_416);
  let x_419 : f32 = u_xlat2.x;
  let x_420 : f32 = u_xlat22;
  let x_423 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_419 * x_420) + -(x_423));
  let x_428 : f32 = u_xlat3.x;
  let x_430 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_428 * x_430) + 1.0f);
  let x_434 : f32 = u_xlat22;
  u_xlat22 = (x_434 * 0.318309873f);
  let x_438 : f32 = u_xlat2.x;
  let x_440 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_438 * x_440) + 0.0000001f);
  let x_445 : f32 = u_xlat22;
  let x_447 : f32 = u_xlat2.x;
  u_xlat22 = (x_445 / x_447);
  let x_449 : f32 = u_xlat21;
  let x_450 : f32 = u_xlat22;
  u_xlat21 = (x_449 * x_450);
  let x_452 : f32 = u_xlat23;
  let x_453 : f32 = u_xlat21;
  u_xlat21 = (x_452 * x_453);
  let x_455 : f32 = u_xlat21;
  u_xlat21 = (x_455 * 3.141592741f);
  let x_458 : f32 = u_xlat21;
  u_xlat21 = max(x_458, 0.0f);
  let x_460 : vec3<f32> = u_xlat0;
  let x_461 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_460, x_461);
  let x_463 : f32 = u_xlat22;
  u_xlatb22 = !((x_463 == 0.0f));
  let x_465 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_465);
  let x_467 : f32 = u_xlat21;
  let x_468 : f32 = u_xlat22;
  u_xlat21 = (x_467 * x_468);
  let x_470 : f32 = u_xlat16;
  let x_472 : vec4<f32> = u_xlat4;
  let x_474 : vec3<f32> = (vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_474.x, x_475.y, x_474.y, x_474.z);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479, x_479, x_479));
  let x_482 : f32 = u_xlat9;
  u_xlat21 = (-(x_482) + 1.0f);
  let x_485 : f32 = u_xlat21;
  let x_486 : f32 = u_xlat21;
  u_xlat22 = (x_485 * x_486);
  let x_488 : f32 = u_xlat22;
  let x_489 : f32 = u_xlat22;
  u_xlat22 = (x_488 * x_489);
  let x_491 : f32 = u_xlat21;
  let x_492 : f32 = u_xlat22;
  u_xlat21 = (x_491 * x_492);
  let x_494 : vec3<f32> = u_xlat0;
  let x_497 : vec3<f32> = (-(x_494) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : f32 = u_xlat21;
  let x_505 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_500.x, x_500.y, x_500.z) * vec3<f32>(x_502, x_502, x_502)) + x_505);
  let x_507 : vec3<f32> = u_xlat0;
  let x_508 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_507 * x_508);
  let x_512 : vec3<f32> = u_xlat1;
  let x_513 : vec4<f32> = u_xlat2;
  let x_516 : vec3<f32> = u_xlat0;
  let x_517 : vec3<f32> = ((x_512 * vec3<f32>(x_513.x, x_513.z, x_513.w)) + x_516);
  let x_518 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

