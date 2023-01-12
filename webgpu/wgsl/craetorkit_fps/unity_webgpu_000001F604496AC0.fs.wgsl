struct PGlobals {
  x_SinTime : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat52 : f32;
  var u_xlat53 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat37 : vec2<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlatb52 : bool;
  var u_xlatb53 : bool;
  var u_xlat8 : vec4<f32>;
  var x_360 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var x_544 : vec3<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_730 : f32;
  var x_742 : f32;
  var x_754 : f32;
  var u_xlatb55 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb16 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_912 : f32;
  var x_924 : f32;
  var x_936 : f32;
  var u_xlat19 : f32;
  var u_xlat18 : f32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
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
  u_xlat51 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_50);
  let x_53 : f32 = u_xlat51;
  let x_55 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_53, x_53, x_53) * x_55);
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_73 : vec2<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_DissolveNoise, sampler_DissolveNoise, x_73);
  u_xlat52 = x_74.x;
  let x_80 : f32 = x_39.x_EdgeSize;
  let x_83 : f32 = x_39.x_Cutoff;
  u_xlat53 = (x_80 + x_83);
  let x_87 : f32 = x_39.x_Cutoff;
  let x_88 : f32 = u_xlat53;
  let x_91 : f32 = x_39.x_EdgeSize;
  u_xlat3.x = ((x_87 * x_88) + x_91);
  let x_95 : f32 = u_xlat52;
  let x_97 : f32 = x_39.x_EdgeSize;
  u_xlat20 = max(x_95, x_97);
  let x_99 : f32 = u_xlat20;
  u_xlat20 = min(x_99, 1.0f);
  let x_105 : f32 = x_39.x_Cutoff;
  let x_106 : f32 = u_xlat53;
  let x_109 : f32 = u_xlat3.x;
  u_xlat37.x = ((x_105 * x_106) + -(x_109));
  let x_114 : f32 = u_xlat3.x;
  let x_116 : f32 = u_xlat20;
  u_xlat3.x = (-(x_114) + x_116);
  let x_120 : f32 = u_xlat37.x;
  u_xlat20 = (1.0f / x_120);
  let x_122 : f32 = u_xlat20;
  let x_124 : f32 = u_xlat3.x;
  u_xlat3.x = (x_122 * x_124);
  let x_128 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_128, 0.0f, 1.0f);
  let x_133 : f32 = u_xlat3.x;
  u_xlat20 = ((x_133 * -2.0f) + 3.0f);
  let x_139 : f32 = u_xlat3.x;
  let x_141 : f32 = u_xlat3.x;
  u_xlat3.x = (x_139 * x_141);
  let x_145 : f32 = u_xlat3.x;
  let x_146 : f32 = u_xlat20;
  u_xlat3.x = (x_145 * x_146);
  let x_155 : vec2<f32> = vs_TEXCOORD0;
  let x_156 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_155);
  u_xlat4 = x_156;
  let x_158 : vec4<f32> = u_xlat4;
  let x_162 : vec4<f32> = x_39.x_Color;
  u_xlat5 = (x_158 * x_162);
  let x_169 : vec2<f32> = vs_TEXCOORD0;
  let x_170 : vec4<f32> = textureSample(x_Occlusion, sampler_Occlusion, x_169);
  u_xlat20 = x_170.x;
  let x_177 : vec2<f32> = vs_TEXCOORD0;
  let x_178 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_177);
  u_xlat37 = vec2<f32>(x_178.x, x_178.w);
  let x_186 : vec2<f32> = vs_TEXCOORD0;
  let x_187 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_186);
  u_xlat6 = vec3<f32>(x_187.x, x_187.y, x_187.z);
  let x_189 : vec3<f32> = u_xlat6;
  let x_192 : vec4<f32> = x_39.x_EmissionColor;
  u_xlat6 = (x_189 * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = x_39.x_SinTime;
  let x_202 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + vec3<f32>(x_200.z, x_200.z, x_200.z));
  let x_203 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_214 : vec4<f32> = u_xlat7;
  let x_216 : vec4<f32> = textureSample(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_214.x, x_214.y, x_214.z));
  u_xlat55 = x_216.x;
  let x_218 : vec3<f32> = u_xlat3;
  let x_222 : vec4<f32> = x_39.x_EdgeColor1;
  let x_224 : vec3<f32> = (vec3<f32>(x_218.x, x_218.x, x_218.x) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec3<f32> = u_xlat6;
  let x_228 : f32 = u_xlat55;
  let x_231 : vec4<f32> = u_xlat7;
  u_xlat6 = ((x_227 * vec3<f32>(x_228, x_228, x_228)) + vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_235 : f32 = u_xlat37.x;
  let x_238 : f32 = x_39.x_Metallic;
  u_xlat3.x = (x_235 * x_238);
  let x_246 : vec2<f32> = vs_TEXCOORD0;
  let x_247 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_246);
  let x_248 : vec3<f32> = vec3<f32>(x_247.x, x_247.y, x_247.w);
  let x_249 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_252 : f32 = u_xlat7.z;
  let x_254 : f32 = u_xlat7.x;
  u_xlat7.x = (x_252 * x_254);
  let x_257 : vec4<f32> = u_xlat7;
  let x_264 : vec2<f32> = ((vec2<f32>(x_257.x, x_257.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_265 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat7;
  let x_269 : vec4<f32> = u_xlat7;
  u_xlat37.x = dot(vec2<f32>(x_267.x, x_267.y), vec2<f32>(x_269.x, x_269.y));
  let x_274 : f32 = u_xlat37.x;
  u_xlat37.x = min(x_274, 1.0f);
  let x_278 : f32 = u_xlat37.x;
  u_xlat37.x = (-(x_278) + 1.0f);
  let x_283 : f32 = u_xlat37.x;
  u_xlat7.z = sqrt(x_283);
  let x_287 : f32 = x_39.x_Cutoff;
  let x_289 : f32 = u_xlat53;
  let x_291 : f32 = u_xlat52;
  u_xlat52 = ((-(x_287) * x_289) + x_291);
  let x_296 : f32 = u_xlat52;
  u_xlatb52 = (x_296 < 0.0f);
  let x_298 : bool = u_xlatb52;
  if (((select(0i, 1i, x_298) * -1i) != 0i)) {
    discard;
  }
  let x_308 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb52 = (x_308 == 1.0f);
  let x_310 : bool = u_xlatb52;
  if (x_310) {
    let x_315 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb53 = (x_315 == 1.0f);
    let x_318 : vec4<f32> = vs_TEXCOORD2;
    let x_322 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_324 : vec3<f32> = (vec3<f32>(x_318.w, x_318.w, x_318.w) * vec3<f32>(x_322.x, x_322.y, x_322.z));
    let x_325 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_328 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_330 : vec4<f32> = vs_TEXCOORD1;
    let x_333 : vec4<f32> = u_xlat8;
    let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_330.w, x_330.w, x_330.w)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
    let x_336 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
    let x_340 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_342 : vec4<f32> = vs_TEXCOORD3;
    let x_345 : vec4<f32> = u_xlat8;
    let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.w, x_342.w, x_342.w)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
    let x_348 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : vec4<f32> = u_xlat8;
    let x_354 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_356 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) + vec3<f32>(x_354.x, x_354.y, x_354.z));
    let x_357 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
    let x_359 : bool = u_xlatb53;
    if (x_359) {
      let x_363 : vec4<f32> = u_xlat8;
      x_360 = vec3<f32>(x_363.x, x_363.y, x_363.z);
    } else {
      let x_366 : vec4<f32> = u_xlat0;
      x_360 = vec3<f32>(x_366.x, x_366.y, x_366.z);
    }
    let x_368 : vec3<f32> = x_360;
    let x_369 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat8;
    let x_375 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_377 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) + -(x_375));
    let x_378 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
    let x_380 : vec4<f32> = u_xlat8;
    let x_384 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_385 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) * x_384);
    let x_386 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_386.x, x_385.x, x_385.y, x_385.z);
    let x_389 : f32 = u_xlat8.y;
    u_xlat53 = ((x_389 * 0.25f) + 0.75f);
    let x_395 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat37.x = ((x_395 * 0.5f) + 0.75f);
    let x_400 : f32 = u_xlat53;
    let x_402 : f32 = u_xlat37.x;
    u_xlat8.x = max(x_400, x_402);
    let x_410 : vec4<f32> = u_xlat8;
    let x_412 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_410.x, x_410.z, x_410.w));
    u_xlat8 = x_412;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_418 : vec4<f32> = u_xlat8;
  let x_421 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat53 = dot(x_418, x_421);
  let x_423 : f32 = u_xlat53;
  u_xlat53 = clamp(x_423, 0.0f, 1.0f);
  let x_425 : vec4<f32> = vs_TEXCOORD1;
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_425.x, x_425.y, x_425.z), vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_431 : vec4<f32> = vs_TEXCOORD2;
  let x_433 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_437 : vec4<f32> = vs_TEXCOORD3;
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_437.x, x_437.y, x_437.z), vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_443 : vec4<f32> = u_xlat8;
  let x_445 : vec4<f32> = u_xlat8;
  u_xlat37.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_450 : f32 = u_xlat37.x;
  u_xlat37.x = inverseSqrt(x_450);
  let x_453 : vec2<f32> = u_xlat37;
  let x_455 : vec4<f32> = u_xlat8;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.x, x_453.x) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_461 : f32 = u_xlat37.y;
  let x_465 : f32 = x_39.x_Glossiness;
  u_xlat37.x = ((-(x_461) * x_465) + 1.0f);
  let x_469 : vec4<f32> = u_xlat2;
  let x_472 : vec4<f32> = u_xlat7;
  u_xlat55 = dot(-(vec3<f32>(x_469.x, x_469.y, x_469.z)), vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : f32 = u_xlat55;
  let x_476 : f32 = u_xlat55;
  u_xlat55 = (x_475 + x_476);
  let x_478 : vec4<f32> = u_xlat7;
  let x_480 : f32 = u_xlat55;
  let x_484 : vec4<f32> = u_xlat2;
  let x_487 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * -(vec3<f32>(x_480, x_480, x_480))) + -(vec3<f32>(x_484.x, x_484.y, x_484.z)));
  let x_488 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_491 : f32 = u_xlat53;
  let x_495 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_491, x_491, x_491) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : bool = u_xlatb52;
  if (x_498) {
    let x_502 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb52 = (x_502 == 1.0f);
    let x_505 : vec4<f32> = vs_TEXCOORD2;
    let x_508 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_510 : vec3<f32> = (vec3<f32>(x_505.w, x_505.w, x_505.w) * vec3<f32>(x_508.x, x_508.y, x_508.z));
    let x_511 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
    let x_514 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_516 : vec4<f32> = vs_TEXCOORD1;
    let x_519 : vec4<f32> = u_xlat10;
    let x_521 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(x_516.w, x_516.w, x_516.w)) + vec3<f32>(x_519.x, x_519.y, x_519.z));
    let x_522 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_525 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_527 : vec4<f32> = vs_TEXCOORD3;
    let x_530 : vec4<f32> = u_xlat10;
    let x_532 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527.w, x_527.w, x_527.w)) + vec3<f32>(x_530.x, x_530.y, x_530.z));
    let x_533 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
    let x_535 : vec4<f32> = u_xlat10;
    let x_538 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_540 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) + vec3<f32>(x_538.x, x_538.y, x_538.z));
    let x_541 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
    let x_543 : bool = u_xlatb52;
    if (x_543) {
      let x_547 : vec4<f32> = u_xlat10;
      x_544 = vec3<f32>(x_547.x, x_547.y, x_547.z);
    } else {
      let x_550 : vec4<f32> = u_xlat0;
      x_544 = vec3<f32>(x_550.x, x_550.y, x_550.z);
    }
    let x_552 : vec3<f32> = x_544;
    let x_553 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
    let x_555 : vec4<f32> = u_xlat10;
    let x_558 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_560 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) + -(x_558));
    let x_561 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
    let x_563 : vec4<f32> = u_xlat10;
    let x_566 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_567 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) * x_566);
    let x_568 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_568.x, x_567.x, x_567.y, x_567.z);
    let x_571 : f32 = u_xlat10.y;
    u_xlat52 = (x_571 * 0.25f);
    let x_574 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat53 = (x_574 * 0.5f);
    let x_577 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat55 = ((-(x_577) * 0.5f) + 0.25f);
    let x_581 : f32 = u_xlat52;
    let x_582 : f32 = u_xlat53;
    u_xlat52 = max(x_581, x_582);
    let x_584 : f32 = u_xlat55;
    let x_585 : f32 = u_xlat52;
    u_xlat10.x = min(x_584, x_585);
    let x_592 : vec4<f32> = u_xlat10;
    let x_594 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_592.x, x_592.z, x_592.w));
    u_xlat11 = x_594;
    let x_596 : vec4<f32> = u_xlat10;
    let x_599 : vec3<f32> = (vec3<f32>(x_596.x, x_596.z, x_596.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_600 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_605 : vec4<f32> = u_xlat12;
    let x_607 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_605.x, x_605.y, x_605.z));
    u_xlat12 = x_607;
    let x_608 : vec4<f32> = u_xlat10;
    let x_611 : vec3<f32> = (vec3<f32>(x_608.x, x_608.z, x_608.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_612 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_617 : vec4<f32> = u_xlat10;
    let x_619 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_617.x, x_617.y, x_617.z));
    u_xlat10 = x_619;
    u_xlat7.w = 1.0f;
    let x_621 : vec4<f32> = u_xlat11;
    let x_622 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_621, x_622);
    let x_625 : vec4<f32> = u_xlat12;
    let x_626 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_625, x_626);
    let x_629 : vec4<f32> = u_xlat10;
    let x_630 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_629, x_630);
  } else {
    u_xlat7.w = 1.0f;
    let x_636 : vec4<f32> = x_39.unity_SHAr;
    let x_637 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_636, x_637);
    let x_642 : vec4<f32> = x_39.unity_SHAg;
    let x_643 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_642, x_643);
    let x_648 : vec4<f32> = x_39.unity_SHAb;
    let x_649 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_648, x_649);
  }
  let x_652 : vec4<f32> = u_xlat11;
  let x_656 : vec3<f32> = vs_TEXCOORD4;
  let x_657 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) + x_656);
  let x_658 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat10;
  let x_663 : vec3<f32> = max(vec3<f32>(x_660.x, x_660.y, x_660.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_664 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_668 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb52 = (0.0f < x_668);
  let x_670 : bool = u_xlatb52;
  if (x_670) {
    let x_673 : vec4<f32> = u_xlat8;
    let x_675 : vec4<f32> = u_xlat8;
    u_xlat52 = dot(vec3<f32>(x_673.x, x_673.y, x_673.z), vec3<f32>(x_675.x, x_675.y, x_675.z));
    let x_678 : f32 = u_xlat52;
    u_xlat52 = inverseSqrt(x_678);
    let x_680 : f32 = u_xlat52;
    let x_682 : vec4<f32> = u_xlat8;
    let x_684 : vec3<f32> = (vec3<f32>(x_680, x_680, x_680) * vec3<f32>(x_682.x, x_682.y, x_682.z));
    let x_685 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
    let x_687 : vec4<f32> = u_xlat0;
    let x_692 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    let x_694 : vec3<f32> = (-(vec3<f32>(x_687.x, x_687.y, x_687.z)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_695 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    let x_697 : vec4<f32> = u_xlat12;
    let x_699 : vec4<f32> = u_xlat11;
    let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) / vec3<f32>(x_699.x, x_699.y, x_699.z));
    let x_702 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
    let x_705 : vec4<f32> = u_xlat0;
    let x_710 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(vec3<f32>(x_705.x, x_705.y, x_705.z)) + vec3<f32>(x_710.x, x_710.y, x_710.z));
    let x_713 : vec3<f32> = u_xlat13;
    let x_714 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_713 / vec3<f32>(x_714.x, x_714.y, x_714.z));
    let x_721 : vec4<f32> = u_xlat11;
    let x_724 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_721.x, x_721.y, x_721.z, x_721.x));
    u_xlatb14 = vec3<bool>(x_724.x, x_724.y, x_724.z);
    let x_727 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_727;
    let x_729 : bool = u_xlatb14.x;
    if (x_729) {
      let x_734 : f32 = u_xlat12.x;
      x_730 = x_734;
    } else {
      let x_737 : f32 = u_xlat13.x;
      x_730 = x_737;
    }
    let x_738 : f32 = x_730;
    hlslcc_movcTemp.x = x_738;
    let x_741 : bool = u_xlatb14.y;
    if (x_741) {
      let x_746 : f32 = u_xlat12.y;
      x_742 = x_746;
    } else {
      let x_749 : f32 = u_xlat13.y;
      x_742 = x_749;
    }
    let x_750 : f32 = x_742;
    hlslcc_movcTemp.y = x_750;
    let x_753 : bool = u_xlatb14.z;
    if (x_753) {
      let x_758 : f32 = u_xlat12.z;
      x_754 = x_758;
    } else {
      let x_761 : f32 = u_xlat13.z;
      x_754 = x_761;
    }
    let x_762 : f32 = x_754;
    hlslcc_movcTemp.z = x_762;
    let x_764 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_764;
    let x_766 : f32 = u_xlat12.y;
    let x_768 : f32 = u_xlat12.x;
    u_xlat52 = min(x_766, x_768);
    let x_771 : f32 = u_xlat12.z;
    let x_772 : f32 = u_xlat52;
    u_xlat52 = min(x_771, x_772);
    let x_774 : vec4<f32> = u_xlat0;
    let x_777 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    let x_780 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + -(vec3<f32>(x_777.x, x_777.y, x_777.z)));
    let x_781 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
    let x_783 : vec4<f32> = u_xlat11;
    let x_785 : f32 = u_xlat52;
    let x_788 : vec4<f32> = u_xlat12;
    let x_790 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_785, x_785, x_785)) + vec3<f32>(x_788.x, x_788.y, x_788.z));
    let x_791 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  } else {
    let x_794 : vec4<f32> = u_xlat8;
    let x_795 : vec3<f32> = vec3<f32>(x_794.x, x_794.y, x_794.z);
    let x_796 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  }
  let x_799 : f32 = u_xlat37.x;
  u_xlat52 = ((-(x_799) * 0.699999988f) + 1.700000048f);
  let x_805 : f32 = u_xlat52;
  let x_807 : f32 = u_xlat37.x;
  u_xlat52 = (x_805 * x_807);
  let x_809 : f32 = u_xlat52;
  u_xlat52 = (x_809 * 6.0f);
  let x_820 : vec4<f32> = u_xlat11;
  let x_822 : f32 = u_xlat52;
  let x_823 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_820.x, x_820.y, x_820.z), x_822);
  u_xlat11 = x_823;
  let x_825 : f32 = u_xlat11.w;
  u_xlat53 = (x_825 + -1.0f);
  let x_829 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_830 : f32 = u_xlat53;
  u_xlat53 = ((x_829 * x_830) + 1.0f);
  let x_833 : f32 = u_xlat53;
  u_xlat53 = log2(x_833);
  let x_835 : f32 = u_xlat53;
  let x_837 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat53 = (x_835 * x_837);
  let x_839 : f32 = u_xlat53;
  u_xlat53 = exp2(x_839);
  let x_841 : f32 = u_xlat53;
  let x_843 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat53 = (x_841 * x_843);
  let x_845 : vec4<f32> = u_xlat11;
  let x_847 : f32 = u_xlat53;
  let x_849 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(x_847, x_847, x_847));
  let x_850 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_854 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb55 = (x_854 < 0.999989986f);
  let x_857 : bool = u_xlatb55;
  if (x_857) {
    let x_862 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb55 = (0.0f < x_862);
    let x_864 : bool = u_xlatb55;
    if (x_864) {
      let x_867 : vec4<f32> = u_xlat8;
      let x_869 : vec4<f32> = u_xlat8;
      u_xlat55 = dot(vec3<f32>(x_867.x, x_867.y, x_867.z), vec3<f32>(x_869.x, x_869.y, x_869.z));
      let x_872 : f32 = u_xlat55;
      u_xlat55 = inverseSqrt(x_872);
      let x_874 : f32 = u_xlat55;
      let x_876 : vec4<f32> = u_xlat8;
      u_xlat13 = (vec3<f32>(x_874, x_874, x_874) * vec3<f32>(x_876.x, x_876.y, x_876.z));
      let x_880 : vec4<f32> = u_xlat0;
      let x_885 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(vec3<f32>(x_880.x, x_880.y, x_880.z)) + vec3<f32>(x_885.x, x_885.y, x_885.z));
      let x_888 : vec3<f32> = u_xlat14;
      let x_889 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_888 / x_889);
      let x_892 : vec4<f32> = u_xlat0;
      let x_897 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(vec3<f32>(x_892.x, x_892.y, x_892.z)) + vec3<f32>(x_897.x, x_897.y, x_897.z));
      let x_900 : vec3<f32> = u_xlat15;
      let x_901 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_900 / x_901);
      let x_904 : vec3<f32> = u_xlat13;
      let x_906 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_904.x, x_904.y, x_904.z, x_904.x));
      u_xlatb16 = vec3<bool>(x_906.x, x_906.y, x_906.z);
      let x_909 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_909;
      let x_911 : bool = u_xlatb16.x;
      if (x_911) {
        let x_916 : f32 = u_xlat14.x;
        x_912 = x_916;
      } else {
        let x_919 : f32 = u_xlat15.x;
        x_912 = x_919;
      }
      let x_920 : f32 = x_912;
      hlslcc_movcTemp_1.x = x_920;
      let x_923 : bool = u_xlatb16.y;
      if (x_923) {
        let x_928 : f32 = u_xlat14.y;
        x_924 = x_928;
      } else {
        let x_931 : f32 = u_xlat15.y;
        x_924 = x_931;
      }
      let x_932 : f32 = x_924;
      hlslcc_movcTemp_1.y = x_932;
      let x_935 : bool = u_xlatb16.z;
      if (x_935) {
        let x_940 : f32 = u_xlat14.z;
        x_936 = x_940;
      } else {
        let x_943 : f32 = u_xlat15.z;
        x_936 = x_943;
      }
      let x_944 : f32 = x_936;
      hlslcc_movcTemp_1.z = x_944;
      let x_946 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_946;
      let x_948 : f32 = u_xlat14.y;
      let x_950 : f32 = u_xlat14.x;
      u_xlat55 = min(x_948, x_950);
      let x_953 : f32 = u_xlat14.z;
      let x_954 : f32 = u_xlat55;
      u_xlat55 = min(x_953, x_954);
      let x_956 : vec4<f32> = u_xlat0;
      let x_959 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_962 : vec3<f32> = (vec3<f32>(x_956.x, x_956.y, x_956.z) + -(vec3<f32>(x_959.x, x_959.y, x_959.z)));
      let x_963 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
      let x_965 : vec3<f32> = u_xlat13;
      let x_966 : f32 = u_xlat55;
      let x_969 : vec4<f32> = u_xlat0;
      let x_971 : vec3<f32> = ((x_965 * vec3<f32>(x_966, x_966, x_966)) + vec3<f32>(x_969.x, x_969.y, x_969.z));
      let x_972 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
    }
    let x_978 : vec4<f32> = u_xlat8;
    let x_980 : f32 = u_xlat52;
    let x_981 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_978.x, x_978.y, x_978.z), x_980);
    u_xlat8 = x_981;
    let x_983 : f32 = u_xlat8.w;
    u_xlat0.x = (x_983 + -1.0f);
    let x_988 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_990 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_988 * x_990) + 1.0f);
    let x_995 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_995);
    let x_999 : f32 = u_xlat0.x;
    let x_1001 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_999 * x_1001);
    let x_1005 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1005);
    let x_1009 : f32 = u_xlat0.x;
    let x_1011 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1009 * x_1011);
    let x_1014 : vec4<f32> = u_xlat8;
    let x_1016 : vec4<f32> = u_xlat0;
    let x_1018 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) * vec3<f32>(x_1016.x, x_1016.x, x_1016.x));
    let x_1019 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
    let x_1021 : f32 = u_xlat53;
    let x_1023 : vec4<f32> = u_xlat11;
    let x_1026 : vec4<f32> = u_xlat0;
    let x_1029 : vec3<f32> = ((vec3<f32>(x_1021, x_1021, x_1021) * vec3<f32>(x_1023.x, x_1023.y, x_1023.z)) + -(vec3<f32>(x_1026.x, x_1026.y, x_1026.z)));
    let x_1030 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
    let x_1033 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_1035 : vec4<f32> = u_xlat8;
    let x_1038 : vec4<f32> = u_xlat0;
    let x_1040 : vec3<f32> = ((vec3<f32>(x_1033.w, x_1033.w, x_1033.w) * vec3<f32>(x_1035.x, x_1035.y, x_1035.z)) + vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
    let x_1041 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  }
  let x_1043 : f32 = u_xlat20;
  let x_1045 : vec4<f32> = u_xlat12;
  let x_1047 : vec3<f32> = (vec3<f32>(x_1043, x_1043, x_1043) * vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec4<f32> = u_xlat4;
  let x_1053 : vec4<f32> = x_39.x_Color;
  let x_1058 : vec3<f32> = ((vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(x_1053.x, x_1053.y, x_1053.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1059 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec3<f32> = u_xlat3;
  let x_1063 : vec4<f32> = u_xlat4;
  let x_1068 : vec3<f32> = ((vec3<f32>(x_1061.x, x_1061.x, x_1061.x) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1069 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1072 : f32 = u_xlat3.x;
  u_xlat52 = ((-(x_1072) * 0.959999979f) + 0.959999979f);
  let x_1077 : f32 = u_xlat52;
  let x_1079 : vec4<f32> = u_xlat5;
  let x_1081 : vec3<f32> = (vec3<f32>(x_1077, x_1077, x_1077) * vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec3<f32> = u_xlat1;
  let x_1085 : f32 = u_xlat51;
  let x_1089 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1084 * vec3<f32>(x_1085, x_1085, x_1085)) + vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : vec3<f32> = u_xlat1;
  let x_1093 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_1092, x_1093);
  let x_1095 : f32 = u_xlat51;
  u_xlat51 = max(x_1095, 0.001f);
  let x_1098 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1098);
  let x_1100 : f32 = u_xlat51;
  let x_1102 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1100, x_1100, x_1100) * x_1102);
  let x_1104 : vec4<f32> = u_xlat7;
  let x_1106 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1104.x, x_1104.y, x_1104.z), vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat7;
  let x_1112 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1109.x, x_1109.y, x_1109.z), vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1117 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1117, 0.0f, 1.0f);
  let x_1121 : vec4<f32> = u_xlat7;
  let x_1123 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1121.x, x_1121.y, x_1121.z), x_1123);
  let x_1125 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1125, 0.0f, 1.0f);
  let x_1128 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_1130 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1128.x, x_1128.y, x_1128.z), x_1130);
  let x_1134 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1134, 0.0f, 1.0f);
  let x_1139 : f32 = u_xlat1.x;
  let x_1141 : f32 = u_xlat1.x;
  u_xlat18 = (x_1139 * x_1141);
  let x_1143 : f32 = u_xlat18;
  let x_1145 : vec2<f32> = u_xlat37;
  u_xlat18 = dot(vec2<f32>(x_1143, x_1143), vec2<f32>(x_1145.x, x_1145.x));
  let x_1148 : f32 = u_xlat18;
  u_xlat18 = (x_1148 + -0.5f);
  let x_1153 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1153) + 1.0f);
  let x_1157 : f32 = u_xlat35;
  let x_1158 : f32 = u_xlat35;
  u_xlat36 = (x_1157 * x_1158);
  let x_1160 : f32 = u_xlat36;
  let x_1161 : f32 = u_xlat36;
  u_xlat36 = (x_1160 * x_1161);
  let x_1163 : f32 = u_xlat35;
  let x_1164 : f32 = u_xlat36;
  u_xlat35 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat18;
  let x_1167 : f32 = u_xlat35;
  u_xlat35 = ((x_1166 * x_1167) + 1.0f);
  let x_1170 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1170)) + 1.0f);
  let x_1174 : f32 = u_xlat36;
  let x_1175 : f32 = u_xlat36;
  u_xlat53 = (x_1174 * x_1175);
  let x_1177 : f32 = u_xlat53;
  let x_1178 : f32 = u_xlat53;
  u_xlat53 = (x_1177 * x_1178);
  let x_1180 : f32 = u_xlat36;
  let x_1181 : f32 = u_xlat53;
  u_xlat36 = (x_1180 * x_1181);
  let x_1183 : f32 = u_xlat18;
  let x_1184 : f32 = u_xlat36;
  u_xlat18 = ((x_1183 * x_1184) + 1.0f);
  let x_1187 : f32 = u_xlat18;
  let x_1188 : f32 = u_xlat35;
  u_xlat18 = (x_1187 * x_1188);
  let x_1191 : f32 = u_xlat2.x;
  let x_1192 : f32 = u_xlat18;
  u_xlat18 = (x_1191 * x_1192);
  let x_1195 : f32 = u_xlat37.x;
  let x_1197 : f32 = u_xlat37.x;
  u_xlat35 = (x_1195 * x_1197);
  let x_1199 : f32 = u_xlat35;
  u_xlat35 = max(x_1199, 0.002f);
  let x_1202 : f32 = u_xlat35;
  u_xlat53 = (-(x_1202) + 1.0f);
  let x_1205 : f32 = u_xlat51;
  let x_1207 : f32 = u_xlat53;
  let x_1209 : f32 = u_xlat35;
  u_xlat3.x = ((abs(x_1205) * x_1207) + x_1209);
  let x_1213 : f32 = u_xlat2.x;
  let x_1214 : f32 = u_xlat53;
  let x_1216 : f32 = u_xlat35;
  u_xlat53 = ((x_1213 * x_1214) + x_1216);
  let x_1218 : f32 = u_xlat51;
  let x_1220 : f32 = u_xlat53;
  u_xlat51 = (abs(x_1218) * x_1220);
  let x_1223 : f32 = u_xlat2.x;
  let x_1225 : f32 = u_xlat3.x;
  let x_1227 : f32 = u_xlat51;
  u_xlat51 = ((x_1223 * x_1225) + x_1227);
  let x_1229 : f32 = u_xlat51;
  u_xlat51 = (x_1229 + 0.00001f);
  let x_1232 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1232);
  let x_1234 : f32 = u_xlat35;
  let x_1235 : f32 = u_xlat35;
  u_xlat53 = (x_1234 * x_1235);
  let x_1237 : f32 = u_xlat19;
  let x_1238 : f32 = u_xlat53;
  let x_1240 : f32 = u_xlat19;
  u_xlat3.x = ((x_1237 * x_1238) + -(x_1240));
  let x_1245 : f32 = u_xlat3.x;
  let x_1246 : f32 = u_xlat19;
  u_xlat19 = ((x_1245 * x_1246) + 1.0f);
  let x_1249 : f32 = u_xlat53;
  u_xlat53 = (x_1249 * 0.318309873f);
  let x_1252 : f32 = u_xlat19;
  let x_1253 : f32 = u_xlat19;
  u_xlat19 = ((x_1252 * x_1253) + 0.0000001f);
  let x_1257 : f32 = u_xlat53;
  let x_1258 : f32 = u_xlat19;
  u_xlat19 = (x_1257 / x_1258);
  let x_1260 : f32 = u_xlat51;
  let x_1261 : f32 = u_xlat19;
  u_xlat51 = (x_1260 * x_1261);
  let x_1264 : f32 = u_xlat2.x;
  let x_1265 : f32 = u_xlat51;
  u_xlat51 = (x_1264 * x_1265);
  let x_1267 : f32 = u_xlat51;
  u_xlat51 = (x_1267 * 3.141592741f);
  let x_1270 : f32 = u_xlat51;
  u_xlat51 = max(x_1270, 0.0f);
  let x_1272 : f32 = u_xlat35;
  let x_1273 : f32 = u_xlat35;
  u_xlat35 = ((x_1272 * x_1273) + 1.0f);
  let x_1276 : f32 = u_xlat35;
  u_xlat1.z = (1.0f / x_1276);
  let x_1279 : vec4<f32> = u_xlat4;
  let x_1281 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1279.x, x_1279.y, x_1279.z), vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1287 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1287 == 0.0f));
  let x_1289 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1289);
  let x_1292 : f32 = u_xlat51;
  let x_1294 : f32 = u_xlat2.x;
  u_xlat51 = (x_1292 * x_1294);
  let x_1297 : f32 = u_xlat37.y;
  let x_1299 : f32 = x_39.x_Glossiness;
  let x_1301 : f32 = u_xlat52;
  u_xlat52 = ((x_1297 * x_1299) + -(x_1301));
  let x_1304 : f32 = u_xlat52;
  u_xlat52 = (x_1304 + 1.0f);
  let x_1306 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1306, 0.0f, 1.0f);
  let x_1308 : f32 = u_xlat18;
  let x_1310 : vec3<f32> = u_xlat9;
  let x_1311 : vec3<f32> = (vec3<f32>(x_1308, x_1308, x_1308) * x_1310);
  let x_1312 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1311.z);
  let x_1314 : vec4<f32> = u_xlat10;
  let x_1316 : f32 = u_xlat20;
  let x_1319 : vec4<f32> = u_xlat2;
  let x_1321 : vec3<f32> = ((vec3<f32>(x_1314.x, x_1314.y, x_1314.z) * vec3<f32>(x_1316, x_1316, x_1316)) + vec3<f32>(x_1319.x, x_1319.y, x_1319.w));
  let x_1322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1321.z);
  let x_1324 : vec3<f32> = u_xlat9;
  let x_1325 : f32 = u_xlat51;
  u_xlat3 = (x_1324 * vec3<f32>(x_1325, x_1325, x_1325));
  let x_1329 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1329) + 1.0f);
  let x_1334 : f32 = u_xlat0.w;
  let x_1336 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1334 * x_1336);
  let x_1340 : f32 = u_xlat1.x;
  let x_1342 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1340 * x_1342);
  let x_1345 : vec4<f32> = u_xlat0;
  let x_1346 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1345 * vec4<f32>(x_1346.z, x_1346.z, x_1346.z, x_1346.x));
  let x_1349 : vec4<f32> = u_xlat4;
  let x_1353 : vec3<f32> = (-(vec3<f32>(x_1349.x, x_1349.y, x_1349.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1354 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
  let x_1356 : vec4<f32> = u_xlat7;
  let x_1358 : vec4<f32> = u_xlat0;
  let x_1361 : vec4<f32> = u_xlat4;
  let x_1363 : vec3<f32> = ((vec3<f32>(x_1356.x, x_1356.y, x_1356.z) * vec3<f32>(x_1358.w, x_1358.w, x_1358.w)) + vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
  let x_1364 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
  let x_1366 : vec3<f32> = u_xlat3;
  let x_1367 : vec4<f32> = u_xlat7;
  u_xlat3 = (x_1366 * vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
  let x_1370 : vec4<f32> = u_xlat5;
  let x_1372 : vec4<f32> = u_xlat2;
  let x_1375 : vec3<f32> = u_xlat3;
  let x_1376 : vec3<f32> = ((vec3<f32>(x_1370.x, x_1370.y, x_1370.z) * vec3<f32>(x_1372.x, x_1372.y, x_1372.w)) + x_1375);
  let x_1377 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1376.x, x_1376.y, x_1377.z, x_1376.z);
  let x_1379 : vec4<f32> = u_xlat4;
  let x_1382 : f32 = u_xlat52;
  u_xlat1 = (-(vec3<f32>(x_1379.x, x_1379.y, x_1379.z)) + vec3<f32>(x_1382, x_1382, x_1382));
  let x_1385 : f32 = u_xlat36;
  let x_1387 : vec3<f32> = u_xlat1;
  let x_1389 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1385, x_1385, x_1385) * x_1387) + vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
  let x_1392 : vec4<f32> = u_xlat0;
  let x_1394 : vec3<f32> = u_xlat1;
  let x_1396 : vec4<f32> = u_xlat2;
  let x_1398 : vec3<f32> = ((vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * x_1394) + vec3<f32>(x_1396.x, x_1396.y, x_1396.w));
  let x_1399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
  let x_1403 : vec3<f32> = u_xlat6;
  let x_1404 : vec4<f32> = u_xlat0;
  let x_1406 : vec3<f32> = (x_1403 + vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
  let x_1407 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
  let x_1410 : f32 = u_xlat5.w;
  SV_Target0.w = x_1410;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

