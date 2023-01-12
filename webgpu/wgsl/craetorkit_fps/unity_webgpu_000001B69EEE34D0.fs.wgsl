struct PGlobals {
  x_SinTime : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  @size(8)
  padding_4 : u32,
  x_EdgeColor1 : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(0) var x_DissolveNoise : texture_2d<f32>;

@group(0) @binding(18) var sampler_DissolveNoise : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Occlusion : texture_2d<f32>;

@group(0) @binding(14) var sampler_Occlusion : sampler;

@group(0) @binding(3) var x_Specular : texture_2d<f32>;

@group(0) @binding(15) var sampler_Specular : sampler;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_EmissionMap : sampler;

@group(0) @binding(5) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(17) var sampler_DisplacementNoise : sampler;

@group(0) @binding(6) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalMap : sampler;

@group(0) @binding(9) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(11) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat35 : vec2<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat52 : f32;
  var u_xlatb49 : bool;
  var u_xlat8 : vec4<f32>;
  var x_351 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_540 : f32;
  var x_552 : f32;
  var x_564 : f32;
  var u_xlatb52 : bool;
  var u_xlat13 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb15 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_726 : f32;
  var x_738 : f32;
  var x_750 : f32;
  var u_xlat18 : f32;
  var u_xlat17 : f32;
  var u_xlat33 : f32;
  var u_xlat34 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_16;
  let x_22 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_22;
  let x_27 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_27;
  let x_33 : vec4<f32> = u_xlat0;
  let x_44 : vec3<f32> = x_39.x_WorldSpaceCameraPos;
  u_xlat1 = (-(vec3<f32>(x_33.x, x_33.y, x_33.z)) + x_44);
  let x_47 : vec3<f32> = u_xlat1;
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_50);
  let x_53 : f32 = u_xlat48;
  let x_55 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_53, x_53, x_53) * x_55);
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_73 : vec2<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_DissolveNoise, sampler_DissolveNoise, x_73);
  u_xlat49 = x_74.x;
  let x_80 : f32 = x_39.x_EdgeSize;
  let x_83 : f32 = x_39.x_Cutoff;
  u_xlat50 = (x_80 + x_83);
  let x_87 : f32 = x_39.x_Cutoff;
  let x_88 : f32 = u_xlat50;
  let x_91 : f32 = x_39.x_EdgeSize;
  u_xlat3.x = ((x_87 * x_88) + x_91);
  let x_95 : f32 = u_xlat49;
  let x_97 : f32 = x_39.x_EdgeSize;
  u_xlat19 = max(x_95, x_97);
  let x_99 : f32 = u_xlat19;
  u_xlat19 = min(x_99, 1.0f);
  let x_105 : f32 = x_39.x_Cutoff;
  let x_106 : f32 = u_xlat50;
  let x_109 : f32 = u_xlat3.x;
  u_xlat35.x = ((x_105 * x_106) + -(x_109));
  let x_114 : f32 = u_xlat3.x;
  let x_116 : f32 = u_xlat19;
  u_xlat3.x = (-(x_114) + x_116);
  let x_120 : f32 = u_xlat35.x;
  u_xlat19 = (1.0f / x_120);
  let x_122 : f32 = u_xlat19;
  let x_124 : f32 = u_xlat3.x;
  u_xlat3.x = (x_122 * x_124);
  let x_128 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_128, 0.0f, 1.0f);
  let x_133 : f32 = u_xlat3.x;
  u_xlat19 = ((x_133 * -2.0f) + 3.0f);
  let x_139 : f32 = u_xlat3.x;
  let x_141 : f32 = u_xlat3.x;
  u_xlat3.x = (x_139 * x_141);
  let x_145 : f32 = u_xlat3.x;
  let x_146 : f32 = u_xlat19;
  u_xlat3.x = (x_145 * x_146);
  let x_155 : vec2<f32> = vs_TEXCOORD0;
  let x_156 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_155);
  u_xlat4 = x_156;
  let x_158 : vec4<f32> = u_xlat4;
  let x_162 : vec4<f32> = x_39.x_Color;
  u_xlat5 = (x_158 * x_162);
  let x_169 : vec2<f32> = vs_TEXCOORD0;
  let x_170 : vec4<f32> = textureSample(x_Occlusion, sampler_Occlusion, x_169);
  u_xlat19 = x_170.x;
  let x_177 : vec2<f32> = vs_TEXCOORD0;
  let x_178 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_177);
  u_xlat35 = vec2<f32>(x_178.x, x_178.w);
  let x_186 : vec2<f32> = vs_TEXCOORD0;
  let x_187 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_186);
  u_xlat6 = vec3<f32>(x_187.x, x_187.y, x_187.z);
  let x_189 : vec3<f32> = u_xlat6;
  let x_192 : vec4<f32> = x_39.x_EmissionColor;
  u_xlat6 = (x_189 * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = x_39.x_SinTime;
  u_xlat7 = (vec3<f32>(x_196.x, x_196.y, x_196.z) + vec3<f32>(x_200.z, x_200.z, x_200.z));
  let x_212 : vec3<f32> = u_xlat7;
  let x_213 : vec4<f32> = textureSample(x_DisplacementNoise, sampler_DisplacementNoise, x_212);
  u_xlat52 = x_213.x;
  let x_215 : vec3<f32> = u_xlat3;
  let x_219 : vec4<f32> = x_39.x_EdgeColor1;
  u_xlat7 = (vec3<f32>(x_215.x, x_215.x, x_215.x) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec3<f32> = u_xlat6;
  let x_223 : f32 = u_xlat52;
  let x_226 : vec3<f32> = u_xlat7;
  u_xlat6 = ((x_222 * vec3<f32>(x_223, x_223, x_223)) + x_226);
  let x_229 : f32 = u_xlat35.x;
  let x_232 : f32 = x_39.x_Metallic;
  u_xlat3.x = (x_229 * x_232);
  let x_240 : vec2<f32> = vs_TEXCOORD0;
  let x_241 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_240);
  u_xlat7 = vec3<f32>(x_241.x, x_241.y, x_241.w);
  let x_244 : f32 = u_xlat7.z;
  let x_246 : f32 = u_xlat7.x;
  u_xlat7.x = (x_244 * x_246);
  let x_249 : vec3<f32> = u_xlat7;
  let x_256 : vec2<f32> = ((vec2<f32>(x_249.x, x_249.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_257 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_256.x, x_256.y, x_257.z);
  let x_259 : vec3<f32> = u_xlat7;
  let x_261 : vec3<f32> = u_xlat7;
  u_xlat35.x = dot(vec2<f32>(x_259.x, x_259.y), vec2<f32>(x_261.x, x_261.y));
  let x_266 : f32 = u_xlat35.x;
  u_xlat35.x = min(x_266, 1.0f);
  let x_270 : f32 = u_xlat35.x;
  u_xlat35.x = (-(x_270) + 1.0f);
  let x_275 : f32 = u_xlat35.x;
  u_xlat7.z = sqrt(x_275);
  let x_279 : f32 = x_39.x_Cutoff;
  let x_281 : f32 = u_xlat50;
  let x_283 : f32 = u_xlat49;
  u_xlat49 = ((-(x_279) * x_281) + x_283);
  let x_288 : f32 = u_xlat49;
  u_xlatb49 = (x_288 < 0.0f);
  let x_290 : bool = u_xlatb49;
  if (((select(0i, 1i, x_290) * -1i) != 0i)) {
    discard;
  }
  let x_300 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_300 == 1.0f);
  let x_302 : bool = u_xlatb49;
  if (x_302) {
    let x_306 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb49 = (x_306 == 1.0f);
    let x_309 : vec4<f32> = vs_TEXCOORD2;
    let x_313 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_315 : vec3<f32> = (vec3<f32>(x_309.w, x_309.w, x_309.w) * vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_319 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_321 : vec4<f32> = vs_TEXCOORD1;
    let x_324 : vec4<f32> = u_xlat8;
    let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.w, x_321.w, x_321.w)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
    let x_327 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_331 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_333 : vec4<f32> = vs_TEXCOORD3;
    let x_336 : vec4<f32> = u_xlat8;
    let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.w, x_333.w, x_333.w)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
    let x_339 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_341 : vec4<f32> = u_xlat8;
    let x_345 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_347 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
    let x_348 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : bool = u_xlatb49;
    if (x_350) {
      let x_354 : vec4<f32> = u_xlat8;
      x_351 = vec3<f32>(x_354.x, x_354.y, x_354.z);
    } else {
      let x_357 : vec4<f32> = u_xlat0;
      x_351 = vec3<f32>(x_357.x, x_357.y, x_357.z);
    }
    let x_359 : vec3<f32> = x_351;
    let x_360 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
    let x_362 : vec4<f32> = u_xlat8;
    let x_366 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_368 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + -(x_366));
    let x_369 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat8;
    let x_375 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_376 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) * x_375);
    let x_377 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_377.x, x_376.x, x_376.y, x_376.z);
    let x_380 : f32 = u_xlat8.y;
    u_xlat49 = ((x_380 * 0.25f) + 0.75f);
    let x_386 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat50 = ((x_386 * 0.5f) + 0.75f);
    let x_390 : f32 = u_xlat49;
    let x_391 : f32 = u_xlat50;
    u_xlat8.x = max(x_390, x_391);
    let x_399 : vec4<f32> = u_xlat8;
    let x_401 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_399.x, x_399.z, x_399.w));
    u_xlat8 = x_401;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_407 : vec4<f32> = u_xlat8;
  let x_409 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat49 = dot(x_407, x_409);
  let x_411 : f32 = u_xlat49;
  u_xlat49 = clamp(x_411, 0.0f, 1.0f);
  let x_413 : vec4<f32> = vs_TEXCOORD1;
  let x_415 : vec3<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_413.x, x_413.y, x_413.z), x_415);
  let x_418 : vec4<f32> = vs_TEXCOORD2;
  let x_420 : vec3<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), x_420);
  let x_423 : vec4<f32> = vs_TEXCOORD3;
  let x_425 : vec3<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_423.x, x_423.y, x_423.z), x_425);
  let x_428 : vec4<f32> = u_xlat8;
  let x_430 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_433);
  let x_435 : f32 = u_xlat50;
  let x_437 : vec4<f32> = u_xlat8;
  u_xlat7 = (vec3<f32>(x_435, x_435, x_435) * vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_441 : f32 = u_xlat35.y;
  let x_445 : f32 = x_39.x_Glossiness;
  u_xlat50 = ((-(x_441) * x_445) + 1.0f);
  let x_448 : vec4<f32> = u_xlat2;
  let x_451 : vec3<f32> = u_xlat7;
  u_xlat35.x = dot(-(vec3<f32>(x_448.x, x_448.y, x_448.z)), x_451);
  let x_455 : f32 = u_xlat35.x;
  let x_457 : f32 = u_xlat35.x;
  u_xlat35.x = (x_455 + x_457);
  let x_460 : vec3<f32> = u_xlat7;
  let x_461 : vec2<f32> = u_xlat35;
  let x_465 : vec4<f32> = u_xlat2;
  let x_468 : vec3<f32> = ((x_460 * -(vec3<f32>(x_461.x, x_461.x, x_461.x))) + -(vec3<f32>(x_465.x, x_465.y, x_465.z)));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : f32 = u_xlat49;
  let x_476 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_481 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_481);
  let x_483 : bool = u_xlatb49;
  if (x_483) {
    let x_486 : vec4<f32> = u_xlat8;
    let x_488 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_491 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_491);
    let x_494 : f32 = u_xlat49;
    let x_496 : vec4<f32> = u_xlat8;
    let x_498 : vec3<f32> = (vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_502 : vec4<f32> = u_xlat0;
    let x_507 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat11 = (-(vec3<f32>(x_502.x, x_502.y, x_502.z)) + vec3<f32>(x_507.x, x_507.y, x_507.z));
    let x_510 : vec3<f32> = u_xlat11;
    let x_511 : vec4<f32> = u_xlat10;
    u_xlat11 = (x_510 / vec3<f32>(x_511.x, x_511.y, x_511.z));
    let x_515 : vec4<f32> = u_xlat0;
    let x_520 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_515.x, x_515.y, x_515.z)) + vec3<f32>(x_520.x, x_520.y, x_520.z));
    let x_523 : vec3<f32> = u_xlat12;
    let x_524 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_523 / vec3<f32>(x_524.x, x_524.y, x_524.z));
    let x_531 : vec4<f32> = u_xlat10;
    let x_534 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_531.x, x_531.y, x_531.z, x_531.x));
    u_xlatb13 = vec3<bool>(x_534.x, x_534.y, x_534.z);
    let x_537 : vec3<f32> = u_xlat11;
    hlslcc_movcTemp = x_537;
    let x_539 : bool = u_xlatb13.x;
    if (x_539) {
      let x_544 : f32 = u_xlat11.x;
      x_540 = x_544;
    } else {
      let x_547 : f32 = u_xlat12.x;
      x_540 = x_547;
    }
    let x_548 : f32 = x_540;
    hlslcc_movcTemp.x = x_548;
    let x_551 : bool = u_xlatb13.y;
    if (x_551) {
      let x_556 : f32 = u_xlat11.y;
      x_552 = x_556;
    } else {
      let x_559 : f32 = u_xlat12.y;
      x_552 = x_559;
    }
    let x_560 : f32 = x_552;
    hlslcc_movcTemp.y = x_560;
    let x_563 : bool = u_xlatb13.z;
    if (x_563) {
      let x_568 : f32 = u_xlat11.z;
      x_564 = x_568;
    } else {
      let x_571 : f32 = u_xlat12.z;
      x_564 = x_571;
    }
    let x_572 : f32 = x_564;
    hlslcc_movcTemp.z = x_572;
    let x_574 : vec3<f32> = hlslcc_movcTemp;
    u_xlat11 = x_574;
    let x_576 : f32 = u_xlat11.y;
    let x_578 : f32 = u_xlat11.x;
    u_xlat49 = min(x_576, x_578);
    let x_581 : f32 = u_xlat11.z;
    let x_582 : f32 = u_xlat49;
    u_xlat49 = min(x_581, x_582);
    let x_584 : vec4<f32> = u_xlat0;
    let x_587 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat11 = (vec3<f32>(x_584.x, x_584.y, x_584.z) + -(vec3<f32>(x_587.x, x_587.y, x_587.z)));
    let x_591 : vec4<f32> = u_xlat10;
    let x_593 : f32 = u_xlat49;
    let x_596 : vec3<f32> = u_xlat11;
    let x_597 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(x_593, x_593, x_593)) + x_596);
    let x_598 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  } else {
    let x_601 : vec4<f32> = u_xlat8;
    let x_602 : vec3<f32> = vec3<f32>(x_601.x, x_601.y, x_601.z);
    let x_603 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  }
  let x_605 : f32 = u_xlat50;
  u_xlat49 = ((-(x_605) * 0.699999988f) + 1.700000048f);
  let x_611 : f32 = u_xlat49;
  let x_612 : f32 = u_xlat50;
  u_xlat49 = (x_611 * x_612);
  let x_614 : f32 = u_xlat49;
  u_xlat49 = (x_614 * 6.0f);
  let x_625 : vec4<f32> = u_xlat10;
  let x_627 : f32 = u_xlat49;
  let x_628 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_625.x, x_625.y, x_625.z), x_627);
  u_xlat10 = x_628;
  let x_630 : f32 = u_xlat10.w;
  u_xlat35.x = (x_630 + -1.0f);
  let x_635 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_637 : f32 = u_xlat35.x;
  u_xlat35.x = ((x_635 * x_637) + 1.0f);
  let x_642 : f32 = u_xlat35.x;
  u_xlat35.x = log2(x_642);
  let x_646 : f32 = u_xlat35.x;
  let x_648 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat35.x = (x_646 * x_648);
  let x_652 : f32 = u_xlat35.x;
  u_xlat35.x = exp2(x_652);
  let x_656 : f32 = u_xlat35.x;
  let x_658 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat35.x = (x_656 * x_658);
  let x_661 : vec4<f32> = u_xlat10;
  let x_663 : vec2<f32> = u_xlat35;
  u_xlat11 = (vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_663.x, x_663.x, x_663.x));
  let x_668 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_668 < 0.999989986f);
  let x_671 : bool = u_xlatb52;
  if (x_671) {
    let x_676 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_676);
    let x_678 : bool = u_xlatb52;
    if (x_678) {
      let x_681 : vec4<f32> = u_xlat8;
      let x_683 : vec4<f32> = u_xlat8;
      u_xlat52 = dot(vec3<f32>(x_681.x, x_681.y, x_681.z), vec3<f32>(x_683.x, x_683.y, x_683.z));
      let x_686 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_686);
      let x_688 : f32 = u_xlat52;
      let x_690 : vec4<f32> = u_xlat8;
      u_xlat12 = (vec3<f32>(x_688, x_688, x_688) * vec3<f32>(x_690.x, x_690.y, x_690.z));
      let x_694 : vec4<f32> = u_xlat0;
      let x_699 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_694.x, x_694.y, x_694.z)) + vec3<f32>(x_699.x, x_699.y, x_699.z));
      let x_702 : vec3<f32> = u_xlat13;
      let x_703 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_702 / x_703);
      let x_706 : vec4<f32> = u_xlat0;
      let x_711 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_706.x, x_706.y, x_706.z)) + vec3<f32>(x_711.x, x_711.y, x_711.z));
      let x_714 : vec3<f32> = u_xlat14;
      let x_715 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_714 / x_715);
      let x_718 : vec3<f32> = u_xlat12;
      let x_720 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_718.x, x_718.y, x_718.z, x_718.x));
      u_xlatb15 = vec3<bool>(x_720.x, x_720.y, x_720.z);
      let x_723 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_723;
      let x_725 : bool = u_xlatb15.x;
      if (x_725) {
        let x_730 : f32 = u_xlat13.x;
        x_726 = x_730;
      } else {
        let x_733 : f32 = u_xlat14.x;
        x_726 = x_733;
      }
      let x_734 : f32 = x_726;
      hlslcc_movcTemp_1.x = x_734;
      let x_737 : bool = u_xlatb15.y;
      if (x_737) {
        let x_742 : f32 = u_xlat13.y;
        x_738 = x_742;
      } else {
        let x_745 : f32 = u_xlat14.y;
        x_738 = x_745;
      }
      let x_746 : f32 = x_738;
      hlslcc_movcTemp_1.y = x_746;
      let x_749 : bool = u_xlatb15.z;
      if (x_749) {
        let x_754 : f32 = u_xlat13.z;
        x_750 = x_754;
      } else {
        let x_757 : f32 = u_xlat14.z;
        x_750 = x_757;
      }
      let x_758 : f32 = x_750;
      hlslcc_movcTemp_1.z = x_758;
      let x_760 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_760;
      let x_762 : f32 = u_xlat13.y;
      let x_764 : f32 = u_xlat13.x;
      u_xlat52 = min(x_762, x_764);
      let x_767 : f32 = u_xlat13.z;
      let x_768 : f32 = u_xlat52;
      u_xlat52 = min(x_767, x_768);
      let x_770 : vec4<f32> = u_xlat0;
      let x_773 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_776 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + -(vec3<f32>(x_773.x, x_773.y, x_773.z)));
      let x_777 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
      let x_779 : vec3<f32> = u_xlat12;
      let x_780 : f32 = u_xlat52;
      let x_783 : vec4<f32> = u_xlat0;
      let x_785 : vec3<f32> = ((x_779 * vec3<f32>(x_780, x_780, x_780)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
      let x_786 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
    }
    let x_792 : vec4<f32> = u_xlat8;
    let x_794 : f32 = u_xlat49;
    let x_795 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_792.x, x_792.y, x_792.z), x_794);
    u_xlat8 = x_795;
    let x_797 : f32 = u_xlat8.w;
    u_xlat0.x = (x_797 + -1.0f);
    let x_802 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_804 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_802 * x_804) + 1.0f);
    let x_809 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_809);
    let x_813 : f32 = u_xlat0.x;
    let x_815 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_813 * x_815);
    let x_819 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_819);
    let x_823 : f32 = u_xlat0.x;
    let x_825 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_823 * x_825);
    let x_828 : vec4<f32> = u_xlat8;
    let x_830 : vec4<f32> = u_xlat0;
    let x_832 : vec3<f32> = (vec3<f32>(x_828.x, x_828.y, x_828.z) * vec3<f32>(x_830.x, x_830.x, x_830.x));
    let x_833 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
    let x_835 : vec2<f32> = u_xlat35;
    let x_837 : vec4<f32> = u_xlat10;
    let x_840 : vec4<f32> = u_xlat0;
    let x_843 : vec3<f32> = ((vec3<f32>(x_835.x, x_835.x, x_835.x) * vec3<f32>(x_837.x, x_837.y, x_837.z)) + -(vec3<f32>(x_840.x, x_840.y, x_840.z)));
    let x_844 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
    let x_847 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_849 : vec4<f32> = u_xlat8;
    let x_852 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_847.w, x_847.w, x_847.w) * vec3<f32>(x_849.x, x_849.y, x_849.z)) + vec3<f32>(x_852.x, x_852.y, x_852.z));
  }
  let x_855 : f32 = u_xlat19;
  let x_857 : vec3<f32> = u_xlat11;
  let x_858 : vec3<f32> = (vec3<f32>(x_855, x_855, x_855) * x_857);
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat4;
  let x_864 : vec4<f32> = x_39.x_Color;
  let x_869 : vec3<f32> = ((vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(x_864.x, x_864.y, x_864.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_870 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec3<f32> = u_xlat3;
  let x_874 : vec4<f32> = u_xlat4;
  let x_879 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * vec3<f32>(x_874.x, x_874.y, x_874.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_883 : f32 = u_xlat3.x;
  u_xlat49 = ((-(x_883) * 0.959999979f) + 0.959999979f);
  let x_888 : f32 = u_xlat49;
  let x_890 : vec4<f32> = u_xlat5;
  u_xlat3 = (vec3<f32>(x_888, x_888, x_888) * vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : vec3<f32> = u_xlat1;
  let x_894 : f32 = u_xlat48;
  let x_898 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_893 * vec3<f32>(x_894, x_894, x_894)) + vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec3<f32> = u_xlat1;
  let x_902 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_901, x_902);
  let x_904 : f32 = u_xlat48;
  u_xlat48 = max(x_904, 0.001f);
  let x_907 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_907);
  let x_909 : f32 = u_xlat48;
  let x_911 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_909, x_909, x_909) * x_911);
  let x_913 : vec3<f32> = u_xlat7;
  let x_914 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(x_913, vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec3<f32> = u_xlat7;
  let x_919 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_917, vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_924 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_924, 0.0f, 1.0f);
  let x_928 : vec3<f32> = u_xlat7;
  let x_929 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_928, x_929);
  let x_931 : f32 = u_xlat18;
  u_xlat18 = clamp(x_931, 0.0f, 1.0f);
  let x_934 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_936 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), x_936);
  let x_940 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_940, 0.0f, 1.0f);
  let x_945 : f32 = u_xlat1.x;
  let x_947 : f32 = u_xlat1.x;
  u_xlat17 = (x_945 * x_947);
  let x_949 : f32 = u_xlat17;
  let x_951 : f32 = u_xlat50;
  u_xlat17 = dot(vec2<f32>(x_949, x_949), vec2<f32>(x_951, x_951));
  let x_954 : f32 = u_xlat17;
  u_xlat17 = (x_954 + -0.5f);
  let x_959 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_959) + 1.0f);
  let x_963 : f32 = u_xlat33;
  let x_964 : f32 = u_xlat33;
  u_xlat34 = (x_963 * x_964);
  let x_966 : f32 = u_xlat34;
  let x_967 : f32 = u_xlat34;
  u_xlat34 = (x_966 * x_967);
  let x_969 : f32 = u_xlat33;
  let x_970 : f32 = u_xlat34;
  u_xlat33 = (x_969 * x_970);
  let x_972 : f32 = u_xlat17;
  let x_973 : f32 = u_xlat33;
  u_xlat33 = ((x_972 * x_973) + 1.0f);
  let x_976 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_976)) + 1.0f);
  let x_980 : f32 = u_xlat34;
  let x_981 : f32 = u_xlat34;
  u_xlat52 = (x_980 * x_981);
  let x_983 : f32 = u_xlat52;
  let x_984 : f32 = u_xlat52;
  u_xlat52 = (x_983 * x_984);
  let x_986 : f32 = u_xlat34;
  let x_987 : f32 = u_xlat52;
  u_xlat34 = (x_986 * x_987);
  let x_989 : f32 = u_xlat17;
  let x_990 : f32 = u_xlat34;
  u_xlat17 = ((x_989 * x_990) + 1.0f);
  let x_993 : f32 = u_xlat17;
  let x_994 : f32 = u_xlat33;
  u_xlat17 = (x_993 * x_994);
  let x_997 : f32 = u_xlat2.x;
  let x_998 : f32 = u_xlat17;
  u_xlat17 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat50;
  let x_1001 : f32 = u_xlat50;
  u_xlat33 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat33;
  u_xlat33 = max(x_1003, 0.002f);
  let x_1006 : f32 = u_xlat33;
  u_xlat50 = (-(x_1006) + 1.0f);
  let x_1009 : f32 = u_xlat48;
  let x_1011 : f32 = u_xlat50;
  let x_1013 : f32 = u_xlat33;
  u_xlat52 = ((abs(x_1009) * x_1011) + x_1013);
  let x_1016 : f32 = u_xlat2.x;
  let x_1017 : f32 = u_xlat50;
  let x_1019 : f32 = u_xlat33;
  u_xlat50 = ((x_1016 * x_1017) + x_1019);
  let x_1021 : f32 = u_xlat48;
  let x_1023 : f32 = u_xlat50;
  u_xlat48 = (abs(x_1021) * x_1023);
  let x_1026 : f32 = u_xlat2.x;
  let x_1027 : f32 = u_xlat52;
  let x_1029 : f32 = u_xlat48;
  u_xlat48 = ((x_1026 * x_1027) + x_1029);
  let x_1031 : f32 = u_xlat48;
  u_xlat48 = (x_1031 + 0.00001f);
  let x_1034 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1034);
  let x_1036 : f32 = u_xlat33;
  let x_1037 : f32 = u_xlat33;
  u_xlat50 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat18;
  let x_1040 : f32 = u_xlat50;
  let x_1042 : f32 = u_xlat18;
  u_xlat52 = ((x_1039 * x_1040) + -(x_1042));
  let x_1045 : f32 = u_xlat52;
  let x_1046 : f32 = u_xlat18;
  u_xlat18 = ((x_1045 * x_1046) + 1.0f);
  let x_1049 : f32 = u_xlat50;
  u_xlat50 = (x_1049 * 0.318309873f);
  let x_1052 : f32 = u_xlat18;
  let x_1053 : f32 = u_xlat18;
  u_xlat18 = ((x_1052 * x_1053) + 0.0000001f);
  let x_1057 : f32 = u_xlat50;
  let x_1058 : f32 = u_xlat18;
  u_xlat18 = (x_1057 / x_1058);
  let x_1060 : f32 = u_xlat48;
  let x_1061 : f32 = u_xlat18;
  u_xlat48 = (x_1060 * x_1061);
  let x_1064 : f32 = u_xlat2.x;
  let x_1065 : f32 = u_xlat48;
  u_xlat48 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat48;
  u_xlat48 = (x_1067 * 3.141592741f);
  let x_1070 : f32 = u_xlat48;
  u_xlat48 = max(x_1070, 0.0f);
  let x_1072 : f32 = u_xlat33;
  let x_1073 : f32 = u_xlat33;
  u_xlat33 = ((x_1072 * x_1073) + 1.0f);
  let x_1076 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1076);
  let x_1079 : vec4<f32> = u_xlat4;
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1087 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1087 == 0.0f));
  let x_1089 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1089);
  let x_1092 : f32 = u_xlat48;
  let x_1094 : f32 = u_xlat2.x;
  u_xlat48 = (x_1092 * x_1094);
  let x_1097 : f32 = u_xlat35.y;
  let x_1099 : f32 = x_39.x_Glossiness;
  let x_1101 : f32 = u_xlat49;
  u_xlat49 = ((x_1097 * x_1099) + -(x_1101));
  let x_1104 : f32 = u_xlat49;
  u_xlat49 = (x_1104 + 1.0f);
  let x_1106 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1106, 0.0f, 1.0f);
  let x_1108 : f32 = u_xlat17;
  let x_1110 : vec3<f32> = u_xlat9;
  let x_1111 : vec3<f32> = (vec3<f32>(x_1108, x_1108, x_1108) * x_1110);
  let x_1112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1111.z);
  let x_1114 : vec3<f32> = u_xlat9;
  let x_1115 : f32 = u_xlat48;
  let x_1117 : vec3<f32> = (x_1114 * vec3<f32>(x_1115, x_1115, x_1115));
  let x_1118 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1121 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1121) + 1.0f);
  let x_1126 : f32 = u_xlat0.w;
  let x_1128 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1126 * x_1128);
  let x_1132 : f32 = u_xlat1.x;
  let x_1134 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1132 * x_1134);
  let x_1137 : vec4<f32> = u_xlat0;
  let x_1138 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1137 * vec4<f32>(x_1138.z, x_1138.z, x_1138.z, x_1138.x));
  let x_1141 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_1141.x, x_1141.y, x_1141.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1146 : vec3<f32> = u_xlat7;
  let x_1147 : vec4<f32> = u_xlat0;
  let x_1150 : vec4<f32> = u_xlat4;
  u_xlat7 = ((x_1146 * vec3<f32>(x_1147.w, x_1147.w, x_1147.w)) + vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
  let x_1153 : vec4<f32> = u_xlat5;
  let x_1155 : vec3<f32> = u_xlat7;
  let x_1156 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.y, x_1153.z) * x_1155);
  let x_1157 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec3<f32> = u_xlat3;
  let x_1160 : vec4<f32> = u_xlat2;
  let x_1163 : vec4<f32> = u_xlat5;
  let x_1165 : vec3<f32> = ((x_1159 * vec3<f32>(x_1160.x, x_1160.y, x_1160.w)) + vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1165.z);
  let x_1168 : vec4<f32> = u_xlat4;
  let x_1171 : f32 = u_xlat49;
  u_xlat1 = (-(vec3<f32>(x_1168.x, x_1168.y, x_1168.z)) + vec3<f32>(x_1171, x_1171, x_1171));
  let x_1174 : f32 = u_xlat34;
  let x_1176 : vec3<f32> = u_xlat1;
  let x_1178 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1174, x_1174, x_1174) * x_1176) + vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : vec4<f32> = u_xlat0;
  let x_1183 : vec3<f32> = u_xlat1;
  let x_1185 : vec4<f32> = u_xlat2;
  let x_1187 : vec3<f32> = ((vec3<f32>(x_1181.x, x_1181.y, x_1181.z) * x_1183) + vec3<f32>(x_1185.x, x_1185.y, x_1185.w));
  let x_1188 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1192 : vec3<f32> = u_xlat6;
  let x_1193 : vec4<f32> = u_xlat0;
  let x_1195 : vec3<f32> = (x_1192 + vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
  let x_1196 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1196.w);
  let x_1199 : f32 = u_xlat5.w;
  SV_Target0.w = x_1199;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

