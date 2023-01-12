struct PGlobals {
  x_SinTime : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> vs_TEXCOORD5 : f32;

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
  var x_731 : f32;
  var x_743 : f32;
  var x_755 : f32;
  var u_xlatb55 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb16 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_913 : f32;
  var x_925 : f32;
  var x_937 : f32;
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
    let x_637 : vec4<f32> = x_39.unity_SHAr;
    let x_638 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_637, x_638);
    let x_643 : vec4<f32> = x_39.unity_SHAg;
    let x_644 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_643, x_644);
    let x_649 : vec4<f32> = x_39.unity_SHAb;
    let x_650 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_649, x_650);
  }
  let x_653 : vec4<f32> = u_xlat11;
  let x_657 : vec3<f32> = vs_TEXCOORD4;
  let x_658 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) + x_657);
  let x_659 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat10;
  let x_664 : vec3<f32> = max(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_665 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_669 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb52 = (0.0f < x_669);
  let x_671 : bool = u_xlatb52;
  if (x_671) {
    let x_674 : vec4<f32> = u_xlat8;
    let x_676 : vec4<f32> = u_xlat8;
    u_xlat52 = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(x_676.x, x_676.y, x_676.z));
    let x_679 : f32 = u_xlat52;
    u_xlat52 = inverseSqrt(x_679);
    let x_681 : f32 = u_xlat52;
    let x_683 : vec4<f32> = u_xlat8;
    let x_685 : vec3<f32> = (vec3<f32>(x_681, x_681, x_681) * vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_686 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
    let x_688 : vec4<f32> = u_xlat0;
    let x_693 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    let x_695 : vec3<f32> = (-(vec3<f32>(x_688.x, x_688.y, x_688.z)) + vec3<f32>(x_693.x, x_693.y, x_693.z));
    let x_696 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
    let x_698 : vec4<f32> = u_xlat12;
    let x_700 : vec4<f32> = u_xlat11;
    let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) / vec3<f32>(x_700.x, x_700.y, x_700.z));
    let x_703 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
    let x_706 : vec4<f32> = u_xlat0;
    let x_711 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(vec3<f32>(x_706.x, x_706.y, x_706.z)) + vec3<f32>(x_711.x, x_711.y, x_711.z));
    let x_714 : vec3<f32> = u_xlat13;
    let x_715 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_714 / vec3<f32>(x_715.x, x_715.y, x_715.z));
    let x_722 : vec4<f32> = u_xlat11;
    let x_725 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_722.x, x_722.y, x_722.z, x_722.x));
    u_xlatb14 = vec3<bool>(x_725.x, x_725.y, x_725.z);
    let x_728 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_728;
    let x_730 : bool = u_xlatb14.x;
    if (x_730) {
      let x_735 : f32 = u_xlat12.x;
      x_731 = x_735;
    } else {
      let x_738 : f32 = u_xlat13.x;
      x_731 = x_738;
    }
    let x_739 : f32 = x_731;
    hlslcc_movcTemp.x = x_739;
    let x_742 : bool = u_xlatb14.y;
    if (x_742) {
      let x_747 : f32 = u_xlat12.y;
      x_743 = x_747;
    } else {
      let x_750 : f32 = u_xlat13.y;
      x_743 = x_750;
    }
    let x_751 : f32 = x_743;
    hlslcc_movcTemp.y = x_751;
    let x_754 : bool = u_xlatb14.z;
    if (x_754) {
      let x_759 : f32 = u_xlat12.z;
      x_755 = x_759;
    } else {
      let x_762 : f32 = u_xlat13.z;
      x_755 = x_762;
    }
    let x_763 : f32 = x_755;
    hlslcc_movcTemp.z = x_763;
    let x_765 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_765;
    let x_767 : f32 = u_xlat12.y;
    let x_769 : f32 = u_xlat12.x;
    u_xlat52 = min(x_767, x_769);
    let x_772 : f32 = u_xlat12.z;
    let x_773 : f32 = u_xlat52;
    u_xlat52 = min(x_772, x_773);
    let x_775 : vec4<f32> = u_xlat0;
    let x_778 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    let x_781 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) + -(vec3<f32>(x_778.x, x_778.y, x_778.z)));
    let x_782 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
    let x_784 : vec4<f32> = u_xlat11;
    let x_786 : f32 = u_xlat52;
    let x_789 : vec4<f32> = u_xlat12;
    let x_791 : vec3<f32> = ((vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(x_786, x_786, x_786)) + vec3<f32>(x_789.x, x_789.y, x_789.z));
    let x_792 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  } else {
    let x_795 : vec4<f32> = u_xlat8;
    let x_796 : vec3<f32> = vec3<f32>(x_795.x, x_795.y, x_795.z);
    let x_797 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  }
  let x_800 : f32 = u_xlat37.x;
  u_xlat52 = ((-(x_800) * 0.699999988f) + 1.700000048f);
  let x_806 : f32 = u_xlat52;
  let x_808 : f32 = u_xlat37.x;
  u_xlat52 = (x_806 * x_808);
  let x_810 : f32 = u_xlat52;
  u_xlat52 = (x_810 * 6.0f);
  let x_821 : vec4<f32> = u_xlat11;
  let x_823 : f32 = u_xlat52;
  let x_824 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_821.x, x_821.y, x_821.z), x_823);
  u_xlat11 = x_824;
  let x_826 : f32 = u_xlat11.w;
  u_xlat53 = (x_826 + -1.0f);
  let x_830 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_831 : f32 = u_xlat53;
  u_xlat53 = ((x_830 * x_831) + 1.0f);
  let x_834 : f32 = u_xlat53;
  u_xlat53 = log2(x_834);
  let x_836 : f32 = u_xlat53;
  let x_838 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat53 = (x_836 * x_838);
  let x_840 : f32 = u_xlat53;
  u_xlat53 = exp2(x_840);
  let x_842 : f32 = u_xlat53;
  let x_844 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat53 = (x_842 * x_844);
  let x_846 : vec4<f32> = u_xlat11;
  let x_848 : f32 = u_xlat53;
  let x_850 : vec3<f32> = (vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_848, x_848, x_848));
  let x_851 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_855 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb55 = (x_855 < 0.999989986f);
  let x_858 : bool = u_xlatb55;
  if (x_858) {
    let x_863 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb55 = (0.0f < x_863);
    let x_865 : bool = u_xlatb55;
    if (x_865) {
      let x_868 : vec4<f32> = u_xlat8;
      let x_870 : vec4<f32> = u_xlat8;
      u_xlat55 = dot(vec3<f32>(x_868.x, x_868.y, x_868.z), vec3<f32>(x_870.x, x_870.y, x_870.z));
      let x_873 : f32 = u_xlat55;
      u_xlat55 = inverseSqrt(x_873);
      let x_875 : f32 = u_xlat55;
      let x_877 : vec4<f32> = u_xlat8;
      u_xlat13 = (vec3<f32>(x_875, x_875, x_875) * vec3<f32>(x_877.x, x_877.y, x_877.z));
      let x_881 : vec4<f32> = u_xlat0;
      let x_886 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(vec3<f32>(x_881.x, x_881.y, x_881.z)) + vec3<f32>(x_886.x, x_886.y, x_886.z));
      let x_889 : vec3<f32> = u_xlat14;
      let x_890 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_889 / x_890);
      let x_893 : vec4<f32> = u_xlat0;
      let x_898 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(vec3<f32>(x_893.x, x_893.y, x_893.z)) + vec3<f32>(x_898.x, x_898.y, x_898.z));
      let x_901 : vec3<f32> = u_xlat15;
      let x_902 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_901 / x_902);
      let x_905 : vec3<f32> = u_xlat13;
      let x_907 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.x));
      u_xlatb16 = vec3<bool>(x_907.x, x_907.y, x_907.z);
      let x_910 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_910;
      let x_912 : bool = u_xlatb16.x;
      if (x_912) {
        let x_917 : f32 = u_xlat14.x;
        x_913 = x_917;
      } else {
        let x_920 : f32 = u_xlat15.x;
        x_913 = x_920;
      }
      let x_921 : f32 = x_913;
      hlslcc_movcTemp_1.x = x_921;
      let x_924 : bool = u_xlatb16.y;
      if (x_924) {
        let x_929 : f32 = u_xlat14.y;
        x_925 = x_929;
      } else {
        let x_932 : f32 = u_xlat15.y;
        x_925 = x_932;
      }
      let x_933 : f32 = x_925;
      hlslcc_movcTemp_1.y = x_933;
      let x_936 : bool = u_xlatb16.z;
      if (x_936) {
        let x_941 : f32 = u_xlat14.z;
        x_937 = x_941;
      } else {
        let x_944 : f32 = u_xlat15.z;
        x_937 = x_944;
      }
      let x_945 : f32 = x_937;
      hlslcc_movcTemp_1.z = x_945;
      let x_947 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_947;
      let x_949 : f32 = u_xlat14.y;
      let x_951 : f32 = u_xlat14.x;
      u_xlat55 = min(x_949, x_951);
      let x_954 : f32 = u_xlat14.z;
      let x_955 : f32 = u_xlat55;
      u_xlat55 = min(x_954, x_955);
      let x_957 : vec4<f32> = u_xlat0;
      let x_960 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_963 : vec3<f32> = (vec3<f32>(x_957.x, x_957.y, x_957.z) + -(vec3<f32>(x_960.x, x_960.y, x_960.z)));
      let x_964 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
      let x_966 : vec3<f32> = u_xlat13;
      let x_967 : f32 = u_xlat55;
      let x_970 : vec4<f32> = u_xlat0;
      let x_972 : vec3<f32> = ((x_966 * vec3<f32>(x_967, x_967, x_967)) + vec3<f32>(x_970.x, x_970.y, x_970.z));
      let x_973 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
    }
    let x_979 : vec4<f32> = u_xlat8;
    let x_981 : f32 = u_xlat52;
    let x_982 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_979.x, x_979.y, x_979.z), x_981);
    u_xlat8 = x_982;
    let x_984 : f32 = u_xlat8.w;
    u_xlat0.x = (x_984 + -1.0f);
    let x_989 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_991 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_989 * x_991) + 1.0f);
    let x_996 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_996);
    let x_1000 : f32 = u_xlat0.x;
    let x_1002 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_1000 * x_1002);
    let x_1006 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1006);
    let x_1010 : f32 = u_xlat0.x;
    let x_1012 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1010 * x_1012);
    let x_1015 : vec4<f32> = u_xlat8;
    let x_1017 : vec4<f32> = u_xlat0;
    let x_1019 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * vec3<f32>(x_1017.x, x_1017.x, x_1017.x));
    let x_1020 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
    let x_1022 : f32 = u_xlat53;
    let x_1024 : vec4<f32> = u_xlat11;
    let x_1027 : vec4<f32> = u_xlat0;
    let x_1030 : vec3<f32> = ((vec3<f32>(x_1022, x_1022, x_1022) * vec3<f32>(x_1024.x, x_1024.y, x_1024.z)) + -(vec3<f32>(x_1027.x, x_1027.y, x_1027.z)));
    let x_1031 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
    let x_1034 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_1036 : vec4<f32> = u_xlat8;
    let x_1039 : vec4<f32> = u_xlat0;
    let x_1041 : vec3<f32> = ((vec3<f32>(x_1034.w, x_1034.w, x_1034.w) * vec3<f32>(x_1036.x, x_1036.y, x_1036.z)) + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
    let x_1042 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  }
  let x_1044 : f32 = u_xlat20;
  let x_1046 : vec4<f32> = u_xlat12;
  let x_1048 : vec3<f32> = (vec3<f32>(x_1044, x_1044, x_1044) * vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1051 : vec4<f32> = u_xlat4;
  let x_1054 : vec4<f32> = x_39.x_Color;
  let x_1059 : vec3<f32> = ((vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * vec3<f32>(x_1054.x, x_1054.y, x_1054.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1060 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec3<f32> = u_xlat3;
  let x_1064 : vec4<f32> = u_xlat4;
  let x_1069 : vec3<f32> = ((vec3<f32>(x_1062.x, x_1062.x, x_1062.x) * vec3<f32>(x_1064.x, x_1064.y, x_1064.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1070 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
  let x_1073 : f32 = u_xlat3.x;
  u_xlat52 = ((-(x_1073) * 0.959999979f) + 0.959999979f);
  let x_1078 : f32 = u_xlat52;
  let x_1080 : vec4<f32> = u_xlat5;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec3<f32> = u_xlat1;
  let x_1086 : f32 = u_xlat51;
  let x_1090 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1085 * vec3<f32>(x_1086, x_1086, x_1086)) + vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : vec3<f32> = u_xlat1;
  let x_1094 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_1093, x_1094);
  let x_1096 : f32 = u_xlat51;
  u_xlat51 = max(x_1096, 0.001f);
  let x_1099 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1099);
  let x_1101 : f32 = u_xlat51;
  let x_1103 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1101, x_1101, x_1101) * x_1103);
  let x_1105 : vec4<f32> = u_xlat7;
  let x_1107 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat7;
  let x_1113 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1110.x, x_1110.y, x_1110.z), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1118 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1118, 0.0f, 1.0f);
  let x_1122 : vec4<f32> = u_xlat7;
  let x_1124 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1122.x, x_1122.y, x_1122.z), x_1124);
  let x_1126 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1126, 0.0f, 1.0f);
  let x_1129 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_1131 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1129.x, x_1129.y, x_1129.z), x_1131);
  let x_1135 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1135, 0.0f, 1.0f);
  let x_1140 : f32 = u_xlat1.x;
  let x_1142 : f32 = u_xlat1.x;
  u_xlat18 = (x_1140 * x_1142);
  let x_1144 : f32 = u_xlat18;
  let x_1146 : vec2<f32> = u_xlat37;
  u_xlat18 = dot(vec2<f32>(x_1144, x_1144), vec2<f32>(x_1146.x, x_1146.x));
  let x_1149 : f32 = u_xlat18;
  u_xlat18 = (x_1149 + -0.5f);
  let x_1154 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1154) + 1.0f);
  let x_1158 : f32 = u_xlat35;
  let x_1159 : f32 = u_xlat35;
  u_xlat36 = (x_1158 * x_1159);
  let x_1161 : f32 = u_xlat36;
  let x_1162 : f32 = u_xlat36;
  u_xlat36 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat35;
  let x_1165 : f32 = u_xlat36;
  u_xlat35 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat18;
  let x_1168 : f32 = u_xlat35;
  u_xlat35 = ((x_1167 * x_1168) + 1.0f);
  let x_1171 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1171)) + 1.0f);
  let x_1175 : f32 = u_xlat36;
  let x_1176 : f32 = u_xlat36;
  u_xlat53 = (x_1175 * x_1176);
  let x_1178 : f32 = u_xlat53;
  let x_1179 : f32 = u_xlat53;
  u_xlat53 = (x_1178 * x_1179);
  let x_1181 : f32 = u_xlat36;
  let x_1182 : f32 = u_xlat53;
  u_xlat36 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat18;
  let x_1185 : f32 = u_xlat36;
  u_xlat18 = ((x_1184 * x_1185) + 1.0f);
  let x_1188 : f32 = u_xlat18;
  let x_1189 : f32 = u_xlat35;
  u_xlat18 = (x_1188 * x_1189);
  let x_1192 : f32 = u_xlat2.x;
  let x_1193 : f32 = u_xlat18;
  u_xlat18 = (x_1192 * x_1193);
  let x_1196 : f32 = u_xlat37.x;
  let x_1198 : f32 = u_xlat37.x;
  u_xlat35 = (x_1196 * x_1198);
  let x_1200 : f32 = u_xlat35;
  u_xlat35 = max(x_1200, 0.002f);
  let x_1203 : f32 = u_xlat35;
  u_xlat53 = (-(x_1203) + 1.0f);
  let x_1206 : f32 = u_xlat51;
  let x_1208 : f32 = u_xlat53;
  let x_1210 : f32 = u_xlat35;
  u_xlat3.x = ((abs(x_1206) * x_1208) + x_1210);
  let x_1214 : f32 = u_xlat2.x;
  let x_1215 : f32 = u_xlat53;
  let x_1217 : f32 = u_xlat35;
  u_xlat53 = ((x_1214 * x_1215) + x_1217);
  let x_1219 : f32 = u_xlat51;
  let x_1221 : f32 = u_xlat53;
  u_xlat51 = (abs(x_1219) * x_1221);
  let x_1224 : f32 = u_xlat2.x;
  let x_1226 : f32 = u_xlat3.x;
  let x_1228 : f32 = u_xlat51;
  u_xlat51 = ((x_1224 * x_1226) + x_1228);
  let x_1230 : f32 = u_xlat51;
  u_xlat51 = (x_1230 + 0.00001f);
  let x_1233 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1233);
  let x_1235 : f32 = u_xlat35;
  let x_1236 : f32 = u_xlat35;
  u_xlat53 = (x_1235 * x_1236);
  let x_1238 : f32 = u_xlat19;
  let x_1239 : f32 = u_xlat53;
  let x_1241 : f32 = u_xlat19;
  u_xlat3.x = ((x_1238 * x_1239) + -(x_1241));
  let x_1246 : f32 = u_xlat3.x;
  let x_1247 : f32 = u_xlat19;
  u_xlat19 = ((x_1246 * x_1247) + 1.0f);
  let x_1250 : f32 = u_xlat53;
  u_xlat53 = (x_1250 * 0.318309873f);
  let x_1253 : f32 = u_xlat19;
  let x_1254 : f32 = u_xlat19;
  u_xlat19 = ((x_1253 * x_1254) + 0.0000001f);
  let x_1258 : f32 = u_xlat53;
  let x_1259 : f32 = u_xlat19;
  u_xlat19 = (x_1258 / x_1259);
  let x_1261 : f32 = u_xlat51;
  let x_1262 : f32 = u_xlat19;
  u_xlat51 = (x_1261 * x_1262);
  let x_1265 : f32 = u_xlat2.x;
  let x_1266 : f32 = u_xlat51;
  u_xlat51 = (x_1265 * x_1266);
  let x_1268 : f32 = u_xlat51;
  u_xlat51 = (x_1268 * 3.141592741f);
  let x_1271 : f32 = u_xlat51;
  u_xlat51 = max(x_1271, 0.0f);
  let x_1273 : f32 = u_xlat35;
  let x_1274 : f32 = u_xlat35;
  u_xlat35 = ((x_1273 * x_1274) + 1.0f);
  let x_1277 : f32 = u_xlat35;
  u_xlat1.z = (1.0f / x_1277);
  let x_1280 : vec4<f32> = u_xlat4;
  let x_1282 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1280.x, x_1280.y, x_1280.z), vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1288 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1288 == 0.0f));
  let x_1290 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1290);
  let x_1293 : f32 = u_xlat51;
  let x_1295 : f32 = u_xlat2.x;
  u_xlat51 = (x_1293 * x_1295);
  let x_1298 : f32 = u_xlat37.y;
  let x_1300 : f32 = x_39.x_Glossiness;
  let x_1302 : f32 = u_xlat52;
  u_xlat52 = ((x_1298 * x_1300) + -(x_1302));
  let x_1305 : f32 = u_xlat52;
  u_xlat52 = (x_1305 + 1.0f);
  let x_1307 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1307, 0.0f, 1.0f);
  let x_1309 : f32 = u_xlat18;
  let x_1311 : vec3<f32> = u_xlat9;
  let x_1312 : vec3<f32> = (vec3<f32>(x_1309, x_1309, x_1309) * x_1311);
  let x_1313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1312.z);
  let x_1315 : vec4<f32> = u_xlat10;
  let x_1317 : f32 = u_xlat20;
  let x_1320 : vec4<f32> = u_xlat2;
  let x_1322 : vec3<f32> = ((vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317, x_1317, x_1317)) + vec3<f32>(x_1320.x, x_1320.y, x_1320.w));
  let x_1323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1322.z);
  let x_1325 : vec3<f32> = u_xlat9;
  let x_1326 : f32 = u_xlat51;
  u_xlat3 = (x_1325 * vec3<f32>(x_1326, x_1326, x_1326));
  let x_1330 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1330) + 1.0f);
  let x_1335 : f32 = u_xlat0.w;
  let x_1337 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1335 * x_1337);
  let x_1341 : f32 = u_xlat1.x;
  let x_1343 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1341 * x_1343);
  let x_1346 : vec4<f32> = u_xlat0;
  let x_1347 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1346 * vec4<f32>(x_1347.z, x_1347.z, x_1347.z, x_1347.x));
  let x_1350 : vec4<f32> = u_xlat4;
  let x_1354 : vec3<f32> = (-(vec3<f32>(x_1350.x, x_1350.y, x_1350.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1355 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : vec4<f32> = u_xlat7;
  let x_1359 : vec4<f32> = u_xlat0;
  let x_1362 : vec4<f32> = u_xlat4;
  let x_1364 : vec3<f32> = ((vec3<f32>(x_1357.x, x_1357.y, x_1357.z) * vec3<f32>(x_1359.w, x_1359.w, x_1359.w)) + vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
  let x_1365 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
  let x_1367 : vec3<f32> = u_xlat3;
  let x_1368 : vec4<f32> = u_xlat7;
  u_xlat3 = (x_1367 * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1371 : vec4<f32> = u_xlat5;
  let x_1373 : vec4<f32> = u_xlat2;
  let x_1376 : vec3<f32> = u_xlat3;
  let x_1377 : vec3<f32> = ((vec3<f32>(x_1371.x, x_1371.y, x_1371.z) * vec3<f32>(x_1373.x, x_1373.y, x_1373.w)) + x_1376);
  let x_1378 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1377.z);
  let x_1380 : vec4<f32> = u_xlat4;
  let x_1383 : f32 = u_xlat52;
  u_xlat1 = (-(vec3<f32>(x_1380.x, x_1380.y, x_1380.z)) + vec3<f32>(x_1383, x_1383, x_1383));
  let x_1386 : f32 = u_xlat36;
  let x_1388 : vec3<f32> = u_xlat1;
  let x_1390 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1386, x_1386, x_1386) * x_1388) + vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = u_xlat0;
  let x_1395 : vec3<f32> = u_xlat1;
  let x_1397 : vec4<f32> = u_xlat2;
  let x_1399 : vec3<f32> = ((vec3<f32>(x_1393.x, x_1393.y, x_1393.z) * x_1395) + vec3<f32>(x_1397.x, x_1397.y, x_1397.w));
  let x_1400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec3<f32> = u_xlat6;
  let x_1403 : vec4<f32> = u_xlat0;
  let x_1405 : vec3<f32> = (x_1402 + vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
  let x_1406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
  let x_1409 : f32 = vs_TEXCOORD5;
  let x_1411 : f32 = x_39.x_ProjectionParams.y;
  u_xlat51 = (x_1409 / x_1411);
  let x_1413 : f32 = u_xlat51;
  u_xlat51 = (-(x_1413) + 1.0f);
  let x_1416 : f32 = u_xlat51;
  let x_1418 : f32 = x_39.x_ProjectionParams.z;
  u_xlat51 = (x_1416 * x_1418);
  let x_1420 : f32 = u_xlat51;
  u_xlat51 = max(x_1420, 0.0f);
  let x_1422 : f32 = u_xlat51;
  let x_1425 : f32 = x_39.unity_FogParams.x;
  u_xlat51 = (x_1422 * x_1425);
  let x_1427 : f32 = u_xlat51;
  let x_1428 : f32 = u_xlat51;
  u_xlat51 = (x_1427 * -(x_1428));
  let x_1431 : f32 = u_xlat51;
  u_xlat51 = exp2(x_1431);
  let x_1433 : vec4<f32> = u_xlat0;
  let x_1437 : vec4<f32> = x_39.unity_FogColor;
  let x_1440 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) + -(vec3<f32>(x_1437.x, x_1437.y, x_1437.z)));
  let x_1441 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
  let x_1445 : f32 = u_xlat51;
  let x_1447 : vec4<f32> = u_xlat0;
  let x_1451 : vec4<f32> = x_39.unity_FogColor;
  let x_1453 : vec3<f32> = ((vec3<f32>(x_1445, x_1445, x_1445) * vec3<f32>(x_1447.x, x_1447.y, x_1447.z)) + vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
  let x_1454 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
  let x_1457 : f32 = u_xlat5.w;
  SV_Target0.w = x_1457;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @location(1) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

