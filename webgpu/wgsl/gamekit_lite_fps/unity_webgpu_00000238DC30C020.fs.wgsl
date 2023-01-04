struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat30 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat32 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlat33 : f32;

var<private> u_xlatb31 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat35 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb12 : bool;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

@group(0) @binding(6) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_355 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat30;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat31;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_76 : vec4<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_76.x, x_76.y));
  u_xlat31 = x_78.x;
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_88.z, x_88.w));
  let x_91 : vec2<f32> = vec2<f32>(x_90.x, x_90.w);
  let x_92 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_91.x, x_91.y, x_92.z, x_92.w);
  let x_94 : f32 = u_xlat31;
  u_xlat31 = (-(x_94) + 1.0f);
  let x_98 : f32 = u_xlat31;
  let x_102 : f32 = x_18.x_Cutoff;
  u_xlat31 = (x_98 + -(x_102));
  let x_108 : f32 = x_18.x_EdgeSize;
  u_xlat32 = (1.0f / -(x_108));
  let x_111 : f32 = u_xlat31;
  let x_112 : f32 = u_xlat32;
  u_xlat31 = (x_111 * x_112);
  let x_114 : f32 = u_xlat31;
  u_xlat31 = clamp(x_114, 0.0f, 1.0f);
  let x_117 : f32 = u_xlat31;
  u_xlat32 = ((x_117 * -2.0f) + 3.0f);
  let x_122 : f32 = u_xlat31;
  let x_123 : f32 = u_xlat31;
  u_xlat31 = (x_122 * x_123);
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  let x_133 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_131.z, x_131.w));
  u_xlat5 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  let x_136 : vec3<f32> = u_xlat5;
  let x_139 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (x_136 * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_148 : vec4<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_148.z, x_148.w));
  u_xlat7 = vec3<f32>(x_150.x, x_150.y, x_150.w);
  let x_154 : f32 = u_xlat7.z;
  let x_156 : f32 = u_xlat7.x;
  u_xlat7.x = (x_154 * x_156);
  let x_159 : vec3<f32> = u_xlat7;
  let x_166 : vec2<f32> = ((vec2<f32>(x_159.x, x_159.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_167 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_166.x, x_166.y, x_167.z);
  let x_170 : vec3<f32> = u_xlat7;
  let x_172 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec2<f32>(x_170.x, x_170.y), vec2<f32>(x_172.x, x_172.y));
  let x_175 : f32 = u_xlat33;
  u_xlat33 = min(x_175, 1.0f);
  let x_177 : f32 = u_xlat33;
  u_xlat33 = (-(x_177) + 1.0f);
  let x_180 : f32 = u_xlat33;
  u_xlat7.z = sqrt(x_180);
  let x_184 : f32 = u_xlat4.x;
  let x_187 : f32 = x_18.x_Metallic;
  u_xlat33 = (x_184 * x_187);
  let x_189 : f32 = u_xlat32;
  let x_191 : f32 = u_xlat31;
  let x_194 : f32 = x_18.x_Cutoff;
  u_xlat31 = ((-(x_189) * x_191) + -(x_194));
  let x_197 : f32 = u_xlat31;
  u_xlat31 = (x_197 + 1.0f);
  let x_202 : f32 = u_xlat31;
  u_xlatb31 = (x_202 < 0.0f);
  let x_204 : bool = u_xlatb31;
  if (((select(0i, 1i, x_204) * -1i) != 0i)) {
    discard;
  }
  let x_212 : vec3<f32> = vs_TEXCOORD4;
  let x_216 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_218 : vec3<f32> = (vec3<f32>(x_212.y, x_212.y, x_212.y) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_219.y, x_218.y, x_218.z);
  let x_222 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_224 : vec3<f32> = vs_TEXCOORD4;
  let x_227 : vec4<f32> = u_xlat4;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.x, x_224.x, x_224.x)) + vec3<f32>(x_227.x, x_227.z, x_227.w));
  let x_230 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_229.x, x_230.y, x_229.y, x_229.z);
  let x_234 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_236 : vec3<f32> = vs_TEXCOORD4;
  let x_239 : vec4<f32> = u_xlat4;
  let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.z, x_236.z, x_236.z)) + vec3<f32>(x_239.x, x_239.z, x_239.w));
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_241.x, x_242.y, x_241.y, x_241.z);
  let x_244 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_250 : vec3<f32> = (vec3<f32>(x_244.x, x_244.z, x_244.w) + vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_250.x, x_251.y, x_250.y, x_250.z);
  let x_256 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_256;
  let x_259 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_259;
  let x_263 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_263;
  let x_265 : vec4<f32> = u_xlat2;
  let x_267 : vec4<f32> = u_xlat8;
  u_xlat31 = dot(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec3<f32> = vs_TEXCOORD4;
  let x_273 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_276 : vec3<f32> = (x_270 + -(vec3<f32>(x_273.x, x_273.y, x_273.z)));
  let x_277 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_286 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_286);
  let x_289 : f32 = u_xlat31;
  let x_292 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_289) + x_292);
  let x_297 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_299 : f32 = u_xlat2.x;
  let x_301 : f32 = u_xlat31;
  u_xlat31 = ((x_297 * x_299) + x_301);
  let x_303 : f32 = u_xlat31;
  let x_306 : f32 = x_18.x_LightShadowData.z;
  let x_309 : f32 = x_18.x_LightShadowData.w;
  u_xlat31 = ((x_303 * x_306) + x_309);
  let x_311 : f32 = u_xlat31;
  u_xlat31 = clamp(x_311, 0.0f, 1.0f);
  let x_316 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_316 == 1.0f);
  let x_318 : bool = u_xlatb2;
  if (x_318) {
    let x_322 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_322 == 1.0f);
    let x_325 : vec3<f32> = vs_TEXCOORD4;
    let x_329 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_325.y, x_325.y, x_325.y) * vec3<f32>(x_329.x, x_329.y, x_329.z));
    let x_333 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_335 : vec3<f32> = vs_TEXCOORD4;
    let x_338 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.x, x_335.x)) + x_338);
    let x_341 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_343 : vec3<f32> = vs_TEXCOORD4;
    let x_346 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_343.z, x_343.z, x_343.z)) + x_346);
    let x_348 : vec3<f32> = u_xlat12;
    let x_350 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_348 + vec3<f32>(x_350.x, x_350.y, x_350.z));
    let x_353 : bool = u_xlatb2;
    if (x_353) {
      let x_358 : vec3<f32> = u_xlat12;
      x_355 = x_358;
    } else {
      let x_360 : vec3<f32> = vs_TEXCOORD4;
      x_355 = x_360;
    }
    let x_361 : vec3<f32> = x_355;
    let x_362 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
    let x_364 : vec4<f32> = u_xlat2;
    let x_368 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_370 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) + -(x_368));
    let x_371 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
    let x_373 : vec4<f32> = u_xlat2;
    let x_377 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_378 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) * x_377);
    let x_379 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_379.x, x_378.x, x_378.y, x_378.z);
    let x_382 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_382 * 0.25f) + 0.75f);
    let x_390 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat35 = ((x_390 * 0.5f) + 0.75f);
    let x_395 : f32 = u_xlat12.x;
    let x_396 : f32 = u_xlat35;
    u_xlat2.x = max(x_395, x_396);
    let x_407 : vec4<f32> = u_xlat2;
    let x_409 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_407.x, x_407.z, x_407.w));
    u_xlat2 = x_409;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_415 : vec4<f32> = u_xlat2;
  let x_418 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_415, x_418);
  let x_422 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_422, 0.0f, 1.0f);
  let x_426 : f32 = u_xlat31;
  u_xlatb12 = (x_426 < 0.99000001f);
  let x_429 : bool = u_xlatb12;
  if (x_429) {
    let x_432 : vec3<f32> = vs_TEXCOORD4;
    let x_434 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat12 = (x_432 + -(vec3<f32>(x_434.x, x_434.y, x_434.z)));
    let x_439 : f32 = u_xlat12.y;
    let x_442 : f32 = u_xlat12.x;
    u_xlat35 = max(abs(x_439), abs(x_442));
    let x_446 : f32 = u_xlat12.z;
    let x_448 : f32 = u_xlat35;
    u_xlat35 = max(abs(x_446), x_448);
    let x_450 : f32 = u_xlat35;
    let x_452 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat35 = (x_450 + -(x_452));
    let x_455 : f32 = u_xlat35;
    u_xlat35 = max(x_455, 0.00001f);
    let x_458 : f32 = u_xlat35;
    let x_460 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat35 = (x_458 * x_460);
    let x_463 : f32 = x_18.x_LightProjectionParams.y;
    let x_464 : f32 = u_xlat35;
    u_xlat35 = (x_463 / x_464);
    let x_466 : f32 = u_xlat35;
    let x_468 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat35 = (x_466 + -(x_468));
    let x_471 : f32 = u_xlat35;
    u_xlat35 = (-(x_471) + 1.0f);
    let x_474 : vec3<f32> = u_xlat12;
    let x_477 : vec3<f32> = (x_474 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_478 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_482 : vec4<f32> = u_xlat8;
    let x_483 : vec3<f32> = vec3<f32>(x_482.x, x_482.y, x_482.z);
    let x_484 : f32 = u_xlat35;
    txVec0 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484);
    let x_497 : vec4<f32> = txVec0;
    let x_499 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_497.xyz, x_497.w);
    u_xlat8.x = x_499;
    let x_502 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_502 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_507 : vec3<f32> = u_xlat9;
    let x_508 : f32 = u_xlat35;
    txVec1 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508);
    let x_516 : vec4<f32> = txVec1;
    let x_518 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_516.xyz, x_516.w);
    u_xlat8.y = x_518;
    let x_520 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_520 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_524 : vec3<f32> = u_xlat9;
    let x_525 : f32 = u_xlat35;
    txVec2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525);
    let x_533 : vec4<f32> = txVec2;
    let x_535 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_533.xyz, x_533.w);
    u_xlat8.z = x_535;
    let x_537 : vec3<f32> = u_xlat12;
    u_xlat12 = (x_537 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_541 : vec3<f32> = u_xlat12;
    let x_542 : f32 = u_xlat35;
    txVec3 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542);
    let x_550 : vec4<f32> = txVec3;
    let x_552 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_550.xyz, x_550.w);
    u_xlat8.w = x_552;
    let x_554 : vec4<f32> = u_xlat8;
    u_xlat12.x = dot(x_554, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_560 : f32 = x_18.x_LightShadowData.x;
    u_xlat22 = (-(x_560) + 1.0f);
    let x_564 : f32 = u_xlat12.x;
    let x_565 : f32 = u_xlat22;
    let x_568 : f32 = x_18.x_LightShadowData.x;
    u_xlat12.x = ((x_564 * x_565) + x_568);
  } else {
    u_xlat12.x = 1.0f;
  }
  let x_574 : f32 = u_xlat12.x;
  let x_577 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_574) + x_577);
  let x_580 : f32 = u_xlat31;
  let x_582 : f32 = u_xlat2.x;
  let x_585 : f32 = u_xlat12.x;
  u_xlat31 = ((x_580 * x_582) + x_585);
  let x_587 : vec4<f32> = u_xlat4;
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_587.x, x_587.z, x_587.w), vec3<f32>(x_589.x, x_589.z, x_589.w));
  let x_598 : vec4<f32> = u_xlat2;
  let x_600 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_598.x, x_598.x));
  u_xlat2.x = x_600.x;
  let x_611 : vec4<f32> = u_xlat4;
  let x_613 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_611.x, x_611.z, x_611.w));
  u_xlat12.x = x_613.w;
  let x_617 : f32 = u_xlat12.x;
  let x_619 : f32 = u_xlat2.x;
  u_xlat2.x = (x_617 * x_619);
  let x_622 : f32 = u_xlat31;
  let x_624 : f32 = u_xlat2.x;
  u_xlat31 = (x_622 * x_624);
  let x_627 : vec3<f32> = vs_TEXCOORD1;
  let x_628 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_627, x_628);
  let x_632 : vec3<f32> = vs_TEXCOORD2;
  let x_633 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_632, x_633);
  let x_637 : vec3<f32> = vs_TEXCOORD3;
  let x_638 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_637, x_638);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat32;
  let x_650 : vec4<f32> = u_xlat2;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : f32 = u_xlat31;
  let x_659 : vec4<f32> = x_18.x_LightColor0;
  let x_661 : vec3<f32> = (vec3<f32>(x_655, x_655, x_655) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_661.x, x_662.y, x_661.y, x_661.z);
  let x_664 : vec3<f32> = u_xlat5;
  let x_666 : vec4<f32> = x_18.x_Color;
  u_xlat5 = ((x_664 * vec3<f32>(x_666.x, x_666.y, x_666.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_672 : f32 = u_xlat33;
  let x_674 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_672, x_672, x_672) * x_674) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_679 : f32 = u_xlat33;
  u_xlat31 = ((-(x_679) * 0.959999979f) + 0.959999979f);
  let x_684 : f32 = u_xlat31;
  let x_686 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_684, x_684, x_684) * x_686);
  let x_689 : f32 = u_xlat4.y;
  let x_693 : f32 = x_18.x_Glossiness;
  u_xlat31 = ((-(x_689) * x_693) + 1.0f);
  let x_696 : vec3<f32> = u_xlat0;
  let x_697 : f32 = u_xlat30;
  let x_700 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_696 * vec3<f32>(x_697, x_697, x_697)) + x_700);
  let x_702 : vec3<f32> = u_xlat0;
  let x_703 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_702, x_703);
  let x_705 : f32 = u_xlat30;
  u_xlat30 = max(x_705, 0.001f);
  let x_708 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_708);
  let x_710 : f32 = u_xlat30;
  let x_712 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_710, x_710, x_710) * x_712);
  let x_714 : vec4<f32> = u_xlat2;
  let x_716 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_714.x, x_714.y, x_714.z), x_716);
  let x_718 : vec4<f32> = u_xlat2;
  let x_720 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), x_720);
  let x_722 : f32 = u_xlat32;
  u_xlat32 = clamp(x_722, 0.0f, 1.0f);
  let x_724 : vec4<f32> = u_xlat2;
  let x_726 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_724.x, x_724.y, x_724.z), x_726);
  let x_730 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_730, 0.0f, 1.0f);
  let x_733 : vec3<f32> = u_xlat1;
  let x_734 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_733, x_734);
  let x_738 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_738, 0.0f, 1.0f);
  let x_743 : f32 = u_xlat0.x;
  let x_745 : f32 = u_xlat0.x;
  u_xlat10.x = (x_743 * x_745);
  let x_748 : vec3<f32> = u_xlat10;
  let x_750 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_748.x, x_748.x), vec2<f32>(x_750, x_750));
  let x_755 : f32 = u_xlat10.x;
  u_xlat10.x = (x_755 + -0.5f);
  let x_760 : f32 = u_xlat32;
  u_xlat20 = (-(x_760) + 1.0f);
  let x_763 : f32 = u_xlat20;
  let x_764 : f32 = u_xlat20;
  u_xlat1.x = (x_763 * x_764);
  let x_768 : f32 = u_xlat1.x;
  let x_770 : f32 = u_xlat1.x;
  u_xlat1.x = (x_768 * x_770);
  let x_773 : f32 = u_xlat20;
  let x_775 : f32 = u_xlat1.x;
  u_xlat20 = (x_773 * x_775);
  let x_778 : f32 = u_xlat10.x;
  let x_779 : f32 = u_xlat20;
  u_xlat20 = ((x_778 * x_779) + 1.0f);
  let x_782 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_782)) + 1.0f);
  let x_789 : f32 = u_xlat1.x;
  let x_791 : f32 = u_xlat1.x;
  u_xlat11 = (x_789 * x_791);
  let x_793 : f32 = u_xlat11;
  let x_794 : f32 = u_xlat11;
  u_xlat11 = (x_793 * x_794);
  let x_797 : f32 = u_xlat1.x;
  let x_798 : f32 = u_xlat11;
  u_xlat1.x = (x_797 * x_798);
  let x_802 : f32 = u_xlat10.x;
  let x_804 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_802 * x_804) + 1.0f);
  let x_809 : f32 = u_xlat10.x;
  let x_810 : f32 = u_xlat20;
  u_xlat10.x = (x_809 * x_810);
  let x_813 : f32 = u_xlat31;
  let x_814 : f32 = u_xlat31;
  u_xlat20 = (x_813 * x_814);
  let x_816 : f32 = u_xlat20;
  u_xlat20 = max(x_816, 0.002f);
  let x_819 : f32 = u_xlat20;
  u_xlat1.x = (-(x_819) + 1.0f);
  let x_823 : f32 = u_xlat30;
  let x_826 : f32 = u_xlat1.x;
  let x_828 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_823) * x_826) + x_828);
  let x_830 : f32 = u_xlat32;
  let x_832 : f32 = u_xlat1.x;
  let x_834 : f32 = u_xlat20;
  u_xlat1.x = ((x_830 * x_832) + x_834);
  let x_837 : f32 = u_xlat30;
  let x_840 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_837) * x_840);
  let x_842 : f32 = u_xlat32;
  let x_843 : f32 = u_xlat11;
  let x_845 : f32 = u_xlat30;
  u_xlat30 = ((x_842 * x_843) + x_845);
  let x_847 : f32 = u_xlat30;
  u_xlat30 = (x_847 + 0.00001f);
  let x_849 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_849);
  let x_851 : f32 = u_xlat20;
  let x_852 : f32 = u_xlat20;
  u_xlat20 = (x_851 * x_852);
  let x_855 : f32 = u_xlat2.x;
  let x_856 : f32 = u_xlat20;
  let x_859 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_855 * x_856) + -(x_859));
  let x_864 : f32 = u_xlat1.x;
  let x_866 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_864 * x_866) + 1.0f);
  let x_870 : f32 = u_xlat20;
  u_xlat20 = (x_870 * 0.318309873f);
  let x_874 : f32 = u_xlat1.x;
  let x_876 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_874 * x_876) + 0.0000001f);
  let x_881 : f32 = u_xlat20;
  let x_883 : f32 = u_xlat1.x;
  u_xlat20 = (x_881 / x_883);
  let x_885 : f32 = u_xlat20;
  let x_886 : f32 = u_xlat30;
  u_xlat10.y = (x_885 * x_886);
  let x_889 : f32 = u_xlat32;
  let x_891 : vec3<f32> = u_xlat10;
  let x_893 : vec2<f32> = (vec2<f32>(x_889, x_889) * vec2<f32>(x_891.x, x_891.y));
  let x_894 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_893.x, x_893.y, x_894.z);
  let x_897 : f32 = u_xlat10.y;
  u_xlat20 = (x_897 * 3.141592741f);
  let x_900 : f32 = u_xlat20;
  u_xlat20 = max(x_900, 0.0f);
  let x_902 : vec3<f32> = u_xlat5;
  let x_903 : vec3<f32> = u_xlat5;
  u_xlat30 = dot(x_902, x_903);
  let x_906 : f32 = u_xlat30;
  u_xlatb30 = !((x_906 == 0.0f));
  let x_908 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_908);
  let x_910 : f32 = u_xlat30;
  let x_911 : f32 = u_xlat20;
  u_xlat20 = (x_910 * x_911);
  let x_913 : vec3<f32> = u_xlat10;
  let x_915 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_913.x, x_913.x, x_913.x) * vec3<f32>(x_915.x, x_915.z, x_915.w));
  let x_918 : vec4<f32> = u_xlat4;
  let x_920 : f32 = u_xlat20;
  u_xlat10 = (vec3<f32>(x_918.x, x_918.z, x_918.w) * vec3<f32>(x_920, x_920, x_920));
  let x_924 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_924) + 1.0f);
  let x_929 : f32 = u_xlat0.x;
  let x_931 : f32 = u_xlat0.x;
  u_xlat31 = (x_929 * x_931);
  let x_933 : f32 = u_xlat31;
  let x_934 : f32 = u_xlat31;
  u_xlat31 = (x_933 * x_934);
  let x_937 : f32 = u_xlat0.x;
  let x_938 : f32 = u_xlat31;
  u_xlat0.x = (x_937 * x_938);
  let x_941 : vec3<f32> = u_xlat5;
  let x_944 : vec3<f32> = (-(x_941) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec4<f32> = u_xlat2;
  let x_949 : vec3<f32> = u_xlat0;
  let x_952 : vec3<f32> = u_xlat5;
  let x_953 : vec3<f32> = ((vec3<f32>(x_947.x, x_947.y, x_947.z) * vec3<f32>(x_949.x, x_949.x, x_949.x)) + x_952);
  let x_954 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec3<f32> = u_xlat10;
  let x_957 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_956 * vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_962 : vec3<f32> = u_xlat6;
  let x_963 : vec3<f32> = u_xlat1;
  let x_965 : vec3<f32> = u_xlat0;
  let x_966 : vec3<f32> = ((x_962 * x_963) + x_965);
  let x_967 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

