type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(12) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat11 : vec3<f32>;
  var x_266 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat29 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat10 : f32;
  var u_xlatb27 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat27;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD4;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat28;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_80);
  u_xlat4 = vec3<f32>(x_81.x, x_81.y, x_81.z);
  let x_90 : vec2<f32> = vs_TEXCOORD0;
  let x_91 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_90);
  u_xlat5 = vec2<f32>(x_91.x, x_91.w);
  let x_99 : vec2<f32> = vs_TEXCOORD0;
  let x_100 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_99);
  u_xlat6 = vec3<f32>(x_100.x, x_100.y, x_100.w);
  let x_104 : f32 = u_xlat6.z;
  let x_107 : f32 = u_xlat6.x;
  u_xlat6.x = (x_104 * x_107);
  let x_110 : vec3<f32> = u_xlat6;
  let x_117 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_118 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_117.x, x_117.y, x_118.z);
  let x_120 : vec3<f32> = u_xlat6;
  let x_122 : vec3<f32> = u_xlat6;
  u_xlat28 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat28;
  u_xlat28 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat28;
  u_xlat28 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat28;
  u_xlat6.z = sqrt(x_131);
  let x_135 : vec3<f32> = vs_TEXCOORD4;
  let x_140 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_135.y, x_135.y, x_135.y, x_135.y) * x_140);
  let x_143 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_144 : vec3<f32> = vs_TEXCOORD4;
  let x_147 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_143 * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + x_147);
  let x_150 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_151 : vec3<f32> = vs_TEXCOORD4;
  let x_154 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat7;
  let x_159 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat7 = (x_156 + x_159);
  let x_165 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat8.x = x_165;
  let x_168 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat8.y = x_168;
  let x_172 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat8.z = x_172;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec3<f32> = vs_TEXCOORD4;
  let x_182 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_185 : vec3<f32> = (x_179 + -(vec3<f32>(x_182.x, x_182.y, x_182.z)));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_195);
  let x_198 : f32 = u_xlat28;
  let x_201 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_198) + x_201);
  let x_206 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_208 : f32 = u_xlat2.x;
  let x_210 : f32 = u_xlat28;
  u_xlat28 = ((x_206 * x_208) + x_210);
  let x_212 : f32 = u_xlat28;
  let x_215 : f32 = x_21.x_LightShadowData.z;
  let x_218 : f32 = x_21.x_LightShadowData.w;
  u_xlat28 = ((x_212 * x_215) + x_218);
  let x_220 : f32 = u_xlat28;
  u_xlat28 = clamp(x_220, 0.0f, 1.0f);
  let x_228 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_228 == 1.0f);
  let x_230 : bool = u_xlatb2;
  if (x_230) {
    let x_234 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_234 == 1.0f);
    let x_237 : vec3<f32> = vs_TEXCOORD4;
    let x_241 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_237.y, x_237.y, x_237.y) * vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_245 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_247 : vec3<f32> = vs_TEXCOORD4;
    let x_250 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.x, x_247.x)) + x_250);
    let x_253 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_255 : vec3<f32> = vs_TEXCOORD4;
    let x_258 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255.z, x_255.z, x_255.z)) + x_258);
    let x_260 : vec3<f32> = u_xlat11;
    let x_262 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_260 + vec3<f32>(x_262.x, x_262.y, x_262.z));
    let x_265 : bool = u_xlatb2;
    if (x_265) {
      let x_269 : vec3<f32> = u_xlat11;
      x_266 = x_269;
    } else {
      let x_271 : vec3<f32> = vs_TEXCOORD4;
      x_266 = x_271;
    }
    let x_272 : vec3<f32> = x_266;
    let x_273 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat2;
    let x_279 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_281 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) + -(x_279));
    let x_282 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat2;
    let x_288 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) * x_288);
    let x_290 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_290.x, x_289.x, x_289.y, x_289.z);
    let x_293 : f32 = u_xlat2.y;
    u_xlat11.x = ((x_293 * 0.25f) + 0.75f);
    let x_301 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat30 = ((x_301 * 0.5f) + 0.75f);
    let x_306 : f32 = u_xlat11.x;
    let x_307 : f32 = u_xlat30;
    u_xlat2.x = max(x_306, x_307);
    let x_318 : vec4<f32> = u_xlat2;
    let x_320 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_318.x, x_318.z, x_318.w));
    u_xlat2 = x_320;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_326 : vec4<f32> = u_xlat2;
  let x_328 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_326, x_328);
  let x_332 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_332, 0.0f, 1.0f);
  let x_335 : vec3<f32> = vs_TEXCOORD4;
  let x_339 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat8 = (vec4<f32>(x_335.y, x_335.y, x_335.y, x_335.y) * x_339);
  let x_342 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_343 : vec3<f32> = vs_TEXCOORD4;
  let x_346 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_342 * vec4<f32>(x_343.x, x_343.x, x_343.x, x_343.x)) + x_346);
  let x_349 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_350 : vec3<f32> = vs_TEXCOORD4;
  let x_353 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_349 * vec4<f32>(x_350.z, x_350.z, x_350.z, x_350.z)) + x_353);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat8 = (x_355 + x_357);
  let x_359 : vec4<f32> = u_xlat8;
  let x_361 : vec4<f32> = u_xlat8;
  u_xlat11 = (vec3<f32>(x_359.x, x_359.y, x_359.z) / vec3<f32>(x_361.w, x_361.w, x_361.w));
  let x_365 : vec3<f32> = u_xlat11;
  let x_366 : vec2<f32> = vec2<f32>(x_365.x, x_365.y);
  let x_368 : f32 = u_xlat11.z;
  txVec0 = vec3<f32>(x_366.x, x_366.y, x_368);
  let x_380 : vec3<f32> = txVec0;
  let x_382 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_380.xy, x_380.z);
  u_xlat11.x = x_382;
  let x_386 : f32 = x_21.x_LightShadowData.x;
  u_xlat20 = (-(x_386) + 1.0f);
  let x_390 : f32 = u_xlat11.x;
  let x_391 : f32 = u_xlat20;
  let x_394 : f32 = x_21.x_LightShadowData.x;
  u_xlat11.x = ((x_390 * x_391) + x_394);
  let x_398 : f32 = u_xlat11.x;
  let x_401 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_398) + x_401);
  let x_404 : f32 = u_xlat28;
  let x_406 : f32 = u_xlat2.x;
  let x_409 : f32 = u_xlat11.x;
  u_xlat28 = ((x_404 * x_406) + x_409);
  let x_412 : f32 = u_xlat7.z;
  u_xlatb2 = (0.0f < x_412);
  let x_414 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_414);
  let x_417 : vec4<f32> = u_xlat7;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec2<f32> = (vec2<f32>(x_417.x, x_417.y) / vec2<f32>(x_419.w, x_419.w));
  let x_422 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_421.x, x_421.y, x_422.z);
  let x_424 : vec3<f32> = u_xlat11;
  let x_427 : vec2<f32> = (vec2<f32>(x_424.x, x_424.y) + vec2<f32>(0.5f, 0.5f));
  let x_428 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_427.x, x_427.y, x_428.z);
  let x_435 : vec3<f32> = u_xlat11;
  let x_437 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_435.x, x_435.y));
  u_xlat11.x = x_437.w;
  let x_441 : f32 = u_xlat11.x;
  let x_443 : f32 = u_xlat2.x;
  u_xlat2.x = (x_441 * x_443);
  let x_446 : vec4<f32> = u_xlat7;
  let x_448 : vec4<f32> = u_xlat7;
  u_xlat11.x = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_457 : vec3<f32> = u_xlat11;
  let x_459 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_457.x, x_457.x));
  u_xlat11.x = x_459.x;
  let x_463 : f32 = u_xlat11.x;
  let x_465 : f32 = u_xlat2.x;
  u_xlat2.x = (x_463 * x_465);
  let x_468 : f32 = u_xlat28;
  let x_470 : f32 = u_xlat2.x;
  u_xlat28 = (x_468 * x_470);
  let x_473 : vec3<f32> = vs_TEXCOORD1;
  let x_474 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_473, x_474);
  let x_478 : vec3<f32> = vs_TEXCOORD2;
  let x_479 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_478, x_479);
  let x_483 : vec3<f32> = vs_TEXCOORD3;
  let x_484 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_483, x_484);
  let x_488 : vec4<f32> = u_xlat2;
  let x_490 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_488.x, x_488.y, x_488.z), vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_493);
  let x_495 : f32 = u_xlat29;
  let x_497 : vec4<f32> = u_xlat2;
  let x_499 : vec3<f32> = (vec3<f32>(x_495, x_495, x_495) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : f32 = u_xlat28;
  let x_506 : vec4<f32> = x_21.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_502, x_502, x_502) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec3<f32> = u_xlat4;
  let x_512 : vec3<f32> = (x_509 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec2<f32> = u_xlat5;
  let x_517 : vec4<f32> = u_xlat7;
  let x_522 : vec3<f32> = ((vec3<f32>(x_515.x, x_515.x, x_515.x) * vec3<f32>(x_517.x, x_517.y, x_517.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_523 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_526 : f32 = u_xlat5.x;
  u_xlat28 = ((-(x_526) * 0.959999979f) + 0.959999979f);
  let x_531 : f32 = u_xlat28;
  let x_533 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_531, x_531, x_531) * x_533);
  let x_536 : f32 = u_xlat5.y;
  u_xlat28 = (-(x_536) + 1.0f);
  let x_539 : vec3<f32> = u_xlat0;
  let x_540 : f32 = u_xlat27;
  let x_543 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_539 * vec3<f32>(x_540, x_540, x_540)) + x_543);
  let x_545 : vec3<f32> = u_xlat0;
  let x_546 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_545, x_546);
  let x_548 : f32 = u_xlat27;
  u_xlat27 = max(x_548, 0.001f);
  let x_551 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_551);
  let x_553 : f32 = u_xlat27;
  let x_555 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_553, x_553, x_553) * x_555);
  let x_557 : vec4<f32> = u_xlat2;
  let x_559 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_557.x, x_557.y, x_557.z), x_559);
  let x_561 : vec4<f32> = u_xlat2;
  let x_563 : vec3<f32> = u_xlat1;
  u_xlat29 = dot(vec3<f32>(x_561.x, x_561.y, x_561.z), x_563);
  let x_565 : f32 = u_xlat29;
  u_xlat29 = clamp(x_565, 0.0f, 1.0f);
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_567.x, x_567.y, x_567.z), x_569);
  let x_573 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_573, 0.0f, 1.0f);
  let x_576 : vec3<f32> = u_xlat1;
  let x_577 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_576, x_577);
  let x_581 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_581, 0.0f, 1.0f);
  let x_586 : f32 = u_xlat0.x;
  let x_588 : f32 = u_xlat0.x;
  u_xlat9.x = (x_586 * x_588);
  let x_591 : vec3<f32> = u_xlat9;
  let x_593 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_591.x, x_591.x), vec2<f32>(x_593, x_593));
  let x_598 : f32 = u_xlat9.x;
  u_xlat9.x = (x_598 + -0.5f);
  let x_603 : f32 = u_xlat29;
  u_xlat18 = (-(x_603) + 1.0f);
  let x_606 : f32 = u_xlat18;
  let x_607 : f32 = u_xlat18;
  u_xlat1.x = (x_606 * x_607);
  let x_611 : f32 = u_xlat1.x;
  let x_613 : f32 = u_xlat1.x;
  u_xlat1.x = (x_611 * x_613);
  let x_616 : f32 = u_xlat18;
  let x_618 : f32 = u_xlat1.x;
  u_xlat18 = (x_616 * x_618);
  let x_621 : f32 = u_xlat9.x;
  let x_622 : f32 = u_xlat18;
  u_xlat18 = ((x_621 * x_622) + 1.0f);
  let x_625 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_625)) + 1.0f);
  let x_632 : f32 = u_xlat1.x;
  let x_634 : f32 = u_xlat1.x;
  u_xlat10 = (x_632 * x_634);
  let x_636 : f32 = u_xlat10;
  let x_637 : f32 = u_xlat10;
  u_xlat10 = (x_636 * x_637);
  let x_640 : f32 = u_xlat1.x;
  let x_641 : f32 = u_xlat10;
  u_xlat1.x = (x_640 * x_641);
  let x_645 : f32 = u_xlat9.x;
  let x_647 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_645 * x_647) + 1.0f);
  let x_652 : f32 = u_xlat9.x;
  let x_653 : f32 = u_xlat18;
  u_xlat9.x = (x_652 * x_653);
  let x_656 : f32 = u_xlat28;
  let x_657 : f32 = u_xlat28;
  u_xlat18 = (x_656 * x_657);
  let x_659 : f32 = u_xlat18;
  u_xlat18 = max(x_659, 0.002f);
  let x_662 : f32 = u_xlat18;
  u_xlat1.x = (-(x_662) + 1.0f);
  let x_666 : f32 = u_xlat27;
  let x_669 : f32 = u_xlat1.x;
  let x_671 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_666) * x_669) + x_671);
  let x_673 : f32 = u_xlat29;
  let x_675 : f32 = u_xlat1.x;
  let x_677 : f32 = u_xlat18;
  u_xlat1.x = ((x_673 * x_675) + x_677);
  let x_680 : f32 = u_xlat27;
  let x_683 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_680) * x_683);
  let x_685 : f32 = u_xlat29;
  let x_686 : f32 = u_xlat10;
  let x_688 : f32 = u_xlat27;
  u_xlat27 = ((x_685 * x_686) + x_688);
  let x_690 : f32 = u_xlat27;
  u_xlat27 = (x_690 + 0.00001f);
  let x_693 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_693);
  let x_695 : f32 = u_xlat18;
  let x_696 : f32 = u_xlat18;
  u_xlat18 = (x_695 * x_696);
  let x_699 : f32 = u_xlat2.x;
  let x_700 : f32 = u_xlat18;
  let x_703 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_699 * x_700) + -(x_703));
  let x_708 : f32 = u_xlat1.x;
  let x_710 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_708 * x_710) + 1.0f);
  let x_714 : f32 = u_xlat18;
  u_xlat18 = (x_714 * 0.318309873f);
  let x_718 : f32 = u_xlat1.x;
  let x_720 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_718 * x_720) + 0.0000001f);
  let x_725 : f32 = u_xlat18;
  let x_727 : f32 = u_xlat1.x;
  u_xlat18 = (x_725 / x_727);
  let x_729 : f32 = u_xlat18;
  let x_730 : f32 = u_xlat27;
  u_xlat9.y = (x_729 * x_730);
  let x_733 : f32 = u_xlat29;
  let x_735 : vec3<f32> = u_xlat9;
  let x_737 : vec2<f32> = (vec2<f32>(x_733, x_733) * vec2<f32>(x_735.x, x_735.y));
  let x_738 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_737.x, x_737.y, x_738.z);
  let x_741 : f32 = u_xlat9.y;
  u_xlat18 = (x_741 * 3.141592741f);
  let x_744 : f32 = u_xlat18;
  u_xlat18 = max(x_744, 0.0f);
  let x_746 : vec4<f32> = u_xlat7;
  let x_748 : vec4<f32> = u_xlat7;
  u_xlat27 = dot(vec3<f32>(x_746.x, x_746.y, x_746.z), vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_752 : f32 = u_xlat27;
  u_xlatb27 = !((x_752 == 0.0f));
  let x_754 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_754);
  let x_756 : f32 = u_xlat27;
  let x_757 : f32 = u_xlat18;
  u_xlat18 = (x_756 * x_757);
  let x_759 : vec3<f32> = u_xlat9;
  let x_761 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_759.x, x_759.x, x_759.x) * x_761);
  let x_763 : vec3<f32> = u_xlat6;
  let x_764 : f32 = u_xlat18;
  u_xlat9 = (x_763 * vec3<f32>(x_764, x_764, x_764));
  let x_768 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_768) + 1.0f);
  let x_773 : f32 = u_xlat0.x;
  let x_775 : f32 = u_xlat0.x;
  u_xlat28 = (x_773 * x_775);
  let x_777 : f32 = u_xlat28;
  let x_778 : f32 = u_xlat28;
  u_xlat28 = (x_777 * x_778);
  let x_781 : f32 = u_xlat0.x;
  let x_782 : f32 = u_xlat28;
  u_xlat0.x = (x_781 * x_782);
  let x_785 : vec4<f32> = u_xlat7;
  let x_789 : vec3<f32> = (-(vec3<f32>(x_785.x, x_785.y, x_785.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_790 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_792 : vec4<f32> = u_xlat2;
  let x_794 : vec3<f32> = u_xlat0;
  let x_797 : vec4<f32> = u_xlat7;
  let x_799 : vec3<f32> = ((vec3<f32>(x_792.x, x_792.y, x_792.z) * vec3<f32>(x_794.x, x_794.x, x_794.x)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec3<f32> = u_xlat9;
  let x_803 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_802 * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec3<f32> = u_xlat4;
  let x_807 : vec3<f32> = u_xlat1;
  let x_809 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_806 * x_807) + x_809);
  let x_813 : f32 = vs_TEXCOORD7;
  let x_815 : f32 = x_21.x_ProjectionParams.y;
  u_xlat27 = (x_813 / x_815);
  let x_817 : f32 = u_xlat27;
  u_xlat27 = (-(x_817) + 1.0f);
  let x_820 : f32 = u_xlat27;
  let x_822 : f32 = x_21.x_ProjectionParams.z;
  u_xlat27 = (x_820 * x_822);
  let x_824 : f32 = u_xlat27;
  u_xlat27 = max(x_824, 0.0f);
  let x_826 : f32 = u_xlat27;
  let x_829 : f32 = x_21.unity_FogParams.x;
  u_xlat27 = (x_826 * x_829);
  let x_831 : f32 = u_xlat27;
  let x_832 : f32 = u_xlat27;
  u_xlat27 = (x_831 * -(x_832));
  let x_835 : f32 = u_xlat27;
  u_xlat27 = exp2(x_835);
  let x_839 : vec3<f32> = u_xlat0;
  let x_840 : f32 = u_xlat27;
  let x_842 : vec3<f32> = (x_839 * vec3<f32>(x_840, x_840, x_840));
  let x_843 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD7_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

