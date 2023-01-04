struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(12)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_EdgeColor2 : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_57 : PGlobals;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(8) var sampler_Noise : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat10 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(9) var sampler_Normal : sampler;

var<private> SV_Target1 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb8 : bool;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_512 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_23);
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_27.z);
  let x_36 : f32 = vs_TEXCOORD1.w;
  u_xlat9.x = x_36;
  let x_42 : f32 = vs_TEXCOORD2.w;
  u_xlat9.y = x_42;
  let x_47 : f32 = vs_TEXCOORD3.w;
  u_xlat9.z = x_47;
  let x_52 : vec3<f32> = u_xlat9;
  let x_62 : vec4<f32> = x_57.unity_ObjectToWorld[3i];
  u_xlat2 = (vec4<f32>(x_52.z, x_52.y, x_52.x, x_52.y) + -(vec4<f32>(x_62.z, x_62.y, x_62.x, x_62.y)));
  let x_67 : vec4<f32> = u_xlat2;
  let x_72 : vec3<f32> = (vec3<f32>(x_67.w, x_67.x, x_67.z) * vec3<f32>(6.0f, 0.200000003f, 0.200000003f));
  let x_73 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_72.z);
  let x_79 : f32 = x_57.x_Cutoff;
  let x_81 : f32 = x_57.x_Cutoff;
  u_xlat16 = (x_79 + x_81);
  let x_85 : f32 = u_xlat2.w;
  let x_88 : f32 = u_xlat16;
  u_xlat4.x = ((x_85 * 2.0f) + x_88);
  let x_92 : f32 = u_xlat2.y;
  let x_96 : f32 = x_57.x_Cutoff;
  u_xlat4.z = ((x_92 * 4.0f) + x_96);
  let x_101 : f32 = x_57.x_bounds.y;
  u_xlat16 = (x_101 + 0.200000003f);
  let x_103 : vec4<f32> = u_xlat3;
  let x_104 : vec2<f32> = vec2<f32>(x_103.y, x_103.w);
  let x_105 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_105.x, x_104.x, x_105.z, x_104.y);
  let x_113 : vec4<f32> = u_xlat4;
  let x_115 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_113.x, x_113.y));
  u_xlat24 = x_115.x;
  let x_121 : vec4<f32> = u_xlat4;
  let x_123 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_121.z, x_121.w));
  u_xlat1.x = x_123.x;
  let x_126 : f32 = u_xlat24;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat24 = dot(vec2<f32>(x_126, x_126), vec2<f32>(x_128.x, x_128.x));
  u_xlat3.y = 0.0f;
  let x_136 : vec4<f32> = u_xlat3;
  let x_138 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_136.x, x_136.y));
  u_xlat1.x = x_138.x;
  let x_141 : f32 = u_xlat16;
  u_xlat2.x = (x_141 * 0.5f);
  let x_146 : f32 = x_57.x_Cutoff;
  let x_147 : f32 = u_xlat16;
  let x_150 : f32 = u_xlat2.x;
  u_xlat16 = ((x_146 * x_147) + -(x_150));
  let x_157 : f32 = u_xlat2.w;
  let x_158 : f32 = u_xlat16;
  u_xlatb2 = (x_157 >= x_158);
  let x_161 : bool = u_xlatb2;
  u_xlat10 = select(0.0f, 1.0f, x_161);
  let x_165 : f32 = u_xlat16;
  let x_168 : f32 = x_57.x_EdgeSizeBot;
  u_xlat18 = (x_165 + -(x_168));
  let x_171 : f32 = u_xlat16;
  let x_172 : f32 = u_xlat18;
  u_xlat3.x = (x_171 + -(x_172));
  let x_176 : f32 = u_xlat18;
  let x_179 : f32 = u_xlat2.w;
  u_xlat18 = (-(x_176) + x_179);
  let x_182 : f32 = u_xlat3.x;
  u_xlat3.x = (1.0f / x_182);
  let x_185 : f32 = u_xlat18;
  let x_187 : f32 = u_xlat3.x;
  u_xlat18 = (x_185 * x_187);
  let x_189 : f32 = u_xlat18;
  u_xlat18 = clamp(x_189, 0.0f, 1.0f);
  let x_191 : f32 = u_xlat18;
  u_xlat3.x = ((x_191 * -2.0f) + 3.0f);
  let x_197 : f32 = u_xlat18;
  let x_198 : f32 = u_xlat18;
  u_xlat18 = (x_197 * x_198);
  let x_201 : f32 = u_xlat18;
  let x_203 : f32 = u_xlat3.x;
  u_xlat11.x = (x_201 * x_203);
  let x_207 : f32 = u_xlat16;
  let x_210 : f32 = x_57.x_EdgeSizeTop;
  u_xlat19 = (x_207 + x_210);
  let x_212 : f32 = u_xlat16;
  let x_213 : f32 = u_xlat19;
  u_xlat16 = (x_212 + -(x_213));
  let x_218 : f32 = u_xlat2.w;
  let x_219 : f32 = u_xlat19;
  u_xlat26 = (x_218 + -(x_219));
  let x_222 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_222);
  let x_224 : f32 = u_xlat16;
  let x_225 : f32 = u_xlat26;
  u_xlat16 = (x_224 * x_225);
  let x_227 : f32 = u_xlat16;
  u_xlat16 = clamp(x_227, 0.0f, 1.0f);
  let x_229 : f32 = u_xlat16;
  u_xlat26 = ((x_229 * -2.0f) + 3.0f);
  let x_232 : f32 = u_xlat16;
  let x_233 : f32 = u_xlat16;
  u_xlat16 = (x_232 * x_233);
  let x_235 : f32 = u_xlat16;
  let x_236 : f32 = u_xlat26;
  u_xlat16 = (x_235 * x_236);
  let x_238 : vec3<f32> = u_xlat11;
  let x_242 : vec4<f32> = x_57.x_EdgeColor1;
  u_xlat11 = (vec3<f32>(x_238.x, x_238.x, x_238.x) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : bool = u_xlatb2;
  u_xlat2.x = select(1.0f, 0.0f, x_245);
  let x_248 : vec4<f32> = u_xlat2;
  let x_250 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_248.x, x_248.x, x_248.x) * x_250);
  let x_253 : vec4<f32> = x_57.x_EdgeColor1;
  let x_257 : vec4<f32> = x_57.x_EdgeColor2;
  let x_260 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) + -(vec3<f32>(x_257.x, x_257.y, x_257.z)));
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat16;
  let x_265 : vec4<f32> = u_xlat4;
  let x_269 : vec4<f32> = x_57.x_EdgeColor2;
  let x_271 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_280 : vec2<f32> = vs_TEXCOORD0;
  let x_281 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_280);
  u_xlat5 = vec3<f32>(x_281.x, x_281.y, x_281.z);
  let x_284 : vec3<f32> = u_xlat5;
  let x_287 : vec4<f32> = x_57.x_Color;
  u_xlat6 = (x_284 * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec3<f32> = u_xlat11;
  let x_293 : vec3<f32> = (x_291 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_294 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec3<f32> = u_xlat11;
  let x_297 : vec4<f32> = u_xlat1;
  let x_300 : vec4<f32> = u_xlat7;
  u_xlat11 = ((x_296 * vec3<f32>(x_297.x, x_297.x, x_297.x)) + vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : f32 = u_xlat10;
  let x_308 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305, x_305, x_305)) + x_308);
  let x_315 : vec2<f32> = vs_TEXCOORD0;
  let x_316 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_315);
  let x_317 : vec3<f32> = vec3<f32>(x_316.x, x_316.y, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_321 : f32 = u_xlat4.z;
  let x_323 : f32 = u_xlat4.x;
  u_xlat4.x = (x_321 * x_323);
  let x_326 : vec4<f32> = u_xlat4;
  let x_332 : vec2<f32> = ((vec2<f32>(x_326.x, x_326.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec2<f32>(x_335.x, x_335.y), vec2<f32>(x_337.x, x_337.y));
  let x_342 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_342, 1.0f);
  let x_346 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_346) + 1.0f);
  let x_351 : f32 = u_xlat1.x;
  u_xlat4.z = sqrt(x_351);
  let x_354 : vec3<f32> = u_xlat0;
  let x_358 : f32 = x_57.x_Metallic;
  let x_361 : f32 = x_57.x_Glossiness;
  let x_363 : vec2<f32> = (vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_358, x_361));
  let x_364 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_363.x, x_363.y, x_364.z);
  let x_367 : f32 = u_xlat3.x;
  let x_369 : f32 = u_xlat18;
  u_xlat1.x = ((-(x_367) * x_369) + 1.0f);
  let x_374 : f32 = u_xlat0.x;
  let x_376 : f32 = u_xlat1.x;
  u_xlat0.x = (x_374 * x_376);
  let x_382 : f32 = u_xlat0.y;
  let x_384 : f32 = u_xlat1.x;
  SV_Target1.w = (x_382 * x_384);
  let x_389 : f32 = u_xlat24;
  let x_390 : f32 = u_xlat16;
  let x_393 : f32 = u_xlat2.x;
  u_xlat8.x = ((x_389 * x_390) + x_393);
  let x_397 : f32 = u_xlat8.x;
  let x_399 : f32 = x_57.x_Cutoff;
  u_xlat8.x = (x_397 + -(x_399));
  let x_404 : f32 = u_xlat8.x;
  let x_407 : f32 = x_57.x_Cutoff2;
  u_xlat8.x = (x_404 + -(x_407));
  let x_413 : f32 = u_xlat8.x;
  u_xlatb8 = (x_413 < 0.0f);
  let x_415 : bool = u_xlatb8;
  if (((select(0i, 1i, x_415) * -1i) != 0i)) {
    discard;
  }
  let x_425 : vec4<f32> = vs_TEXCOORD1;
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_425.x, x_425.y, x_425.z), vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_431 : vec4<f32> = vs_TEXCOORD2;
  let x_433 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_437 : vec4<f32> = vs_TEXCOORD3;
  let x_439 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_437.x, x_437.y, x_437.z), vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_443 : vec4<f32> = u_xlat2;
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat8.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_450 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_450);
  let x_453 : vec3<f32> = u_xlat8;
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.x, x_453.x) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_462 : f32 = x_57.unity_ProbeVolumeParams.x;
  u_xlatb8 = (x_462 == 1.0f);
  let x_464 : bool = u_xlatb8;
  if (x_464) {
    let x_468 : f32 = x_57.unity_ProbeVolumeParams.y;
    u_xlatb8 = (x_468 == 1.0f);
    let x_470 : vec4<f32> = vs_TEXCOORD2;
    let x_474 : vec4<f32> = x_57.unity_ProbeVolumeWorldToObject[1i];
    let x_476 : vec3<f32> = (vec3<f32>(x_470.w, x_470.w, x_470.w) * vec3<f32>(x_474.x, x_474.y, x_474.z));
    let x_477 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
    let x_480 : vec4<f32> = x_57.unity_ProbeVolumeWorldToObject[0i];
    let x_482 : vec4<f32> = vs_TEXCOORD1;
    let x_485 : vec4<f32> = u_xlat4;
    let x_487 : vec3<f32> = ((vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482.w, x_482.w, x_482.w)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
    let x_488 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
    let x_492 : vec4<f32> = x_57.unity_ProbeVolumeWorldToObject[2i];
    let x_494 : vec4<f32> = vs_TEXCOORD3;
    let x_497 : vec4<f32> = u_xlat4;
    let x_499 : vec3<f32> = ((vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_494.w, x_494.w, x_494.w)) + vec3<f32>(x_497.x, x_497.y, x_497.z));
    let x_500 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
    let x_502 : vec4<f32> = u_xlat4;
    let x_505 : vec4<f32> = x_57.unity_ProbeVolumeWorldToObject[3i];
    let x_507 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) + vec3<f32>(x_505.x, x_505.y, x_505.z));
    let x_508 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
    let x_510 : bool = u_xlatb8;
    if (x_510) {
      let x_515 : vec4<f32> = u_xlat4;
      x_512 = vec3<f32>(x_515.x, x_515.y, x_515.z);
    } else {
      let x_518 : vec3<f32> = u_xlat9;
      x_512 = x_518;
    }
    let x_519 : vec3<f32> = x_512;
    u_xlat8 = x_519;
    let x_520 : vec3<f32> = u_xlat8;
    let x_524 : vec3<f32> = x_57.unity_ProbeVolumeMin;
    u_xlat8 = (x_520 + -(x_524));
    let x_527 : vec3<f32> = u_xlat8;
    let x_530 : vec3<f32> = x_57.unity_ProbeVolumeSizeInv;
    let x_531 : vec3<f32> = (x_527 * x_530);
    let x_532 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_532.x, x_531.x, x_531.y, x_531.z);
    let x_535 : f32 = u_xlat1.y;
    u_xlat8.x = (x_535 * 0.25f);
    let x_540 : f32 = x_57.unity_ProbeVolumeParams.z;
    u_xlat16 = (x_540 * 0.5f);
    let x_543 : f32 = x_57.unity_ProbeVolumeParams.z;
    u_xlat24 = ((-(x_543) * 0.5f) + 0.25f);
    let x_547 : f32 = u_xlat16;
    let x_549 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_547, x_549);
    let x_552 : f32 = u_xlat24;
    let x_554 : f32 = u_xlat8.x;
    u_xlat1.x = min(x_552, x_554);
    let x_565 : vec4<f32> = u_xlat1;
    let x_567 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_565.x, x_565.z, x_565.w));
    u_xlat4 = x_567;
    let x_568 : vec4<f32> = u_xlat1;
    u_xlat8 = (vec3<f32>(x_568.x, x_568.z, x_568.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_575 : vec3<f32> = u_xlat8;
    let x_576 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_575);
    u_xlat7 = x_576;
    let x_577 : vec4<f32> = u_xlat1;
    u_xlat8 = (vec3<f32>(x_577.x, x_577.z, x_577.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_584 : vec3<f32> = u_xlat8;
    let x_585 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_584);
    u_xlat1 = x_585;
    u_xlat2.w = 1.0f;
    let x_587 : vec4<f32> = u_xlat4;
    let x_588 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_587, x_588);
    let x_591 : vec4<f32> = u_xlat7;
    let x_592 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_591, x_592);
    let x_595 : vec4<f32> = u_xlat1;
    let x_596 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_595, x_596);
  } else {
    u_xlat2.w = 1.0f;
    let x_602 : vec4<f32> = x_57.unity_SHAr;
    let x_603 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_602, x_603);
    let x_607 : vec4<f32> = x_57.unity_SHAg;
    let x_608 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_607, x_608);
    let x_612 : vec4<f32> = x_57.unity_SHAb;
    let x_613 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_612, x_613);
  }
  let x_616 : vec4<f32> = u_xlat4;
  let x_620 : vec3<f32> = vs_TEXCOORD6;
  u_xlat8 = (vec3<f32>(x_616.x, x_616.y, x_616.z) + x_620);
  let x_622 : vec3<f32> = u_xlat8;
  u_xlat8 = max(x_622, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_625 : vec3<f32> = u_xlat5;
  let x_627 : vec4<f32> = x_57.x_Color;
  let x_632 : vec3<f32> = ((x_625 * vec3<f32>(x_627.x, x_627.y, x_627.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec3<f32> = u_xlat0;
  let x_637 : vec4<f32> = u_xlat1;
  let x_642 : vec3<f32> = ((vec3<f32>(x_635.x, x_635.x, x_635.x) * vec3<f32>(x_637.x, x_637.y, x_637.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_643 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_646) * 0.959999979f) + 0.959999979f);
  let x_652 : vec3<f32> = u_xlat0;
  let x_654 : vec3<f32> = u_xlat6;
  let x_655 : vec3<f32> = (vec3<f32>(x_652.x, x_652.x, x_652.x) * x_654);
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : vec4<f32> = u_xlat2;
  let x_662 : vec3<f32> = ((vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_663 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat1;
  let x_667 : vec3<f32> = u_xlat8;
  let x_669 : vec3<f32> = u_xlat11;
  u_xlat0 = ((vec3<f32>(x_665.x, x_665.y, x_665.z) * x_667) + x_669);
  let x_672 : vec3<f32> = u_xlat0;
  let x_674 : vec3<f32> = exp2(-(x_672));
  let x_675 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_678 : vec4<f32> = u_xlat1;
  let x_679 : vec3<f32> = vec3<f32>(x_678.x, x_678.y, x_678.z);
  let x_680 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  SV_Target0.w = 1.0f;
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

