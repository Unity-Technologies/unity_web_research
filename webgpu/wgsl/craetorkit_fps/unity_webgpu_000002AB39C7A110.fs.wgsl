struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
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
  x_GlossMapScale : f32,
  @size(12)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat25 : f32;
  var u_xlatb16 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var x_212 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  u_xlat2 = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_55 : vec4<f32> = x_46.x_Color;
  let x_57 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * x_57) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_62.x, x_62.x, x_62.x) * x_64) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.z;
  let x_93 : f32 = u_xlat3.x;
  u_xlat3.x = (x_91 * x_93);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat16 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat16;
  let x_108 : vec2<f32> = u_xlat16;
  u_xlat25 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat25;
  u_xlat25 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat25;
  u_xlat25 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_116);
  let x_118 : vec2<f32> = u_xlat16;
  let x_121 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_118.y, x_118.y, x_118.y) * vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_125 : vec4<f32> = vs_TEXCOORD2;
  let x_127 : vec2<f32> = u_xlat16;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_127.x, x_127.x, x_127.x)) + x_130);
  let x_133 : vec4<f32> = vs_TEXCOORD4;
  let x_135 : f32 = u_xlat25;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135, x_135, x_135)) + x_138);
  let x_146 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb16 = (x_146 == 1.0f);
  let x_148 : bool = u_xlatb16;
  if (x_148) {
    let x_153 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb16 = (x_153 == 1.0f);
    let x_156 : vec4<f32> = vs_TEXCOORD3;
    let x_161 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_163 : vec3<f32> = (vec3<f32>(x_156.w, x_156.w, x_156.w) * vec3<f32>(x_161.x, x_161.y, x_161.z));
    let x_164 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
    let x_168 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_170 : vec4<f32> = vs_TEXCOORD2;
    let x_173 : vec4<f32> = u_xlat4;
    let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.w, x_170.w, x_170.w)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
    let x_176 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_180 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_182 : vec4<f32> = vs_TEXCOORD4;
    let x_185 : vec4<f32> = u_xlat4;
    let x_187 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.w, x_182.w, x_182.w)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
    let x_188 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat4;
    let x_194 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_196 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_203 : f32 = vs_TEXCOORD2.w;
    u_xlat13.x = x_203;
    let x_206 : f32 = vs_TEXCOORD3.w;
    u_xlat13.y = x_206;
    let x_209 : f32 = vs_TEXCOORD4.w;
    u_xlat13.z = x_209;
    let x_211 : bool = u_xlatb16;
    if (x_211) {
      let x_215 : vec4<f32> = u_xlat4;
      x_212 = vec3<f32>(x_215.x, x_215.y, x_215.z);
    } else {
      let x_218 : vec3<f32> = u_xlat13;
      x_212 = x_218;
    }
    let x_219 : vec3<f32> = x_212;
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat4;
    let x_227 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_229 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) + -(x_227));
    let x_230 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : vec4<f32> = u_xlat4;
    let x_236 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_237 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) * x_236);
    let x_238 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_238.x, x_237.x, x_237.y, x_237.z);
    let x_241 : f32 = u_xlat4.y;
    u_xlat16.x = ((x_241 * 0.25f) + 0.75f);
    let x_249 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_249 * 0.5f) + 0.75f);
    let x_253 : f32 = u_xlat24;
    let x_255 : f32 = u_xlat16.x;
    u_xlat4.x = max(x_253, x_255);
    let x_266 : vec4<f32> = u_xlat4;
    let x_268 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_266.x, x_266.z, x_266.w));
    u_xlat4 = x_268;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_274 : vec4<f32> = u_xlat4;
  let x_276 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat16.x = dot(x_274, x_276);
  let x_280 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_280, 0.0f, 1.0f);
  let x_289 : vec4<f32> = vs_TEXCOORD0;
  let x_291 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_289.x, x_289.y));
  u_xlat24 = x_291.y;
  let x_294 : f32 = u_xlat0.y;
  let x_298 : f32 = x_46.x_GlossMapScale;
  u_xlat4.z = ((-(x_294) * x_298) + 1.0f);
  let x_303 : vec4<f32> = vs_TEXCOORD1;
  let x_305 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_303.x, x_303.y, x_303.z), x_305);
  let x_307 : f32 = u_xlat25;
  let x_308 : f32 = u_xlat25;
  u_xlat25 = (x_307 + x_308);
  let x_311 : vec3<f32> = u_xlat3;
  let x_312 : f32 = u_xlat25;
  let x_316 : vec4<f32> = vs_TEXCOORD1;
  let x_318 : vec3<f32> = ((x_311 * -(vec3<f32>(x_312, x_312, x_312))) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : vec2<f32> = u_xlat16;
  let x_326 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_330 : f32 = u_xlat4.z;
  u_xlat16.x = ((-(x_330) * 0.699999988f) + 1.700000048f);
  let x_338 : f32 = u_xlat16.x;
  let x_340 : f32 = u_xlat4.z;
  u_xlat16.x = (x_338 * x_340);
  let x_344 : f32 = u_xlat16.x;
  u_xlat16.x = (x_344 * 6.0f);
  let x_356 : vec4<f32> = u_xlat5;
  let x_359 : f32 = u_xlat16.x;
  let x_360 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_356.x, x_356.y, x_356.z), x_359);
  u_xlat5 = x_360;
  let x_362 : f32 = u_xlat5.w;
  u_xlat16.x = (x_362 + -1.0f);
  let x_366 : f32 = x_46.unity_SpecCube0_HDR.w;
  let x_368 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_366 * x_368) + 1.0f);
  let x_373 : f32 = u_xlat16.x;
  u_xlat16.x = log2(x_373);
  let x_377 : f32 = u_xlat16.x;
  let x_379 : f32 = x_46.unity_SpecCube0_HDR.y;
  u_xlat16.x = (x_377 * x_379);
  let x_383 : f32 = u_xlat16.x;
  u_xlat16.x = exp2(x_383);
  let x_387 : f32 = u_xlat16.x;
  let x_389 : f32 = x_46.unity_SpecCube0_HDR.x;
  u_xlat16.x = (x_387 * x_389);
  let x_392 : vec4<f32> = u_xlat5;
  let x_394 : vec2<f32> = u_xlat16;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_394.x, x_394.x, x_394.x));
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : f32 = u_xlat24;
  let x_401 : vec4<f32> = u_xlat5;
  let x_403 : vec3<f32> = (vec3<f32>(x_399, x_399, x_399) * vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = vs_TEXCOORD1;
  let x_409 : vec3<f32> = u_xlat3;
  u_xlat16.x = dot(-(vec3<f32>(x_406.x, x_406.y, x_406.z)), x_409);
  let x_413 : f32 = u_xlat16.x;
  let x_415 : f32 = u_xlat16.x;
  u_xlat24 = (x_413 + x_415);
  let x_418 : vec3<f32> = u_xlat3;
  let x_419 : f32 = u_xlat24;
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  u_xlat7 = ((x_418 * -(vec3<f32>(x_419, x_419, x_419))) + -(vec3<f32>(x_423.x, x_423.y, x_423.z)));
  let x_427 : vec3<f32> = u_xlat3;
  let x_429 : vec4<f32> = x_46.x_WorldSpaceLightPos0;
  u_xlat24 = dot(x_427, vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : f32 = u_xlat24;
  u_xlat24 = clamp(x_432, 0.0f, 1.0f);
  let x_435 : f32 = u_xlat16.x;
  u_xlat16.x = x_435;
  let x_438 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_438, 0.0f, 1.0f);
  let x_441 : vec3<f32> = u_xlat7;
  let x_443 : vec4<f32> = x_46.x_WorldSpaceLightPos0;
  u_xlat3.x = dot(x_441, vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_448 : f32 = u_xlat16.x;
  u_xlat3.y = (-(x_448) + 1.0f);
  let x_452 : vec3<f32> = u_xlat3;
  let x_454 : vec3<f32> = u_xlat3;
  let x_456 : vec2<f32> = (vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_454.x, x_454.y));
  let x_457 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_456.x, x_456.y, x_457.z);
  let x_459 : vec3<f32> = u_xlat3;
  let x_461 : vec3<f32> = u_xlat3;
  let x_463 : vec2<f32> = (vec2<f32>(x_459.x, x_459.y) * vec2<f32>(x_461.x, x_461.y));
  let x_464 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_468 : f32 = u_xlat0.y;
  let x_470 : f32 = x_46.x_GlossMapScale;
  let x_473 : f32 = u_xlat0.x;
  u_xlat8 = ((x_468 * x_470) + -(x_473));
  let x_476 : f32 = u_xlat8;
  u_xlat8 = (x_476 + 1.0f);
  let x_478 : f32 = u_xlat8;
  u_xlat8 = clamp(x_478, 0.0f, 1.0f);
  let x_485 : vec4<f32> = u_xlat4;
  let x_487 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_485.x, x_485.z));
  u_xlat16.x = x_487.x;
  let x_491 : f32 = u_xlat16.x;
  u_xlat16.x = (x_491 * 16.0f);
  let x_495 : vec3<f32> = u_xlat1;
  let x_496 : vec2<f32> = u_xlat16;
  u_xlat3 = (x_495 * vec3<f32>(x_496.x, x_496.x, x_496.x));
  let x_499 : vec3<f32> = u_xlat2;
  let x_500 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_499 * vec3<f32>(x_500.x, x_500.x, x_500.x)) + x_503);
  let x_505 : f32 = u_xlat24;
  let x_507 : vec3<f32> = u_xlat6;
  let x_508 : vec3<f32> = (vec3<f32>(x_505, x_505, x_505) * x_507);
  let x_509 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_508.x, x_509.y, x_508.y, x_508.z);
  let x_511 : vec3<f32> = u_xlat1;
  let x_513 : f32 = u_xlat8;
  u_xlat3 = (-(x_511) + vec3<f32>(x_513, x_513, x_513));
  let x_516 : vec4<f32> = u_xlat4;
  let x_518 : vec3<f32> = u_xlat3;
  let x_520 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_516.y, x_516.y, x_516.y) * x_518) + x_520);
  let x_522 : vec3<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_522 * vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : vec3<f32> = u_xlat2;
  let x_527 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = u_xlat1;
  let x_531 : vec3<f32> = ((x_526 * vec3<f32>(x_527.x, x_527.z, x_527.w)) + x_530);
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_539 : vec4<f32> = vs_TEXCOORD0;
  let x_541 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_539.x, x_539.y));
  u_xlat1 = vec3<f32>(x_541.x, x_541.y, x_541.z);
  let x_543 : vec3<f32> = u_xlat1;
  let x_546 : vec4<f32> = x_46.x_EmissionColor;
  let x_549 : vec4<f32> = u_xlat0;
  let x_551 : vec3<f32> = ((x_543 * vec3<f32>(x_546.x, x_546.y, x_546.z)) + vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_555 : f32 = vs_TEXCOORD1.w;
  u_xlat24 = x_555;
  let x_556 : f32 = u_xlat24;
  u_xlat24 = clamp(x_556, 0.0f, 1.0f);
  let x_558 : vec4<f32> = u_xlat0;
  let x_561 : vec4<f32> = x_46.unity_FogColor;
  let x_564 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) + -(vec3<f32>(x_561.x, x_561.y, x_561.z)));
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_569 : f32 = u_xlat24;
  let x_571 : vec4<f32> = u_xlat0;
  let x_575 : vec4<f32> = x_46.unity_FogColor;
  let x_577 : vec3<f32> = ((vec3<f32>(x_569, x_569, x_569) * vec3<f32>(x_571.x, x_571.y, x_571.z)) + vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

