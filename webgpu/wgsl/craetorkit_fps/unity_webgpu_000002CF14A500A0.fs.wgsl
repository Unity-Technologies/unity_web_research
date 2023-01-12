struct PGlobals {
  x_SinTime : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD5 : f32;

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
  var x_541 : f32;
  var x_553 : f32;
  var x_565 : f32;
  var u_xlatb52 : bool;
  var u_xlat13 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb15 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_727 : f32;
  var x_739 : f32;
  var x_751 : f32;
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
  let x_410 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat49 = dot(x_407, x_410);
  let x_412 : f32 = u_xlat49;
  u_xlat49 = clamp(x_412, 0.0f, 1.0f);
  let x_414 : vec4<f32> = vs_TEXCOORD1;
  let x_416 : vec3<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_414.x, x_414.y, x_414.z), x_416);
  let x_419 : vec4<f32> = vs_TEXCOORD2;
  let x_421 : vec3<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), x_421);
  let x_424 : vec4<f32> = vs_TEXCOORD3;
  let x_426 : vec3<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), x_426);
  let x_429 : vec4<f32> = u_xlat8;
  let x_431 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_434);
  let x_436 : f32 = u_xlat50;
  let x_438 : vec4<f32> = u_xlat8;
  u_xlat7 = (vec3<f32>(x_436, x_436, x_436) * vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_442 : f32 = u_xlat35.y;
  let x_446 : f32 = x_39.x_Glossiness;
  u_xlat50 = ((-(x_442) * x_446) + 1.0f);
  let x_449 : vec4<f32> = u_xlat2;
  let x_452 : vec3<f32> = u_xlat7;
  u_xlat35.x = dot(-(vec3<f32>(x_449.x, x_449.y, x_449.z)), x_452);
  let x_456 : f32 = u_xlat35.x;
  let x_458 : f32 = u_xlat35.x;
  u_xlat35.x = (x_456 + x_458);
  let x_461 : vec3<f32> = u_xlat7;
  let x_462 : vec2<f32> = u_xlat35;
  let x_466 : vec4<f32> = u_xlat2;
  let x_469 : vec3<f32> = ((x_461 * -(vec3<f32>(x_462.x, x_462.x, x_462.x))) + -(vec3<f32>(x_466.x, x_466.y, x_466.z)));
  let x_470 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_473 : f32 = u_xlat49;
  let x_477 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_473, x_473, x_473) * vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_482 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_482);
  let x_484 : bool = u_xlatb49;
  if (x_484) {
    let x_487 : vec4<f32> = u_xlat8;
    let x_489 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(x_489.x, x_489.y, x_489.z));
    let x_492 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_492);
    let x_495 : f32 = u_xlat49;
    let x_497 : vec4<f32> = u_xlat8;
    let x_499 : vec3<f32> = (vec3<f32>(x_495, x_495, x_495) * vec3<f32>(x_497.x, x_497.y, x_497.z));
    let x_500 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
    let x_503 : vec4<f32> = u_xlat0;
    let x_508 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat11 = (-(vec3<f32>(x_503.x, x_503.y, x_503.z)) + vec3<f32>(x_508.x, x_508.y, x_508.z));
    let x_511 : vec3<f32> = u_xlat11;
    let x_512 : vec4<f32> = u_xlat10;
    u_xlat11 = (x_511 / vec3<f32>(x_512.x, x_512.y, x_512.z));
    let x_516 : vec4<f32> = u_xlat0;
    let x_521 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_516.x, x_516.y, x_516.z)) + vec3<f32>(x_521.x, x_521.y, x_521.z));
    let x_524 : vec3<f32> = u_xlat12;
    let x_525 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_524 / vec3<f32>(x_525.x, x_525.y, x_525.z));
    let x_532 : vec4<f32> = u_xlat10;
    let x_535 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_532.x, x_532.y, x_532.z, x_532.x));
    u_xlatb13 = vec3<bool>(x_535.x, x_535.y, x_535.z);
    let x_538 : vec3<f32> = u_xlat11;
    hlslcc_movcTemp = x_538;
    let x_540 : bool = u_xlatb13.x;
    if (x_540) {
      let x_545 : f32 = u_xlat11.x;
      x_541 = x_545;
    } else {
      let x_548 : f32 = u_xlat12.x;
      x_541 = x_548;
    }
    let x_549 : f32 = x_541;
    hlslcc_movcTemp.x = x_549;
    let x_552 : bool = u_xlatb13.y;
    if (x_552) {
      let x_557 : f32 = u_xlat11.y;
      x_553 = x_557;
    } else {
      let x_560 : f32 = u_xlat12.y;
      x_553 = x_560;
    }
    let x_561 : f32 = x_553;
    hlslcc_movcTemp.y = x_561;
    let x_564 : bool = u_xlatb13.z;
    if (x_564) {
      let x_569 : f32 = u_xlat11.z;
      x_565 = x_569;
    } else {
      let x_572 : f32 = u_xlat12.z;
      x_565 = x_572;
    }
    let x_573 : f32 = x_565;
    hlslcc_movcTemp.z = x_573;
    let x_575 : vec3<f32> = hlslcc_movcTemp;
    u_xlat11 = x_575;
    let x_577 : f32 = u_xlat11.y;
    let x_579 : f32 = u_xlat11.x;
    u_xlat49 = min(x_577, x_579);
    let x_582 : f32 = u_xlat11.z;
    let x_583 : f32 = u_xlat49;
    u_xlat49 = min(x_582, x_583);
    let x_585 : vec4<f32> = u_xlat0;
    let x_588 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat11 = (vec3<f32>(x_585.x, x_585.y, x_585.z) + -(vec3<f32>(x_588.x, x_588.y, x_588.z)));
    let x_592 : vec4<f32> = u_xlat10;
    let x_594 : f32 = u_xlat49;
    let x_597 : vec3<f32> = u_xlat11;
    let x_598 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(x_594, x_594, x_594)) + x_597);
    let x_599 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  } else {
    let x_602 : vec4<f32> = u_xlat8;
    let x_603 : vec3<f32> = vec3<f32>(x_602.x, x_602.y, x_602.z);
    let x_604 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  }
  let x_606 : f32 = u_xlat50;
  u_xlat49 = ((-(x_606) * 0.699999988f) + 1.700000048f);
  let x_612 : f32 = u_xlat49;
  let x_613 : f32 = u_xlat50;
  u_xlat49 = (x_612 * x_613);
  let x_615 : f32 = u_xlat49;
  u_xlat49 = (x_615 * 6.0f);
  let x_626 : vec4<f32> = u_xlat10;
  let x_628 : f32 = u_xlat49;
  let x_629 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_626.x, x_626.y, x_626.z), x_628);
  u_xlat10 = x_629;
  let x_631 : f32 = u_xlat10.w;
  u_xlat35.x = (x_631 + -1.0f);
  let x_636 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_638 : f32 = u_xlat35.x;
  u_xlat35.x = ((x_636 * x_638) + 1.0f);
  let x_643 : f32 = u_xlat35.x;
  u_xlat35.x = log2(x_643);
  let x_647 : f32 = u_xlat35.x;
  let x_649 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat35.x = (x_647 * x_649);
  let x_653 : f32 = u_xlat35.x;
  u_xlat35.x = exp2(x_653);
  let x_657 : f32 = u_xlat35.x;
  let x_659 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat35.x = (x_657 * x_659);
  let x_662 : vec4<f32> = u_xlat10;
  let x_664 : vec2<f32> = u_xlat35;
  u_xlat11 = (vec3<f32>(x_662.x, x_662.y, x_662.z) * vec3<f32>(x_664.x, x_664.x, x_664.x));
  let x_669 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_669 < 0.999989986f);
  let x_672 : bool = u_xlatb52;
  if (x_672) {
    let x_677 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_677);
    let x_679 : bool = u_xlatb52;
    if (x_679) {
      let x_682 : vec4<f32> = u_xlat8;
      let x_684 : vec4<f32> = u_xlat8;
      u_xlat52 = dot(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(x_684.x, x_684.y, x_684.z));
      let x_687 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_687);
      let x_689 : f32 = u_xlat52;
      let x_691 : vec4<f32> = u_xlat8;
      u_xlat12 = (vec3<f32>(x_689, x_689, x_689) * vec3<f32>(x_691.x, x_691.y, x_691.z));
      let x_695 : vec4<f32> = u_xlat0;
      let x_700 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_695.x, x_695.y, x_695.z)) + vec3<f32>(x_700.x, x_700.y, x_700.z));
      let x_703 : vec3<f32> = u_xlat13;
      let x_704 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_703 / x_704);
      let x_707 : vec4<f32> = u_xlat0;
      let x_712 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_707.x, x_707.y, x_707.z)) + vec3<f32>(x_712.x, x_712.y, x_712.z));
      let x_715 : vec3<f32> = u_xlat14;
      let x_716 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_715 / x_716);
      let x_719 : vec3<f32> = u_xlat12;
      let x_721 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_719.x, x_719.y, x_719.z, x_719.x));
      u_xlatb15 = vec3<bool>(x_721.x, x_721.y, x_721.z);
      let x_724 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_724;
      let x_726 : bool = u_xlatb15.x;
      if (x_726) {
        let x_731 : f32 = u_xlat13.x;
        x_727 = x_731;
      } else {
        let x_734 : f32 = u_xlat14.x;
        x_727 = x_734;
      }
      let x_735 : f32 = x_727;
      hlslcc_movcTemp_1.x = x_735;
      let x_738 : bool = u_xlatb15.y;
      if (x_738) {
        let x_743 : f32 = u_xlat13.y;
        x_739 = x_743;
      } else {
        let x_746 : f32 = u_xlat14.y;
        x_739 = x_746;
      }
      let x_747 : f32 = x_739;
      hlslcc_movcTemp_1.y = x_747;
      let x_750 : bool = u_xlatb15.z;
      if (x_750) {
        let x_755 : f32 = u_xlat13.z;
        x_751 = x_755;
      } else {
        let x_758 : f32 = u_xlat14.z;
        x_751 = x_758;
      }
      let x_759 : f32 = x_751;
      hlslcc_movcTemp_1.z = x_759;
      let x_761 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_761;
      let x_763 : f32 = u_xlat13.y;
      let x_765 : f32 = u_xlat13.x;
      u_xlat52 = min(x_763, x_765);
      let x_768 : f32 = u_xlat13.z;
      let x_769 : f32 = u_xlat52;
      u_xlat52 = min(x_768, x_769);
      let x_771 : vec4<f32> = u_xlat0;
      let x_774 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_777 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) + -(vec3<f32>(x_774.x, x_774.y, x_774.z)));
      let x_778 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
      let x_780 : vec3<f32> = u_xlat12;
      let x_781 : f32 = u_xlat52;
      let x_784 : vec4<f32> = u_xlat0;
      let x_786 : vec3<f32> = ((x_780 * vec3<f32>(x_781, x_781, x_781)) + vec3<f32>(x_784.x, x_784.y, x_784.z));
      let x_787 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
    }
    let x_793 : vec4<f32> = u_xlat8;
    let x_795 : f32 = u_xlat49;
    let x_796 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_793.x, x_793.y, x_793.z), x_795);
    u_xlat8 = x_796;
    let x_798 : f32 = u_xlat8.w;
    u_xlat0.x = (x_798 + -1.0f);
    let x_803 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_805 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_803 * x_805) + 1.0f);
    let x_810 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_810);
    let x_814 : f32 = u_xlat0.x;
    let x_816 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_814 * x_816);
    let x_820 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_820);
    let x_824 : f32 = u_xlat0.x;
    let x_826 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_824 * x_826);
    let x_829 : vec4<f32> = u_xlat8;
    let x_831 : vec4<f32> = u_xlat0;
    let x_833 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(x_831.x, x_831.x, x_831.x));
    let x_834 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
    let x_836 : vec2<f32> = u_xlat35;
    let x_838 : vec4<f32> = u_xlat10;
    let x_841 : vec4<f32> = u_xlat0;
    let x_844 : vec3<f32> = ((vec3<f32>(x_836.x, x_836.x, x_836.x) * vec3<f32>(x_838.x, x_838.y, x_838.z)) + -(vec3<f32>(x_841.x, x_841.y, x_841.z)));
    let x_845 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
    let x_848 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_850 : vec4<f32> = u_xlat8;
    let x_853 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_848.w, x_848.w, x_848.w) * vec3<f32>(x_850.x, x_850.y, x_850.z)) + vec3<f32>(x_853.x, x_853.y, x_853.z));
  }
  let x_856 : f32 = u_xlat19;
  let x_858 : vec3<f32> = u_xlat11;
  let x_859 : vec3<f32> = (vec3<f32>(x_856, x_856, x_856) * x_858);
  let x_860 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat4;
  let x_865 : vec4<f32> = x_39.x_Color;
  let x_870 : vec3<f32> = ((vec3<f32>(x_862.x, x_862.y, x_862.z) * vec3<f32>(x_865.x, x_865.y, x_865.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_871 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec3<f32> = u_xlat3;
  let x_875 : vec4<f32> = u_xlat4;
  let x_880 : vec3<f32> = ((vec3<f32>(x_873.x, x_873.x, x_873.x) * vec3<f32>(x_875.x, x_875.y, x_875.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_881 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_884 : f32 = u_xlat3.x;
  u_xlat49 = ((-(x_884) * 0.959999979f) + 0.959999979f);
  let x_889 : f32 = u_xlat49;
  let x_891 : vec4<f32> = u_xlat5;
  u_xlat3 = (vec3<f32>(x_889, x_889, x_889) * vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec3<f32> = u_xlat1;
  let x_895 : f32 = u_xlat48;
  let x_899 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_894 * vec3<f32>(x_895, x_895, x_895)) + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec3<f32> = u_xlat1;
  let x_903 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_902, x_903);
  let x_905 : f32 = u_xlat48;
  u_xlat48 = max(x_905, 0.001f);
  let x_908 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_908);
  let x_910 : f32 = u_xlat48;
  let x_912 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_910, x_910, x_910) * x_912);
  let x_914 : vec3<f32> = u_xlat7;
  let x_915 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(x_914, vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec3<f32> = u_xlat7;
  let x_920 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_918, vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_925 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_925, 0.0f, 1.0f);
  let x_929 : vec3<f32> = u_xlat7;
  let x_930 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_929, x_930);
  let x_932 : f32 = u_xlat18;
  u_xlat18 = clamp(x_932, 0.0f, 1.0f);
  let x_935 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_937 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_935.x, x_935.y, x_935.z), x_937);
  let x_941 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_941, 0.0f, 1.0f);
  let x_946 : f32 = u_xlat1.x;
  let x_948 : f32 = u_xlat1.x;
  u_xlat17 = (x_946 * x_948);
  let x_950 : f32 = u_xlat17;
  let x_952 : f32 = u_xlat50;
  u_xlat17 = dot(vec2<f32>(x_950, x_950), vec2<f32>(x_952, x_952));
  let x_955 : f32 = u_xlat17;
  u_xlat17 = (x_955 + -0.5f);
  let x_960 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_960) + 1.0f);
  let x_964 : f32 = u_xlat33;
  let x_965 : f32 = u_xlat33;
  u_xlat34 = (x_964 * x_965);
  let x_967 : f32 = u_xlat34;
  let x_968 : f32 = u_xlat34;
  u_xlat34 = (x_967 * x_968);
  let x_970 : f32 = u_xlat33;
  let x_971 : f32 = u_xlat34;
  u_xlat33 = (x_970 * x_971);
  let x_973 : f32 = u_xlat17;
  let x_974 : f32 = u_xlat33;
  u_xlat33 = ((x_973 * x_974) + 1.0f);
  let x_977 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_977)) + 1.0f);
  let x_981 : f32 = u_xlat34;
  let x_982 : f32 = u_xlat34;
  u_xlat52 = (x_981 * x_982);
  let x_984 : f32 = u_xlat52;
  let x_985 : f32 = u_xlat52;
  u_xlat52 = (x_984 * x_985);
  let x_987 : f32 = u_xlat34;
  let x_988 : f32 = u_xlat52;
  u_xlat34 = (x_987 * x_988);
  let x_990 : f32 = u_xlat17;
  let x_991 : f32 = u_xlat34;
  u_xlat17 = ((x_990 * x_991) + 1.0f);
  let x_994 : f32 = u_xlat17;
  let x_995 : f32 = u_xlat33;
  u_xlat17 = (x_994 * x_995);
  let x_998 : f32 = u_xlat2.x;
  let x_999 : f32 = u_xlat17;
  u_xlat17 = (x_998 * x_999);
  let x_1001 : f32 = u_xlat50;
  let x_1002 : f32 = u_xlat50;
  u_xlat33 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat33;
  u_xlat33 = max(x_1004, 0.002f);
  let x_1007 : f32 = u_xlat33;
  u_xlat50 = (-(x_1007) + 1.0f);
  let x_1010 : f32 = u_xlat48;
  let x_1012 : f32 = u_xlat50;
  let x_1014 : f32 = u_xlat33;
  u_xlat52 = ((abs(x_1010) * x_1012) + x_1014);
  let x_1017 : f32 = u_xlat2.x;
  let x_1018 : f32 = u_xlat50;
  let x_1020 : f32 = u_xlat33;
  u_xlat50 = ((x_1017 * x_1018) + x_1020);
  let x_1022 : f32 = u_xlat48;
  let x_1024 : f32 = u_xlat50;
  u_xlat48 = (abs(x_1022) * x_1024);
  let x_1027 : f32 = u_xlat2.x;
  let x_1028 : f32 = u_xlat52;
  let x_1030 : f32 = u_xlat48;
  u_xlat48 = ((x_1027 * x_1028) + x_1030);
  let x_1032 : f32 = u_xlat48;
  u_xlat48 = (x_1032 + 0.00001f);
  let x_1035 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1035);
  let x_1037 : f32 = u_xlat33;
  let x_1038 : f32 = u_xlat33;
  u_xlat50 = (x_1037 * x_1038);
  let x_1040 : f32 = u_xlat18;
  let x_1041 : f32 = u_xlat50;
  let x_1043 : f32 = u_xlat18;
  u_xlat52 = ((x_1040 * x_1041) + -(x_1043));
  let x_1046 : f32 = u_xlat52;
  let x_1047 : f32 = u_xlat18;
  u_xlat18 = ((x_1046 * x_1047) + 1.0f);
  let x_1050 : f32 = u_xlat50;
  u_xlat50 = (x_1050 * 0.318309873f);
  let x_1053 : f32 = u_xlat18;
  let x_1054 : f32 = u_xlat18;
  u_xlat18 = ((x_1053 * x_1054) + 0.0000001f);
  let x_1058 : f32 = u_xlat50;
  let x_1059 : f32 = u_xlat18;
  u_xlat18 = (x_1058 / x_1059);
  let x_1061 : f32 = u_xlat48;
  let x_1062 : f32 = u_xlat18;
  u_xlat48 = (x_1061 * x_1062);
  let x_1065 : f32 = u_xlat2.x;
  let x_1066 : f32 = u_xlat48;
  u_xlat48 = (x_1065 * x_1066);
  let x_1068 : f32 = u_xlat48;
  u_xlat48 = (x_1068 * 3.141592741f);
  let x_1071 : f32 = u_xlat48;
  u_xlat48 = max(x_1071, 0.0f);
  let x_1073 : f32 = u_xlat33;
  let x_1074 : f32 = u_xlat33;
  u_xlat33 = ((x_1073 * x_1074) + 1.0f);
  let x_1077 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1077);
  let x_1080 : vec4<f32> = u_xlat4;
  let x_1082 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1080.x, x_1080.y, x_1080.z), vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1088 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1088 == 0.0f));
  let x_1090 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1090);
  let x_1093 : f32 = u_xlat48;
  let x_1095 : f32 = u_xlat2.x;
  u_xlat48 = (x_1093 * x_1095);
  let x_1098 : f32 = u_xlat35.y;
  let x_1100 : f32 = x_39.x_Glossiness;
  let x_1102 : f32 = u_xlat49;
  u_xlat49 = ((x_1098 * x_1100) + -(x_1102));
  let x_1105 : f32 = u_xlat49;
  u_xlat49 = (x_1105 + 1.0f);
  let x_1107 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1107, 0.0f, 1.0f);
  let x_1109 : f32 = u_xlat17;
  let x_1111 : vec3<f32> = u_xlat9;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1109, x_1109, x_1109) * x_1111);
  let x_1113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1112.z);
  let x_1115 : vec3<f32> = u_xlat9;
  let x_1116 : f32 = u_xlat48;
  let x_1118 : vec3<f32> = (x_1115 * vec3<f32>(x_1116, x_1116, x_1116));
  let x_1119 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1122 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1122) + 1.0f);
  let x_1127 : f32 = u_xlat0.w;
  let x_1129 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1127 * x_1129);
  let x_1133 : f32 = u_xlat1.x;
  let x_1135 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1133 * x_1135);
  let x_1138 : vec4<f32> = u_xlat0;
  let x_1139 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1138 * vec4<f32>(x_1139.z, x_1139.z, x_1139.z, x_1139.x));
  let x_1142 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_1142.x, x_1142.y, x_1142.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1147 : vec3<f32> = u_xlat7;
  let x_1148 : vec4<f32> = u_xlat0;
  let x_1151 : vec4<f32> = u_xlat4;
  u_xlat7 = ((x_1147 * vec3<f32>(x_1148.w, x_1148.w, x_1148.w)) + vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1154 : vec4<f32> = u_xlat5;
  let x_1156 : vec3<f32> = u_xlat7;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1154.x, x_1154.y, x_1154.z) * x_1156);
  let x_1158 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec3<f32> = u_xlat3;
  let x_1161 : vec4<f32> = u_xlat2;
  let x_1164 : vec4<f32> = u_xlat5;
  let x_1166 : vec3<f32> = ((x_1160 * vec3<f32>(x_1161.x, x_1161.y, x_1161.w)) + vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1166.z);
  let x_1169 : vec4<f32> = u_xlat4;
  let x_1172 : f32 = u_xlat49;
  u_xlat1 = (-(vec3<f32>(x_1169.x, x_1169.y, x_1169.z)) + vec3<f32>(x_1172, x_1172, x_1172));
  let x_1175 : f32 = u_xlat34;
  let x_1177 : vec3<f32> = u_xlat1;
  let x_1179 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1175, x_1175, x_1175) * x_1177) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat0;
  let x_1184 : vec3<f32> = u_xlat1;
  let x_1186 : vec4<f32> = u_xlat2;
  let x_1188 : vec3<f32> = ((vec3<f32>(x_1182.x, x_1182.y, x_1182.z) * x_1184) + vec3<f32>(x_1186.x, x_1186.y, x_1186.w));
  let x_1189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec3<f32> = u_xlat6;
  let x_1192 : vec4<f32> = u_xlat0;
  let x_1194 : vec3<f32> = (x_1191 + vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1198 : f32 = vs_TEXCOORD5;
  let x_1200 : f32 = x_39.x_ProjectionParams.y;
  u_xlat48 = (x_1198 / x_1200);
  let x_1202 : f32 = u_xlat48;
  u_xlat48 = (-(x_1202) + 1.0f);
  let x_1205 : f32 = u_xlat48;
  let x_1207 : f32 = x_39.x_ProjectionParams.z;
  u_xlat48 = (x_1205 * x_1207);
  let x_1209 : f32 = u_xlat48;
  u_xlat48 = max(x_1209, 0.0f);
  let x_1211 : f32 = u_xlat48;
  let x_1214 : f32 = x_39.unity_FogParams.x;
  u_xlat48 = (x_1211 * x_1214);
  let x_1216 : f32 = u_xlat48;
  let x_1217 : f32 = u_xlat48;
  u_xlat48 = (x_1216 * -(x_1217));
  let x_1220 : f32 = u_xlat48;
  u_xlat48 = exp2(x_1220);
  let x_1222 : vec4<f32> = u_xlat0;
  let x_1226 : vec4<f32> = x_39.unity_FogColor;
  let x_1229 : vec3<f32> = (vec3<f32>(x_1222.x, x_1222.y, x_1222.z) + -(vec3<f32>(x_1226.x, x_1226.y, x_1226.z)));
  let x_1230 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
  let x_1234 : f32 = u_xlat48;
  let x_1236 : vec4<f32> = u_xlat0;
  let x_1240 : vec4<f32> = x_39.unity_FogColor;
  let x_1242 : vec3<f32> = ((vec3<f32>(x_1234, x_1234, x_1234) * vec3<f32>(x_1236.x, x_1236.y, x_1236.z)) + vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1246 : f32 = u_xlat5.w;
  SV_Target0.w = x_1246;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

