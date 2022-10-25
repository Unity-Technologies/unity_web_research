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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_143 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_571 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_731 : AdditionalLights;

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
  var x_512 : f32;
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
  var x_924 : f32;
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
  let x_372 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_369, x_371);
  u_xlat4 = x_372;
  let x_377 : vec2<f32> = vs_TEXCOORD7;
  let x_379 : f32 = x_44.x_GlobalMipBias.x;
  let x_380 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_377, x_379);
  u_xlat5 = vec3<f32>(x_380.x, x_380.y, x_380.z);
  let x_382 : vec4<f32> = u_xlat4;
  let x_386 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : vec3<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_390, vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat30;
  u_xlat30 = (x_394 + 0.5f);
  let x_397 : f32 = u_xlat30;
  let x_399 : vec3<f32> = u_xlat5;
  let x_400 : vec3<f32> = (vec3<f32>(x_397, x_397, x_397) * x_399);
  let x_401 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : f32 = u_xlat4.w;
  u_xlat30 = max(x_404, 0.0001f);
  let x_407 : vec4<f32> = u_xlat4;
  let x_409 : f32 = u_xlat30;
  let x_411 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) / vec3<f32>(x_409, x_409, x_409));
  let x_412 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_416 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_417 : vec2<f32> = vec2<f32>(x_416.x, x_416.y);
  let x_421 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_417.x, x_417.y));
  let x_422 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_421.x, x_421.y, x_422.z);
  let x_424 : vec3<f32> = u_xlat5;
  let x_426 : vec4<f32> = hlslcc_FragCoord;
  let x_428 : vec2<f32> = (vec2<f32>(x_424.x, x_424.y) * vec2<f32>(x_426.x, x_426.y));
  let x_429 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_428.x, x_428.y, x_429.z);
  let x_432 : f32 = u_xlat5.y;
  let x_435 : f32 = x_44.x_ScaleBiasRt.x;
  let x_438 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat30 = ((x_432 * x_435) + x_438);
  let x_440 : f32 = u_xlat30;
  u_xlat5.z = (-(x_440) + 1.0f);
  let x_449 : vec3<f32> = u_xlat5;
  let x_452 : f32 = x_44.x_GlobalMipBias.x;
  let x_453 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_449.x, x_449.z), x_452);
  u_xlat30 = x_453.x;
  let x_456 : f32 = u_xlat30;
  u_xlat31 = (x_456 + -1.0f);
  let x_459 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_460 : f32 = u_xlat31;
  u_xlat31 = ((x_459 * x_460) + 1.0f);
  let x_463 : f32 = u_xlat30;
  u_xlat30 = min(x_463, 1.0f);
  let x_466 : vec4<f32> = u_xlat3;
  let x_467 : vec2<f32> = vec2<f32>(x_466.x, x_466.y);
  let x_469 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_467.x, x_467.y, x_469);
  let x_481 : vec3<f32> = txVec0;
  let x_483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_481.xy, x_481.z);
  u_xlat3.x = x_483;
  let x_487 : f32 = x_143.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_487) + 1.0f);
  let x_492 : f32 = u_xlat3.x;
  let x_494 : f32 = x_143.x_MainLightShadowParams.x;
  let x_497 : f32 = u_xlat12.x;
  u_xlat3.x = ((x_492 * x_494) + x_497);
  let x_502 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_502);
  let x_506 : f32 = u_xlat3.z;
  u_xlatb21 = (x_506 >= 1.0f);
  let x_508 : bool = u_xlatb21;
  let x_509 : bool = u_xlatb12;
  u_xlatb12 = (x_508 | x_509);
  let x_511 : bool = u_xlatb12;
  if (x_511) {
    x_512 = 1.0f;
  } else {
    let x_517 : f32 = u_xlat3.x;
    x_512 = x_517;
  }
  let x_518 : f32 = x_512;
  u_xlat3.x = x_518;
  let x_520 : vec3<f32> = vs_TEXCOORD1;
  let x_522 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_520 + -(x_522));
  let x_525 : vec3<f32> = u_xlat5;
  let x_526 : vec3<f32> = u_xlat5;
  u_xlat12.x = dot(x_525, x_526);
  let x_530 : f32 = u_xlat12.x;
  let x_532 : f32 = x_143.x_MainLightShadowParams.z;
  let x_535 : f32 = x_143.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_530 * x_532) + x_535);
  let x_539 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_539, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat3.x;
  u_xlat21 = (-(x_544) + 1.0f);
  let x_548 : f32 = u_xlat12.x;
  let x_549 : f32 = u_xlat21;
  let x_552 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_548 * x_549) + x_552);
  let x_555 : f32 = u_xlat31;
  let x_558 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_555, x_555, x_555) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : f32 = u_xlat30;
  let x_563 : vec4<f32> = u_xlat4;
  u_xlat12 = (vec3<f32>(x_561, x_561, x_561) * vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_567 : f32 = u_xlat3.x;
  let x_573 : f32 = x_571.unity_LightData.z;
  u_xlat3.x = (x_567 * x_573);
  let x_576 : vec4<f32> = u_xlat3;
  let x_578 : vec3<f32> = u_xlat5;
  let x_579 : vec3<f32> = (vec3<f32>(x_576.x, x_576.x, x_576.x) * x_578);
  let x_580 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_582 : vec3<f32> = u_xlat2;
  let x_584 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat3.x = dot(x_582, vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_589 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_589, 0.0f, 1.0f);
  let x_592 : vec4<f32> = u_xlat3;
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_592.x, x_592.x, x_592.x) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_598 : f32 = u_xlat0.x;
  u_xlat3.x = ((x_598 * 10.0f) + 1.0f);
  let x_604 : f32 = u_xlat3.x;
  u_xlat3.x = exp2(x_604);
  let x_607 : vec3<f32> = u_xlat1;
  let x_608 : f32 = u_xlat28;
  let x_612 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_607 * vec3<f32>(x_608, x_608, x_608)) + vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_616 : vec3<f32> = u_xlat6;
  let x_617 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_616, x_617);
  let x_619 : f32 = u_xlat32;
  u_xlat32 = max(x_619, 1.17549435e-37f);
  let x_621 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_621);
  let x_623 : f32 = u_xlat32;
  let x_625 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_623, x_623, x_623) * x_625);
  let x_627 : vec3<f32> = u_xlat2;
  let x_628 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_627, x_628);
  let x_630 : f32 = u_xlat32;
  u_xlat32 = clamp(x_630, 0.0f, 1.0f);
  let x_632 : f32 = u_xlat32;
  u_xlat32 = log2(x_632);
  let x_635 : f32 = u_xlat3.x;
  let x_636 : f32 = u_xlat32;
  u_xlat32 = (x_635 * x_636);
  let x_638 : f32 = u_xlat32;
  u_xlat32 = exp2(x_638);
  let x_640 : f32 = u_xlat32;
  let x_643 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat4;
  let x_648 : vec3<f32> = u_xlat6;
  let x_649 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) * x_648);
  let x_650 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec3<f32> = u_xlat5;
  let x_653 : vec4<f32> = u_xlat0;
  let x_656 : vec4<f32> = u_xlat4;
  let x_658 : vec3<f32> = ((x_652 * vec3<f32>(x_653.y, x_653.z, x_653.w)) + vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_662 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_664 : f32 = x_571.unity_LightData.y;
  u_xlat5.x = min(x_662, x_664);
  let x_669 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_669));
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_682 : u32 = u_xlatu_loop_1;
    let x_683 : u32 = u_xlatu5;
    if ((x_682 < x_683)) {
    } else {
      break;
    }
    let x_686 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_686 >> 2u);
    let x_689 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_689 & 3u));
    let x_693 : u32 = u_xlatu15;
    let x_696 : vec4<f32> = x_571.unity_LightIndices[bitcast<i32>(x_693)];
    let x_706 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_711 : vec4<u32> = indexable[x_706];
    u_xlat15.x = dot(x_696, bitcast<vec4<f32>>(x_711));
    let x_717 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_717);
    let x_720 : vec3<f32> = vs_TEXCOORD1;
    let x_732 : i32 = u_xlati15;
    let x_734 : vec4<f32> = x_731.x_AdditionalLightsPosition[x_732];
    let x_737 : i32 = u_xlati15;
    let x_739 : vec4<f32> = x_731.x_AdditionalLightsPosition[x_737];
    u_xlat7 = ((-(x_720) * vec3<f32>(x_734.w, x_734.w, x_734.w)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
    let x_743 : vec3<f32> = u_xlat7;
    let x_744 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_743, x_744);
    let x_746 : f32 = u_xlat24;
    u_xlat24 = max(x_746, 6.10351562e-05f);
    let x_750 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_750);
    let x_752 : f32 = u_xlat33;
    let x_754 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_752, x_752, x_752) * x_754);
    let x_756 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_756);
    let x_758 : f32 = u_xlat24;
    let x_759 : i32 = u_xlati15;
    let x_761 : f32 = x_731.x_AdditionalLightsAttenuation[x_759].x;
    u_xlat24 = (x_758 * x_761);
    let x_763 : f32 = u_xlat24;
    let x_765 : f32 = u_xlat24;
    u_xlat24 = ((-(x_763) * x_765) + 1.0f);
    let x_768 : f32 = u_xlat24;
    u_xlat24 = max(x_768, 0.0f);
    let x_770 : f32 = u_xlat24;
    let x_771 : f32 = u_xlat24;
    u_xlat24 = (x_770 * x_771);
    let x_773 : f32 = u_xlat24;
    let x_774 : f32 = u_xlat33;
    u_xlat24 = (x_773 * x_774);
    let x_776 : i32 = u_xlati15;
    let x_778 : vec4<f32> = x_731.x_AdditionalLightsSpotDir[x_776];
    let x_780 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_778.x, x_778.y, x_778.z), x_780);
    let x_782 : f32 = u_xlat33;
    let x_783 : i32 = u_xlati15;
    let x_785 : f32 = x_731.x_AdditionalLightsAttenuation[x_783].z;
    let x_787 : i32 = u_xlati15;
    let x_789 : f32 = x_731.x_AdditionalLightsAttenuation[x_787].w;
    u_xlat33 = ((x_782 * x_785) + x_789);
    let x_791 : f32 = u_xlat33;
    u_xlat33 = clamp(x_791, 0.0f, 1.0f);
    let x_793 : f32 = u_xlat33;
    let x_794 : f32 = u_xlat33;
    u_xlat33 = (x_793 * x_794);
    let x_796 : f32 = u_xlat33;
    let x_797 : f32 = u_xlat24;
    u_xlat24 = (x_796 * x_797);
    let x_800 : f32 = u_xlat31;
    let x_802 : i32 = u_xlati15;
    let x_804 : vec4<f32> = x_731.x_AdditionalLightsColor[x_802];
    u_xlat8 = (vec3<f32>(x_800, x_800, x_800) * vec3<f32>(x_804.x, x_804.y, x_804.z));
    let x_807 : f32 = u_xlat24;
    let x_809 : vec3<f32> = u_xlat8;
    u_xlat15 = (vec3<f32>(x_807, x_807, x_807) * x_809);
    let x_812 : vec3<f32> = u_xlat2;
    let x_813 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_812, x_813);
    let x_815 : f32 = u_xlat34;
    u_xlat34 = clamp(x_815, 0.0f, 1.0f);
    let x_817 : vec3<f32> = u_xlat15;
    let x_818 : f32 = u_xlat34;
    u_xlat8 = (x_817 * vec3<f32>(x_818, x_818, x_818));
    let x_821 : vec3<f32> = u_xlat1;
    let x_822 : f32 = u_xlat28;
    let x_825 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_821 * vec3<f32>(x_822, x_822, x_822)) + x_825);
    let x_827 : vec3<f32> = u_xlat7;
    let x_828 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_827, x_828);
    let x_830 : f32 = u_xlat34;
    u_xlat34 = max(x_830, 1.17549435e-37f);
    let x_832 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_832);
    let x_834 : f32 = u_xlat34;
    let x_836 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_834, x_834, x_834) * x_836);
    let x_838 : vec3<f32> = u_xlat2;
    let x_839 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_838, x_839);
    let x_843 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_843, 0.0f, 1.0f);
    let x_847 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_847);
    let x_851 : f32 = u_xlat3.x;
    let x_853 : f32 = u_xlat7.x;
    u_xlat7.x = (x_851 * x_853);
    let x_857 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_857);
    let x_860 : vec3<f32> = u_xlat7;
    let x_863 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_860.x, x_860.x, x_860.x) * vec3<f32>(x_863.x, x_863.y, x_863.z));
    let x_866 : vec3<f32> = u_xlat15;
    let x_867 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_866 * x_867);
    let x_869 : vec3<f32> = u_xlat8;
    let x_870 : vec4<f32> = u_xlat0;
    let x_873 : vec3<f32> = u_xlat15;
    u_xlat15 = ((x_869 * vec3<f32>(x_870.y, x_870.z, x_870.w)) + x_873);
    let x_875 : vec3<f32> = u_xlat14;
    let x_876 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_875 + x_876);

    continuing {
      let x_878 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_878 + bitcast<u32>(1i));
    }
  }
  let x_881 : vec3<f32> = u_xlat12;
  let x_882 : vec4<f32> = u_xlat0;
  let x_885 : vec4<f32> = u_xlat4;
  u_xlat9 = ((x_881 * vec3<f32>(x_882.y, x_882.z, x_882.w)) + vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec3<f32> = u_xlat14;
  let x_889 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_888 + x_889);
  let x_891 : f32 = u_xlat29;
  let x_892 : f32 = u_xlat29;
  u_xlat1.x = (x_891 * -(x_892));
  let x_897 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_897);
  let x_900 : vec3<f32> = u_xlat9;
  let x_903 : vec4<f32> = x_44.unity_FogColor;
  u_xlat9 = (x_900 + -(vec3<f32>(x_903.x, x_903.y, x_903.z)));
  let x_909 : vec3<f32> = u_xlat1;
  let x_911 : vec3<f32> = u_xlat9;
  let x_914 : vec4<f32> = x_44.unity_FogColor;
  let x_916 : vec3<f32> = ((vec3<f32>(x_909.x, x_909.x, x_909.x) * x_911) + vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_921 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_921 == 1.0f);
  let x_923 : bool = u_xlatb9;
  if (x_923) {
    let x_928 : f32 = u_xlat0.x;
    x_924 = x_928;
  } else {
    x_924 = 1.0f;
  }
  let x_930 : f32 = x_924;
  SV_Target0.w = x_930;
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

