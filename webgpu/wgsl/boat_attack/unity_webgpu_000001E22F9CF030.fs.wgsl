struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_143 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_534 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_694 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlat29 : f32;
  var u_xlatu29 : u32;
  var u_xlati29 : i32;
  var u_xlat30 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlatb21 : bool;
  var x_475 : f32;
  var u_xlat21 : f32;
  var u_xlat32 : f32;
  var u_xlatu5 : u32;
  var u_xlat14 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu15 : u32;
  var u_xlati24 : i32;
  var u_xlat15 : vec3<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati15 : i32;
  var u_xlat7 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat33 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_887 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat10;
  let x_83 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat10;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_107;
  let x_110 : bool = u_xlatb1;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat10;
    x_111 = x_114;
  } else {
    let x_116 : vec3<f32> = u_xlat2;
    x_111 = x_116;
  }
  let x_117 : vec3<f32> = x_111;
  u_xlat1 = x_117;
  let x_120 : vec3<f32> = vs_TEXCOORD2;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_120, x_121);
  let x_123 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_123);
  let x_125 : f32 = u_xlat28;
  let x_127 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_125, x_125, x_125) * x_127);
  let x_129 : vec3<f32> = u_xlat1;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat28;
  u_xlat28 = max(x_132, 1.17549435e-37f);
  let x_135 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_135);
  let x_138 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec4<f32> = x_143.x_CascadeShadowSplitSpheres0;
  let x_148 : vec3<f32> = (x_138 + -(vec3<f32>(x_145.x, x_145.y, x_145.z)));
  let x_149 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_143.x_CascadeShadowSplitSpheres1;
  let x_157 : vec3<f32> = (x_152 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec3<f32> = vs_TEXCOORD1;
  let x_164 : vec4<f32> = x_143.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_161 + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_172 : vec4<f32> = x_143.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_169 + -(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_176 : vec4<f32> = u_xlat3;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_182 : vec4<f32> = u_xlat4;
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec3<f32> = u_xlat5;
  let x_189 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_188, x_189);
  let x_192 : vec3<f32> = u_xlat6;
  let x_193 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_192, x_193);
  let x_199 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = x_143.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_199 < x_202);
  let x_205 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_205);
  let x_209 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_209);
  let x_213 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_213);
  let x_217 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_221);
  let x_227 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_227);
  let x_231 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_231);
  let x_234 : vec4<f32> = u_xlat3;
  let x_236 : vec4<f32> = u_xlat4;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) + vec3<f32>(x_236.y, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat3;
  let x_244 : vec3<f32> = max(vec3<f32>(x_241.x, x_241.y, x_241.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_245.x, x_244.x, x_244.y, x_244.z);
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(x_248, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_254 : f32 = u_xlat29;
  u_xlat29 = (-(x_254) + 4.0f);
  let x_259 : f32 = u_xlat29;
  u_xlatu29 = u32(x_259);
  let x_263 : u32 = u_xlatu29;
  u_xlati29 = (bitcast<i32>(x_263) << bitcast<u32>(2i));
  let x_266 : vec3<f32> = vs_TEXCOORD1;
  let x_268 : i32 = u_xlati29;
  let x_271 : i32 = u_xlati29;
  let x_275 : vec4<f32> = x_143.x_MainLightWorldToShadow[((x_268 + 1i) / 4i)][((x_271 + 1i) % 4i)];
  let x_277 : vec3<f32> = (vec3<f32>(x_266.y, x_266.y, x_266.y) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : i32 = u_xlati29;
  let x_282 : i32 = u_xlati29;
  let x_285 : vec4<f32> = x_143.x_MainLightWorldToShadow[(x_280 / 4i)][(x_282 % 4i)];
  let x_287 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = u_xlat3;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287.x, x_287.x, x_287.x)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : i32 = u_xlati29;
  let x_298 : i32 = u_xlati29;
  let x_302 : vec4<f32> = x_143.x_MainLightWorldToShadow[((x_295 + 2i) / 4i)][((x_298 + 2i) % 4i)];
  let x_304 : vec3<f32> = vs_TEXCOORD1;
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.z, x_304.z, x_304.z)) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : i32 = u_xlati29;
  let x_317 : i32 = u_xlati29;
  let x_321 : vec4<f32> = x_143.x_MainLightWorldToShadow[((x_314 + 3i) / 4i)][((x_317 + 3i) % 4i)];
  let x_323 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : f32 = vs_TEXCOORD1.y;
  let x_329 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat29 = (x_327 * x_329);
  let x_332 : f32 = x_44.unity_MatrixV[0i].z;
  let x_334 : f32 = vs_TEXCOORD1.x;
  let x_336 : f32 = u_xlat29;
  u_xlat29 = ((x_332 * x_334) + x_336);
  let x_339 : f32 = x_44.unity_MatrixV[2i].z;
  let x_341 : f32 = vs_TEXCOORD1.z;
  let x_343 : f32 = u_xlat29;
  u_xlat29 = ((x_339 * x_341) + x_343);
  let x_345 : f32 = u_xlat29;
  let x_347 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat29 = (x_345 + x_347);
  let x_349 : f32 = u_xlat29;
  let x_353 : f32 = x_44.x_ProjectionParams.y;
  u_xlat29 = (-(x_349) + -(x_353));
  let x_356 : f32 = u_xlat29;
  u_xlat29 = max(x_356, 0.0f);
  let x_358 : f32 = u_xlat29;
  let x_361 : f32 = x_44.unity_FogParams.x;
  u_xlat29 = (x_358 * x_361);
  let x_369 : vec2<f32> = vs_TEXCOORD7;
  let x_371 : f32 = x_44.x_GlobalMipBias.x;
  let x_372 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_369, x_371);
  let x_373 : vec3<f32> = vec3<f32>(x_372.x, x_372.y, x_372.z);
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_378 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_379 : vec2<f32> = vec2<f32>(x_378.x, x_378.y);
  let x_383 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_379.x, x_379.y));
  let x_384 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_383.x, x_383.y, x_384.z);
  let x_386 : vec3<f32> = u_xlat5;
  let x_388 : vec4<f32> = hlslcc_FragCoord;
  let x_390 : vec2<f32> = (vec2<f32>(x_386.x, x_386.y) * vec2<f32>(x_388.x, x_388.y));
  let x_391 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_390.x, x_390.y, x_391.z);
  let x_395 : f32 = u_xlat5.y;
  let x_398 : f32 = x_44.x_ScaleBiasRt.x;
  let x_401 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat30 = ((x_395 * x_398) + x_401);
  let x_403 : f32 = u_xlat30;
  u_xlat5.z = (-(x_403) + 1.0f);
  let x_412 : vec3<f32> = u_xlat5;
  let x_415 : f32 = x_44.x_GlobalMipBias.x;
  let x_416 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_412.x, x_412.z), x_415);
  u_xlat30 = x_416.x;
  let x_419 : f32 = u_xlat30;
  u_xlat31 = (x_419 + -1.0f);
  let x_422 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_423 : f32 = u_xlat31;
  u_xlat31 = ((x_422 * x_423) + 1.0f);
  let x_426 : f32 = u_xlat30;
  u_xlat30 = min(x_426, 1.0f);
  let x_429 : vec4<f32> = u_xlat3;
  let x_430 : vec2<f32> = vec2<f32>(x_429.x, x_429.y);
  let x_432 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_430.x, x_430.y, x_432);
  let x_444 : vec3<f32> = txVec0;
  let x_446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_444.xy, x_444.z);
  u_xlat3.x = x_446;
  let x_450 : f32 = x_143.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_450) + 1.0f);
  let x_455 : f32 = u_xlat3.x;
  let x_457 : f32 = x_143.x_MainLightShadowParams.x;
  let x_460 : f32 = u_xlat12.x;
  u_xlat3.x = ((x_455 * x_457) + x_460);
  let x_465 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_465);
  let x_469 : f32 = u_xlat3.z;
  u_xlatb21 = (x_469 >= 1.0f);
  let x_471 : bool = u_xlatb21;
  let x_472 : bool = u_xlatb12;
  u_xlatb12 = (x_471 | x_472);
  let x_474 : bool = u_xlatb12;
  if (x_474) {
    x_475 = 1.0f;
  } else {
    let x_480 : f32 = u_xlat3.x;
    x_475 = x_480;
  }
  let x_481 : f32 = x_475;
  u_xlat3.x = x_481;
  let x_483 : vec3<f32> = vs_TEXCOORD1;
  let x_485 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_483 + -(x_485));
  let x_488 : vec3<f32> = u_xlat5;
  let x_489 : vec3<f32> = u_xlat5;
  u_xlat12.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat12.x;
  let x_495 : f32 = x_143.x_MainLightShadowParams.z;
  let x_498 : f32 = x_143.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_493 * x_495) + x_498);
  let x_502 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_502, 0.0f, 1.0f);
  let x_507 : f32 = u_xlat3.x;
  u_xlat21 = (-(x_507) + 1.0f);
  let x_511 : f32 = u_xlat12.x;
  let x_512 : f32 = u_xlat21;
  let x_515 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_511 * x_512) + x_515);
  let x_518 : f32 = u_xlat31;
  let x_521 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_518, x_518, x_518) * vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : f32 = u_xlat30;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat12 = (vec3<f32>(x_524, x_524, x_524) * vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_530 : f32 = u_xlat3.x;
  let x_536 : f32 = x_534.unity_LightData.z;
  u_xlat3.x = (x_530 * x_536);
  let x_539 : vec4<f32> = u_xlat3;
  let x_541 : vec3<f32> = u_xlat5;
  let x_542 : vec3<f32> = (vec3<f32>(x_539.x, x_539.x, x_539.x) * x_541);
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat2;
  let x_547 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat3.x = dot(x_545, vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_552 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_552, 0.0f, 1.0f);
  let x_555 : vec4<f32> = u_xlat3;
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_555.x, x_555.x, x_555.x) * vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_561 : f32 = u_xlat0.x;
  u_xlat3.x = ((x_561 * 10.0f) + 1.0f);
  let x_567 : f32 = u_xlat3.x;
  u_xlat3.x = exp2(x_567);
  let x_570 : vec3<f32> = u_xlat1;
  let x_571 : f32 = u_xlat28;
  let x_575 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_570 * vec3<f32>(x_571, x_571, x_571)) + vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_579 : vec3<f32> = u_xlat6;
  let x_580 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_579, x_580);
  let x_582 : f32 = u_xlat32;
  u_xlat32 = max(x_582, 1.17549435e-37f);
  let x_584 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_584);
  let x_586 : f32 = u_xlat32;
  let x_588 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_586, x_586, x_586) * x_588);
  let x_590 : vec3<f32> = u_xlat2;
  let x_591 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_590, x_591);
  let x_593 : f32 = u_xlat32;
  u_xlat32 = clamp(x_593, 0.0f, 1.0f);
  let x_595 : f32 = u_xlat32;
  u_xlat32 = log2(x_595);
  let x_598 : f32 = u_xlat3.x;
  let x_599 : f32 = u_xlat32;
  u_xlat32 = (x_598 * x_599);
  let x_601 : f32 = u_xlat32;
  u_xlat32 = exp2(x_601);
  let x_603 : f32 = u_xlat32;
  let x_606 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_603, x_603, x_603) * vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat4;
  let x_611 : vec3<f32> = u_xlat6;
  let x_612 : vec3<f32> = (vec3<f32>(x_609.x, x_609.y, x_609.z) * x_611);
  let x_613 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec3<f32> = u_xlat5;
  let x_616 : vec4<f32> = u_xlat0;
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec3<f32> = ((x_615 * vec3<f32>(x_616.y, x_616.z, x_616.w)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_627 : f32 = x_534.unity_LightData.y;
  u_xlat5.x = min(x_625, x_627);
  let x_632 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_632));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_645 : u32 = u_xlatu_loop_1;
    let x_646 : u32 = u_xlatu5;
    if ((x_645 < x_646)) {
    } else {
      break;
    }
    let x_649 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_649 >> 2u);
    let x_652 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_652 & 3u));
    let x_656 : u32 = u_xlatu15;
    let x_659 : vec4<f32> = x_534.unity_LightIndices[bitcast<i32>(x_656)];
    let x_669 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_674 : vec4<u32> = indexable[x_669];
    u_xlat15.x = dot(x_659, bitcast<vec4<f32>>(x_674));
    let x_680 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_680);
    let x_683 : vec3<f32> = vs_TEXCOORD1;
    let x_695 : i32 = u_xlati15;
    let x_697 : vec4<f32> = x_694.x_AdditionalLightsPosition[x_695];
    let x_700 : i32 = u_xlati15;
    let x_702 : vec4<f32> = x_694.x_AdditionalLightsPosition[x_700];
    u_xlat7 = ((-(x_683) * vec3<f32>(x_697.w, x_697.w, x_697.w)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
    let x_706 : vec3<f32> = u_xlat7;
    let x_707 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_706, x_707);
    let x_709 : f32 = u_xlat24;
    u_xlat24 = max(x_709, 6.10351562e-05f);
    let x_713 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_713);
    let x_715 : f32 = u_xlat33;
    let x_717 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_715, x_715, x_715) * x_717);
    let x_719 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_719);
    let x_721 : f32 = u_xlat24;
    let x_722 : i32 = u_xlati15;
    let x_724 : f32 = x_694.x_AdditionalLightsAttenuation[x_722].x;
    u_xlat24 = (x_721 * x_724);
    let x_726 : f32 = u_xlat24;
    let x_728 : f32 = u_xlat24;
    u_xlat24 = ((-(x_726) * x_728) + 1.0f);
    let x_731 : f32 = u_xlat24;
    u_xlat24 = max(x_731, 0.0f);
    let x_733 : f32 = u_xlat24;
    let x_734 : f32 = u_xlat24;
    u_xlat24 = (x_733 * x_734);
    let x_736 : f32 = u_xlat24;
    let x_737 : f32 = u_xlat33;
    u_xlat24 = (x_736 * x_737);
    let x_739 : i32 = u_xlati15;
    let x_741 : vec4<f32> = x_694.x_AdditionalLightsSpotDir[x_739];
    let x_743 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_741.x, x_741.y, x_741.z), x_743);
    let x_745 : f32 = u_xlat33;
    let x_746 : i32 = u_xlati15;
    let x_748 : f32 = x_694.x_AdditionalLightsAttenuation[x_746].z;
    let x_750 : i32 = u_xlati15;
    let x_752 : f32 = x_694.x_AdditionalLightsAttenuation[x_750].w;
    u_xlat33 = ((x_745 * x_748) + x_752);
    let x_754 : f32 = u_xlat33;
    u_xlat33 = clamp(x_754, 0.0f, 1.0f);
    let x_756 : f32 = u_xlat33;
    let x_757 : f32 = u_xlat33;
    u_xlat33 = (x_756 * x_757);
    let x_759 : f32 = u_xlat33;
    let x_760 : f32 = u_xlat24;
    u_xlat24 = (x_759 * x_760);
    let x_763 : f32 = u_xlat31;
    let x_765 : i32 = u_xlati15;
    let x_767 : vec4<f32> = x_694.x_AdditionalLightsColor[x_765];
    u_xlat8 = (vec3<f32>(x_763, x_763, x_763) * vec3<f32>(x_767.x, x_767.y, x_767.z));
    let x_770 : f32 = u_xlat24;
    let x_772 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_770, x_770, x_770) * x_772);
    let x_775 : vec3<f32> = u_xlat2;
    let x_776 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_775, x_776);
    let x_778 : f32 = u_xlat34;
    u_xlat34 = clamp(x_778, 0.0f, 1.0f);
    let x_780 : vec3<f32> = u_xlat15;
    let x_781 : f32 = u_xlat34;
    u_xlat8 = (x_780 * vec3<f32>(x_781, x_781, x_781));
    let x_784 : vec3<f32> = u_xlat1;
    let x_785 : f32 = u_xlat28;
    let x_788 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_784 * vec3<f32>(x_785, x_785, x_785)) + x_788);
    let x_790 : vec3<f32> = u_xlat7;
    let x_791 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_790, x_791);
    let x_793 : f32 = u_xlat34;
    u_xlat34 = max(x_793, 1.17549435e-37f);
    let x_795 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_795);
    let x_797 : f32 = u_xlat34;
    let x_799 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_797, x_797, x_797) * x_799);
    let x_801 : vec3<f32> = u_xlat2;
    let x_802 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_801, x_802);
    let x_806 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_806, 0.0f, 1.0f);
    let x_810 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_810);
    let x_814 : f32 = u_xlat3.x;
    let x_816 : f32 = u_xlat7.x;
    u_xlat7.x = (x_814 * x_816);
    let x_820 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_820);
    let x_823 : vec3<f32> = u_xlat7;
    let x_826 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_823.x, x_823.x, x_823.x) * vec3<f32>(x_826.x, x_826.y, x_826.z));
    let x_829 : vec3<f32> = u_xlat15;
    let x_830 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_829 * x_830);
    let x_832 : vec3<f32> = u_xlat8;
    let x_833 : vec4<f32> = u_xlat0;
    let x_836 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_832 * vec3<f32>(x_833.y, x_833.z, x_833.w)) + x_836);
    let x_838 : vec3<f32> = u_xlat14;
    let x_839 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_838 + x_839);

    continuing {
      let x_841 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_841 + bitcast<u32>(1i));
    }
  }
  let x_844 : vec3<f32> = u_xlat12;
  let x_845 : vec4<f32> = u_xlat0;
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat9 = ((x_844 * vec3<f32>(x_845.y, x_845.z, x_845.w)) + vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : vec3<f32> = u_xlat14;
  let x_852 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_851 + x_852);
  let x_854 : f32 = u_xlat29;
  let x_855 : f32 = u_xlat29;
  u_xlat1.x = (x_854 * -(x_855));
  let x_860 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_860);
  let x_863 : vec3<f32> = u_xlat9;
  let x_866 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_863 + -(vec3<f32>(x_866.x, x_866.y, x_866.z)));
  let x_872 : vec3<f32> = u_xlat1;
  let x_874 : vec3<f32> = u_xlat9;
  let x_877 : vec4<f32> = x_44.unity_FogColor;
  let x_879 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * x_874) + vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_884 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_884 == 1.0f);
  let x_886 : bool = u_xlatb9;
  if (x_886) {
    let x_891 : f32 = u_xlat0.x;
    x_887 = x_891;
  } else {
    x_887 = 1.0f;
  }
  let x_893 : f32 = x_887;
  SV_Target0.w = x_893;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

