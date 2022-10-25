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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_160 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_585 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_763 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1003 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1107 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat4 : vec3<f32>;
  var x_107 : f32;
  var x_121 : f32;
  var x_133 : f32;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var u_xlat15 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat19 : vec2<f32>;
  var u_xlatb19 : vec2<bool>;
  var u_xlatb33 : bool;
  var x_537 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat33 : f32;
  var x_654 : f32;
  var x_665 : vec3<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb21 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat52 : f32;
  var u_xlatu52 : u32;
  var u_xlati11 : i32;
  var u_xlati52 : i32;
  var u_xlati25 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb52 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb25 : vec3<bool>;
  var u_xlat25 : vec3<f32>;
  var x_1423 : f32;
  var x_1436 : f32;
  var x_1498 : f32;
  var x_1509 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1661 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat44 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat44;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_106 : bool = u_xlatb42;
  if (x_106) {
    let x_111 : f32 = u_xlat3.x;
    x_107 = x_111;
  } else {
    let x_117 : f32 = x_44.unity_MatrixV[0i].z;
    x_107 = x_117;
  }
  let x_118 : f32 = x_107;
  u_xlat4.x = x_118;
  let x_120 : bool = u_xlatb42;
  if (x_120) {
    let x_126 : f32 = u_xlat3.y;
    x_121 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[1i].z;
    x_121 = x_129;
  }
  let x_130 : f32 = x_121;
  u_xlat4.y = x_130;
  let x_132 : bool = u_xlatb42;
  if (x_132) {
    let x_137 : f32 = u_xlat3.z;
    x_133 = x_137;
  } else {
    let x_140 : f32 = x_44.unity_MatrixV[2i].z;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat4.z = x_141;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_145, x_146);
  let x_148 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat42;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_150, x_150, x_150) * x_152);
  let x_155 : vec3<f32> = vs_TEXCOORD1;
  let x_162 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (x_155 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_169 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_186 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres3;
  let x_192 : vec3<f32> = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat5;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat6;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : vec3<f32> = u_xlat7;
  let x_208 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_207, x_208);
  let x_211 : vec4<f32> = u_xlat8;
  let x_213 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_220 : vec4<f32> = u_xlat5;
  let x_223 : vec4<f32> = x_160.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_220 < x_223);
  let x_226 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_242);
  let x_248 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_248);
  let x_252 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_252);
  let x_255 : vec4<f32> = u_xlat5;
  let x_257 : vec4<f32> = u_xlat6;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_257.y, x_257.z, x_257.w));
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat5;
  let x_265 : vec3<f32> = max(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_266 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_266.x, x_265.x, x_265.y, x_265.z);
  let x_268 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_268, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_274 : f32 = u_xlat42;
  u_xlat42 = (-(x_274) + 4.0f);
  let x_279 : f32 = u_xlat42;
  u_xlatu42 = u32(x_279);
  let x_283 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : i32 = u_xlati42;
  let x_291 : i32 = u_xlati42;
  let x_295 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_288 + 1i) / 4i)][((x_291 + 1i) % 4i)];
  let x_297 : vec3<f32> = (vec3<f32>(x_286.y, x_286.y, x_286.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : i32 = u_xlati42;
  let x_302 : i32 = u_xlati42;
  let x_305 : vec4<f32> = x_160.x_MainLightWorldToShadow[(x_300 / 4i)][(x_302 % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec4<f32> = u_xlat5;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : i32 = u_xlati42;
  let x_318 : i32 = u_xlati42;
  let x_322 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_315 + 2i) / 4i)][((x_318 + 2i) % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.z, x_324.z, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : i32 = u_xlati42;
  let x_337 : i32 = u_xlati42;
  let x_341 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_334 + 3i) / 4i)][((x_337 + 3i) % 4i)];
  let x_343 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_352 : vec2<f32> = vs_TEXCOORD8;
  let x_354 : f32 = x_44.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_352, x_354);
  let x_356 : vec3<f32> = vec3<f32>(x_355.x, x_355.y, x_355.z);
  let x_357 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_361 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_362 : vec2<f32> = vec2<f32>(x_361.x, x_361.y);
  let x_366 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_362.x, x_362.y));
  let x_367 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_366.x, x_366.y, x_367.z);
  let x_369 : vec3<f32> = u_xlat7;
  let x_371 : vec4<f32> = hlslcc_FragCoord;
  let x_373 : vec2<f32> = (vec2<f32>(x_369.x, x_369.y) * vec2<f32>(x_371.x, x_371.y));
  let x_374 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_373.x, x_373.y, x_374.z);
  let x_377 : f32 = u_xlat7.y;
  let x_380 : f32 = x_44.x_ScaleBiasRt.x;
  let x_383 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_377 * x_380) + x_383);
  let x_385 : f32 = u_xlat42;
  u_xlat7.z = (-(x_385) + 1.0f);
  let x_390 : f32 = x_57.x_Metallic;
  u_xlat42 = ((-(x_390) * 0.959999979f) + 0.959999979f);
  let x_395 : f32 = u_xlat42;
  let x_398 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_395) + x_398);
  let x_401 : f32 = u_xlat42;
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_401, x_401, x_401) * vec3<f32>(x_403.y, x_403.z, x_403.w));
  let x_406 : vec4<f32> = u_xlat0;
  let x_409 : vec4<f32> = x_57.x_BaseColor;
  let x_414 : vec3<f32> = ((vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_409.x, x_409.y, x_409.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_415 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = x_57.x_Metallic;
  let x_420 : f32 = x_57.x_Metallic;
  let x_422 : f32 = x_57.x_Metallic;
  let x_423 : vec3<f32> = vec3<f32>(x_418, x_420, x_422);
  let x_428 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = x_57.x_Smoothness;
  u_xlat42 = (-(x_437) + 1.0f);
  let x_441 : f32 = u_xlat42;
  let x_442 : f32 = u_xlat42;
  u_xlat45 = (x_441 * x_442);
  let x_444 : f32 = u_xlat45;
  u_xlat45 = max(x_444, 0.0078125f);
  let x_448 : f32 = u_xlat45;
  let x_449 : f32 = u_xlat45;
  u_xlat46 = (x_448 * x_449);
  let x_451 : f32 = u_xlat44;
  u_xlat44 = (x_451 + 1.0f);
  let x_453 : f32 = u_xlat44;
  u_xlat44 = clamp(x_453, 0.0f, 1.0f);
  let x_456 : f32 = u_xlat45;
  u_xlat47 = ((x_456 * 4.0f) + 2.0f);
  let x_465 : vec3<f32> = u_xlat7;
  let x_468 : f32 = x_44.x_GlobalMipBias.x;
  let x_469 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_465.x, x_465.z), x_468);
  u_xlat48 = x_469.x;
  let x_471 : f32 = u_xlat48;
  u_xlat7.x = (x_471 + -1.0f);
  let x_475 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_477 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_475 * x_477) + 1.0f);
  let x_481 : f32 = u_xlat48;
  u_xlat48 = min(x_481, 1.0f);
  let x_484 : vec4<f32> = u_xlat5;
  let x_485 : vec2<f32> = vec2<f32>(x_484.x, x_484.y);
  let x_487 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_485.x, x_485.y, x_487);
  let x_499 : vec3<f32> = txVec0;
  let x_501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_499.xy, x_499.z);
  u_xlat5.x = x_501;
  let x_506 : f32 = x_160.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_506) + 1.0f);
  let x_511 : f32 = u_xlat5.x;
  let x_513 : f32 = x_160.x_MainLightShadowParams.x;
  let x_516 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_511 * x_513) + x_516);
  let x_523 : f32 = u_xlat5.z;
  u_xlatb19.x = (0.0f >= x_523);
  let x_528 : f32 = u_xlat5.z;
  u_xlatb33 = (x_528 >= 1.0f);
  let x_530 : bool = u_xlatb33;
  let x_532 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_530 | x_532);
  let x_536 : bool = u_xlatb19.x;
  if (x_536) {
    x_537 = 1.0f;
  } else {
    let x_542 : f32 = u_xlat5.x;
    x_537 = x_542;
  }
  let x_543 : f32 = x_537;
  u_xlat5.x = x_543;
  let x_546 : vec3<f32> = vs_TEXCOORD1;
  let x_548 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat21 = (x_546 + -(x_548));
  let x_551 : vec3<f32> = u_xlat21;
  let x_552 : vec3<f32> = u_xlat21;
  u_xlat19.x = dot(x_551, x_552);
  let x_556 : f32 = u_xlat19.x;
  let x_558 : f32 = x_160.x_MainLightShadowParams.z;
  let x_561 : f32 = x_160.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_556 * x_558) + x_561);
  let x_565 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_565, 0.0f, 1.0f);
  let x_570 : f32 = u_xlat5.x;
  u_xlat33 = (-(x_570) + 1.0f);
  let x_574 : f32 = u_xlat19.x;
  let x_575 : f32 = u_xlat33;
  let x_578 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_574 * x_575) + x_578);
  let x_587 : f32 = x_585.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_587 == -1.0f));
  let x_591 : bool = u_xlatb19.x;
  if (x_591) {
    let x_594 : vec3<f32> = vs_TEXCOORD1;
    let x_597 : vec4<f32> = x_585.x_MainLightWorldToLight[1i];
    u_xlat19 = (vec2<f32>(x_594.y, x_594.y) * vec2<f32>(x_597.x, x_597.y));
    let x_601 : vec4<f32> = x_585.x_MainLightWorldToLight[0i];
    let x_603 : vec3<f32> = vs_TEXCOORD1;
    let x_606 : vec2<f32> = u_xlat19;
    u_xlat19 = ((vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_603.x, x_603.x)) + x_606);
    let x_609 : vec4<f32> = x_585.x_MainLightWorldToLight[2i];
    let x_611 : vec3<f32> = vs_TEXCOORD1;
    let x_614 : vec2<f32> = u_xlat19;
    u_xlat19 = ((vec2<f32>(x_609.x, x_609.y) * vec2<f32>(x_611.z, x_611.z)) + x_614);
    let x_616 : vec2<f32> = u_xlat19;
    let x_618 : vec4<f32> = x_585.x_MainLightWorldToLight[3i];
    u_xlat19 = (x_616 + vec2<f32>(x_618.x, x_618.y));
    let x_621 : vec2<f32> = u_xlat19;
    u_xlat19 = ((x_621 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_631 : vec2<f32> = u_xlat19;
    let x_633 : f32 = x_44.x_GlobalMipBias.x;
    let x_634 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_631, x_633);
    u_xlat8 = x_634;
    let x_636 : f32 = x_585.x_MainLightCookieTextureFormat;
    let x_638 : f32 = x_585.x_MainLightCookieTextureFormat;
    let x_640 : f32 = x_585.x_MainLightCookieTextureFormat;
    let x_642 : f32 = x_585.x_MainLightCookieTextureFormat;
    let x_643 : vec4<f32> = vec4<f32>(x_636, x_638, x_640, x_642);
    let x_650 : vec4<bool> = (vec4<f32>(x_643.x, x_643.y, x_643.z, x_643.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_650.x, x_650.y);
    let x_653 : bool = u_xlatb19.y;
    if (x_653) {
      let x_658 : f32 = u_xlat8.w;
      x_654 = x_658;
    } else {
      let x_661 : f32 = u_xlat8.x;
      x_654 = x_661;
    }
    let x_662 : f32 = x_654;
    u_xlat33 = x_662;
    let x_664 : bool = u_xlatb19.x;
    if (x_664) {
      let x_668 : vec4<f32> = u_xlat8;
      x_665 = vec3<f32>(x_668.x, x_668.y, x_668.z);
    } else {
      let x_671 : f32 = u_xlat33;
      x_665 = vec3<f32>(x_671, x_671, x_671);
    }
    let x_673 : vec3<f32> = x_665;
    u_xlat21 = x_673;
  } else {
    u_xlat21.x = 1.0f;
    u_xlat21.y = 1.0f;
    u_xlat21.z = 1.0f;
  }
  let x_678 : vec3<f32> = u_xlat21;
  let x_680 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat21 = (x_678 * vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec3<f32> = u_xlat7;
  let x_685 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_683.x, x_683.x, x_683.x) * x_685);
  let x_687 : vec3<f32> = u_xlat4;
  let x_689 : vec3<f32> = u_xlat3;
  u_xlat19.x = dot(-(x_687), x_689);
  let x_693 : f32 = u_xlat19.x;
  let x_695 : f32 = u_xlat19.x;
  u_xlat19.x = (x_693 + x_695);
  let x_698 : vec3<f32> = u_xlat3;
  let x_699 : vec2<f32> = u_xlat19;
  let x_703 : vec3<f32> = u_xlat4;
  let x_705 : vec3<f32> = ((x_698 * -(vec3<f32>(x_699.x, x_699.x, x_699.x))) + -(x_703));
  let x_706 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec3<f32> = u_xlat3;
  let x_709 : vec3<f32> = u_xlat4;
  u_xlat19.x = dot(x_708, x_709);
  let x_713 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_713, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat19.x;
  u_xlat19.x = (-(x_717) + 1.0f);
  let x_722 : f32 = u_xlat19.x;
  let x_724 : f32 = u_xlat19.x;
  u_xlat19.x = (x_722 * x_724);
  let x_728 : f32 = u_xlat19.x;
  let x_730 : f32 = u_xlat19.x;
  u_xlat19.x = (x_728 * x_730);
  let x_733 : f32 = u_xlat42;
  u_xlat33 = ((-(x_733) * 0.699999988f) + 1.700000048f);
  let x_739 : f32 = u_xlat42;
  let x_740 : f32 = u_xlat33;
  u_xlat42 = (x_739 * x_740);
  let x_742 : f32 = u_xlat42;
  u_xlat42 = (x_742 * 6.0f);
  let x_753 : vec4<f32> = u_xlat8;
  let x_755 : f32 = u_xlat42;
  let x_756 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_753.x, x_753.y, x_753.z), x_755);
  u_xlat8 = x_756;
  let x_758 : f32 = u_xlat8.w;
  u_xlat42 = (x_758 + -1.0f);
  let x_765 : f32 = x_763.unity_SpecCube0_HDR.w;
  let x_766 : f32 = u_xlat42;
  u_xlat42 = ((x_765 * x_766) + 1.0f);
  let x_769 : f32 = u_xlat42;
  u_xlat42 = max(x_769, 0.0f);
  let x_771 : f32 = u_xlat42;
  u_xlat42 = log2(x_771);
  let x_773 : f32 = u_xlat42;
  let x_775 : f32 = x_763.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_773 * x_775);
  let x_777 : f32 = u_xlat42;
  u_xlat42 = exp2(x_777);
  let x_779 : f32 = u_xlat42;
  let x_781 : f32 = x_763.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_779 * x_781);
  let x_783 : vec4<f32> = u_xlat8;
  let x_785 : f32 = u_xlat42;
  let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_785, x_785, x_785));
  let x_788 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_791 : f32 = u_xlat45;
  let x_793 : f32 = u_xlat45;
  u_xlat9 = ((vec2<f32>(x_791, x_791) * vec2<f32>(x_793, x_793)) + vec2<f32>(-1.0f, 1.0f));
  let x_799 : f32 = u_xlat9.y;
  u_xlat42 = (1.0f / x_799);
  let x_802 : vec4<f32> = u_xlat0;
  let x_805 : f32 = u_xlat44;
  u_xlat23 = (-(vec3<f32>(x_802.x, x_802.y, x_802.z)) + vec3<f32>(x_805, x_805, x_805));
  let x_808 : vec2<f32> = u_xlat19;
  let x_810 : vec3<f32> = u_xlat23;
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * x_810) + vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : f32 = u_xlat42;
  let x_817 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_815, x_815, x_815) * x_817);
  let x_819 : vec4<f32> = u_xlat8;
  let x_821 : vec3<f32> = u_xlat23;
  let x_822 : vec3<f32> = (vec3<f32>(x_819.x, x_819.y, x_819.z) * x_821);
  let x_823 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat6;
  let x_827 : vec3<f32> = u_xlat15;
  let x_829 : vec4<f32> = u_xlat8;
  let x_831 : vec3<f32> = ((vec3<f32>(x_825.x, x_825.y, x_825.z) * x_827) + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : f32 = u_xlat5.x;
  let x_837 : f32 = x_763.unity_LightData.z;
  u_xlat42 = (x_835 * x_837);
  let x_839 : vec3<f32> = u_xlat3;
  let x_841 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_839, vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : f32 = u_xlat44;
  u_xlat44 = clamp(x_844, 0.0f, 1.0f);
  let x_846 : f32 = u_xlat42;
  let x_847 : f32 = u_xlat44;
  u_xlat42 = (x_846 * x_847);
  let x_849 : f32 = u_xlat42;
  let x_851 : vec3<f32> = u_xlat21;
  let x_852 : vec3<f32> = (vec3<f32>(x_849, x_849, x_849) * x_851);
  let x_853 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat4;
  let x_857 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat21 = (x_855 + vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : vec3<f32> = u_xlat21;
  let x_861 : vec3<f32> = u_xlat21;
  u_xlat42 = dot(x_860, x_861);
  let x_863 : f32 = u_xlat42;
  u_xlat42 = max(x_863, 1.17549435e-37f);
  let x_866 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_866);
  let x_868 : f32 = u_xlat42;
  let x_870 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_868, x_868, x_868) * x_870);
  let x_872 : vec3<f32> = u_xlat3;
  let x_873 : vec3<f32> = u_xlat21;
  u_xlat42 = dot(x_872, x_873);
  let x_875 : f32 = u_xlat42;
  u_xlat42 = clamp(x_875, 0.0f, 1.0f);
  let x_878 : vec4<f32> = x_44.x_MainLightPosition;
  let x_880 : vec3<f32> = u_xlat21;
  u_xlat44 = dot(vec3<f32>(x_878.x, x_878.y, x_878.z), x_880);
  let x_882 : f32 = u_xlat44;
  u_xlat44 = clamp(x_882, 0.0f, 1.0f);
  let x_884 : f32 = u_xlat42;
  let x_885 : f32 = u_xlat42;
  u_xlat42 = (x_884 * x_885);
  let x_887 : f32 = u_xlat42;
  let x_889 : f32 = u_xlat9.x;
  u_xlat42 = ((x_887 * x_889) + 1.000010014f);
  let x_893 : f32 = u_xlat44;
  let x_894 : f32 = u_xlat44;
  u_xlat44 = (x_893 * x_894);
  let x_896 : f32 = u_xlat42;
  let x_897 : f32 = u_xlat42;
  u_xlat42 = (x_896 * x_897);
  let x_899 : f32 = u_xlat44;
  u_xlat44 = max(x_899, 0.100000001f);
  let x_902 : f32 = u_xlat42;
  let x_903 : f32 = u_xlat44;
  u_xlat42 = (x_902 * x_903);
  let x_905 : f32 = u_xlat47;
  let x_906 : f32 = u_xlat42;
  u_xlat42 = (x_905 * x_906);
  let x_908 : f32 = u_xlat46;
  let x_909 : f32 = u_xlat42;
  u_xlat42 = (x_908 / x_909);
  let x_911 : vec4<f32> = u_xlat0;
  let x_913 : f32 = u_xlat42;
  let x_916 : vec3<f32> = u_xlat15;
  u_xlat21 = ((vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(x_913, x_913, x_913)) + x_916);
  let x_918 : vec4<f32> = u_xlat5;
  let x_920 : vec3<f32> = u_xlat21;
  let x_921 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) * x_920);
  let x_922 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_925 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_927 : f32 = x_763.unity_LightData.y;
  u_xlat42 = min(x_925, x_927);
  let x_929 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_929));
  let x_934 : f32 = x_585.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_936 : f32 = x_585.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_938 : f32 = x_585.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_940 : f32 = x_585.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_941 : vec4<f32> = vec4<f32>(x_934, x_936, x_938, x_940);
  let x_947 : vec4<bool> = (vec4<f32>(x_941.x, x_941.y, x_941.z, x_941.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb21 = vec2<bool>(x_947.x, x_947.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_958 : u32 = u_xlatu_loop_1;
    let x_959 : u32 = u_xlatu42;
    if ((x_958 < x_959)) {
    } else {
      break;
    }
    let x_962 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_962 >> 2u);
    let x_965 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_965 & 3u));
    let x_968 : u32 = u_xlatu45;
    let x_971 : vec4<f32> = x_763.unity_LightIndices[bitcast<i32>(x_968)];
    let x_981 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_986 : vec4<u32> = indexable[x_981];
    u_xlat45 = dot(x_971, bitcast<vec4<f32>>(x_986));
    let x_989 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_989));
    let x_992 : vec3<f32> = vs_TEXCOORD1;
    let x_1004 : u32 = u_xlatu45;
    let x_1007 : vec4<f32> = x_1003.x_AdditionalLightsPosition[bitcast<i32>(x_1004)];
    let x_1010 : u32 = u_xlatu45;
    let x_1013 : vec4<f32> = x_1003.x_AdditionalLightsPosition[bitcast<i32>(x_1010)];
    u_xlat23 = ((-(x_992) * vec3<f32>(x_1007.w, x_1007.w, x_1007.w)) + vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
    let x_1017 : vec3<f32> = u_xlat23;
    let x_1018 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1017, x_1018);
    let x_1020 : f32 = u_xlat49;
    u_xlat49 = max(x_1020, 6.10351562e-05f);
    let x_1024 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1024);
    let x_1027 : f32 = u_xlat50;
    let x_1029 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1027, x_1027, x_1027) * x_1029);
    let x_1032 : f32 = u_xlat49;
    u_xlat52 = (1.0f / x_1032);
    let x_1034 : f32 = u_xlat49;
    let x_1035 : u32 = u_xlatu45;
    let x_1038 : f32 = x_1003.x_AdditionalLightsAttenuation[bitcast<i32>(x_1035)].x;
    u_xlat49 = (x_1034 * x_1038);
    let x_1040 : f32 = u_xlat49;
    let x_1042 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1040) * x_1042) + 1.0f);
    let x_1045 : f32 = u_xlat49;
    u_xlat49 = max(x_1045, 0.0f);
    let x_1047 : f32 = u_xlat49;
    let x_1048 : f32 = u_xlat49;
    u_xlat49 = (x_1047 * x_1048);
    let x_1050 : f32 = u_xlat49;
    let x_1051 : f32 = u_xlat52;
    u_xlat49 = (x_1050 * x_1051);
    let x_1053 : u32 = u_xlatu45;
    let x_1056 : vec4<f32> = x_1003.x_AdditionalLightsSpotDir[bitcast<i32>(x_1053)];
    let x_1058 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(vec3<f32>(x_1056.x, x_1056.y, x_1056.z), x_1058);
    let x_1060 : f32 = u_xlat52;
    let x_1061 : u32 = u_xlatu45;
    let x_1064 : f32 = x_1003.x_AdditionalLightsAttenuation[bitcast<i32>(x_1061)].z;
    let x_1066 : u32 = u_xlatu45;
    let x_1069 : f32 = x_1003.x_AdditionalLightsAttenuation[bitcast<i32>(x_1066)].w;
    u_xlat52 = ((x_1060 * x_1064) + x_1069);
    let x_1071 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1071, 0.0f, 1.0f);
    let x_1073 : f32 = u_xlat52;
    let x_1074 : f32 = u_xlat52;
    u_xlat52 = (x_1073 * x_1074);
    let x_1076 : f32 = u_xlat49;
    let x_1077 : f32 = u_xlat52;
    u_xlat49 = (x_1076 * x_1077);
    let x_1080 : u32 = u_xlatu45;
    u_xlatu52 = (x_1080 >> 5u);
    let x_1083 : u32 = u_xlatu45;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_1083) & 31i)));
    let x_1089 : i32 = u_xlati11;
    let x_1091 : u32 = u_xlatu52;
    let x_1094 : f32 = x_585.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1091)].el;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1089) & bitcast<u32>(x_1094)));
    let x_1098 : i32 = u_xlati52;
    if ((x_1098 != 0i)) {
      let x_1108 : u32 = u_xlatu45;
      let x_1111 : f32 = x_1107.x_AdditionalLightsLightTypes[bitcast<i32>(x_1108)].el;
      u_xlati52 = i32(x_1111);
      let x_1113 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1113 != 0i));
      let x_1117 : u32 = u_xlatu45;
      u_xlati25 = (bitcast<i32>(x_1117) << bitcast<u32>(2i));
      let x_1120 : i32 = u_xlati11;
      if ((x_1120 != 0i)) {
        let x_1125 : vec3<f32> = vs_TEXCOORD1;
        let x_1127 : i32 = u_xlati25;
        let x_1130 : i32 = u_xlati25;
        let x_1134 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1127 + 1i) / 4i)][((x_1130 + 1i) % 4i)];
        let x_1136 : vec3<f32> = (vec3<f32>(x_1125.y, x_1125.y, x_1125.y) * vec3<f32>(x_1134.x, x_1134.y, x_1134.w));
        let x_1137 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1136.x, x_1137.y, x_1136.y, x_1136.z);
        let x_1139 : i32 = u_xlati25;
        let x_1141 : i32 = u_xlati25;
        let x_1144 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_1139 / 4i)][(x_1141 % 4i)];
        let x_1146 : vec3<f32> = vs_TEXCOORD1;
        let x_1149 : vec4<f32> = u_xlat11;
        let x_1151 : vec3<f32> = ((vec3<f32>(x_1144.x, x_1144.y, x_1144.w) * vec3<f32>(x_1146.x, x_1146.x, x_1146.x)) + vec3<f32>(x_1149.x, x_1149.z, x_1149.w));
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1151.x, x_1152.y, x_1151.y, x_1151.z);
        let x_1154 : i32 = u_xlati25;
        let x_1157 : i32 = u_xlati25;
        let x_1161 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1154 + 2i) / 4i)][((x_1157 + 2i) % 4i)];
        let x_1163 : vec3<f32> = vs_TEXCOORD1;
        let x_1166 : vec4<f32> = u_xlat11;
        let x_1168 : vec3<f32> = ((vec3<f32>(x_1161.x, x_1161.y, x_1161.w) * vec3<f32>(x_1163.z, x_1163.z, x_1163.z)) + vec3<f32>(x_1166.x, x_1166.z, x_1166.w));
        let x_1169 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1168.z);
        let x_1171 : vec4<f32> = u_xlat11;
        let x_1173 : i32 = u_xlati25;
        let x_1176 : i32 = u_xlati25;
        let x_1180 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1173 + 3i) / 4i)][((x_1176 + 3i) % 4i)];
        let x_1182 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.z, x_1171.w) + vec3<f32>(x_1180.x, x_1180.y, x_1180.w));
        let x_1183 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1182.x, x_1183.y, x_1182.y, x_1182.z);
        let x_1185 : vec4<f32> = u_xlat11;
        let x_1187 : vec4<f32> = u_xlat11;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1185.x, x_1185.z) / vec2<f32>(x_1187.w, x_1187.w));
        let x_1190 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1189.x, x_1190.y, x_1189.y, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat11;
        let x_1195 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1196 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1195.x, x_1196.y, x_1195.y, x_1196.w);
        let x_1198 : vec4<f32> = u_xlat11;
        let x_1202 : vec2<f32> = clamp(vec2<f32>(x_1198.x, x_1198.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1203 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1202.x, x_1203.y, x_1202.y, x_1203.w);
        let x_1205 : u32 = u_xlatu45;
        let x_1208 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1205)];
        let x_1210 : vec4<f32> = u_xlat11;
        let x_1213 : u32 = u_xlatu45;
        let x_1216 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1213)];
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(x_1210.x, x_1210.z)) + vec2<f32>(x_1216.z, x_1216.w));
        let x_1219 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1218.x, x_1219.y, x_1218.y, x_1219.w);
      } else {
        let x_1223 : i32 = u_xlati52;
        u_xlatb52 = (x_1223 == 1i);
        let x_1225 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1225);
        let x_1227 : i32 = u_xlati52;
        if ((x_1227 != 0i)) {
          let x_1232 : vec3<f32> = vs_TEXCOORD1;
          let x_1234 : i32 = u_xlati25;
          let x_1237 : i32 = u_xlati25;
          let x_1241 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1234 + 1i) / 4i)][((x_1237 + 1i) % 4i)];
          let x_1243 : vec2<f32> = (vec2<f32>(x_1232.y, x_1232.y) * vec2<f32>(x_1241.x, x_1241.y));
          let x_1244 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1243.x, x_1243.y, x_1244.z, x_1244.w);
          let x_1246 : i32 = u_xlati25;
          let x_1248 : i32 = u_xlati25;
          let x_1251 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_1246 / 4i)][(x_1248 % 4i)];
          let x_1253 : vec3<f32> = vs_TEXCOORD1;
          let x_1256 : vec4<f32> = u_xlat12;
          let x_1258 : vec2<f32> = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1253.x, x_1253.x)) + vec2<f32>(x_1256.x, x_1256.y));
          let x_1259 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
          let x_1261 : i32 = u_xlati25;
          let x_1264 : i32 = u_xlati25;
          let x_1268 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1261 + 2i) / 4i)][((x_1264 + 2i) % 4i)];
          let x_1270 : vec3<f32> = vs_TEXCOORD1;
          let x_1273 : vec4<f32> = u_xlat12;
          let x_1275 : vec2<f32> = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1270.z, x_1270.z)) + vec2<f32>(x_1273.x, x_1273.y));
          let x_1276 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
          let x_1278 : vec4<f32> = u_xlat12;
          let x_1280 : i32 = u_xlati25;
          let x_1283 : i32 = u_xlati25;
          let x_1287 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1280 + 3i) / 4i)][((x_1283 + 3i) % 4i)];
          let x_1289 : vec2<f32> = (vec2<f32>(x_1278.x, x_1278.y) + vec2<f32>(x_1287.x, x_1287.y));
          let x_1290 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
          let x_1292 : vec4<f32> = u_xlat12;
          let x_1295 : vec2<f32> = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1296 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1295.x, x_1295.y, x_1296.z, x_1296.w);
          let x_1298 : vec4<f32> = u_xlat12;
          let x_1300 : vec2<f32> = fract(vec2<f32>(x_1298.x, x_1298.y));
          let x_1301 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
          let x_1303 : u32 = u_xlatu45;
          let x_1306 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1303)];
          let x_1308 : vec4<f32> = u_xlat12;
          let x_1311 : u32 = u_xlatu45;
          let x_1314 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1311)];
          let x_1316 : vec2<f32> = ((vec2<f32>(x_1306.x, x_1306.y) * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1314.z, x_1314.w));
          let x_1317 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1316.x, x_1317.y, x_1316.y, x_1317.w);
        } else {
          let x_1320 : vec3<f32> = vs_TEXCOORD1;
          let x_1322 : i32 = u_xlati25;
          let x_1325 : i32 = u_xlati25;
          let x_1329 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1322 + 1i) / 4i)][((x_1325 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1320.y, x_1320.y, x_1320.y, x_1320.y) * x_1329);
          let x_1331 : i32 = u_xlati25;
          let x_1333 : i32 = u_xlati25;
          let x_1336 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_1331 / 4i)][(x_1333 % 4i)];
          let x_1337 : vec3<f32> = vs_TEXCOORD1;
          let x_1340 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1336 * vec4<f32>(x_1337.x, x_1337.x, x_1337.x, x_1337.x)) + x_1340);
          let x_1342 : i32 = u_xlati25;
          let x_1345 : i32 = u_xlati25;
          let x_1349 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1342 + 2i) / 4i)][((x_1345 + 2i) % 4i)];
          let x_1350 : vec3<f32> = vs_TEXCOORD1;
          let x_1353 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1349 * vec4<f32>(x_1350.z, x_1350.z, x_1350.z, x_1350.z)) + x_1353);
          let x_1355 : vec4<f32> = u_xlat12;
          let x_1356 : i32 = u_xlati25;
          let x_1359 : i32 = u_xlati25;
          let x_1363 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1356 + 3i) / 4i)][((x_1359 + 3i) % 4i)];
          u_xlat12 = (x_1355 + x_1363);
          let x_1365 : vec4<f32> = u_xlat12;
          let x_1367 : vec4<f32> = u_xlat12;
          let x_1369 : vec3<f32> = (vec3<f32>(x_1365.x, x_1365.y, x_1365.z) / vec3<f32>(x_1367.w, x_1367.w, x_1367.w));
          let x_1370 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
          let x_1372 : vec4<f32> = u_xlat12;
          let x_1374 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1372.x, x_1372.y, x_1372.z), vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
          let x_1377 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1377);
          let x_1379 : f32 = u_xlat52;
          let x_1381 : vec4<f32> = u_xlat12;
          let x_1383 : vec3<f32> = (vec3<f32>(x_1379, x_1379, x_1379) * vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
          let x_1384 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
          let x_1386 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1386.x, x_1386.y, x_1386.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1391 : f32 = u_xlat52;
          u_xlat52 = max(x_1391, 0.000001f);
          let x_1394 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1394);
          let x_1397 : f32 = u_xlat52;
          let x_1399 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1397, x_1397, x_1397) * vec3<f32>(x_1399.z, x_1399.x, x_1399.y));
          let x_1403 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1403);
          let x_1407 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1407, 0.0f, 1.0f);
          let x_1413 : vec3<f32> = u_xlat13;
          let x_1416 : vec4<bool> = (vec4<f32>(x_1413.y, x_1413.y, x_1413.z, x_1413.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1417 : vec2<bool> = vec2<bool>(x_1416.x, x_1416.z);
          let x_1418 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1417.x, x_1418.y, x_1417.y);
          let x_1422 : bool = u_xlatb25.x;
          if (x_1422) {
            let x_1427 : f32 = u_xlat13.x;
            x_1423 = x_1427;
          } else {
            let x_1430 : f32 = u_xlat13.x;
            x_1423 = -(x_1430);
          }
          let x_1432 : f32 = x_1423;
          u_xlat25.x = x_1432;
          let x_1435 : bool = u_xlatb25.z;
          if (x_1435) {
            let x_1440 : f32 = u_xlat13.x;
            x_1436 = x_1440;
          } else {
            let x_1443 : f32 = u_xlat13.x;
            x_1436 = -(x_1443);
          }
          let x_1445 : f32 = x_1436;
          u_xlat25.z = x_1445;
          let x_1447 : vec4<f32> = u_xlat12;
          let x_1449 : f32 = u_xlat52;
          let x_1452 : vec3<f32> = u_xlat25;
          let x_1454 : vec2<f32> = ((vec2<f32>(x_1447.x, x_1447.y) * vec2<f32>(x_1449, x_1449)) + vec2<f32>(x_1452.x, x_1452.z));
          let x_1455 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1454.x, x_1455.y, x_1454.y);
          let x_1457 : vec3<f32> = u_xlat25;
          let x_1460 : vec2<f32> = ((vec2<f32>(x_1457.x, x_1457.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1461 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1460.x, x_1461.y, x_1460.y);
          let x_1463 : vec3<f32> = u_xlat25;
          let x_1467 : vec2<f32> = clamp(vec2<f32>(x_1463.x, x_1463.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1468 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1467.x, x_1468.y, x_1467.y);
          let x_1470 : u32 = u_xlatu45;
          let x_1473 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1470)];
          let x_1475 : vec3<f32> = u_xlat25;
          let x_1478 : u32 = u_xlatu45;
          let x_1481 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1478)];
          let x_1483 : vec2<f32> = ((vec2<f32>(x_1473.x, x_1473.y) * vec2<f32>(x_1475.x, x_1475.z)) + vec2<f32>(x_1481.z, x_1481.w));
          let x_1484 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1483.x, x_1484.y, x_1483.y, x_1484.w);
        }
      }
      let x_1491 : vec4<f32> = u_xlat11;
      let x_1494 : f32 = x_44.x_GlobalMipBias.x;
      let x_1495 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1491.x, x_1491.z), x_1494);
      u_xlat11 = x_1495;
      let x_1497 : bool = u_xlatb21.y;
      if (x_1497) {
        let x_1502 : f32 = u_xlat11.w;
        x_1498 = x_1502;
      } else {
        let x_1505 : f32 = u_xlat11.x;
        x_1498 = x_1505;
      }
      let x_1506 : f32 = x_1498;
      u_xlat52 = x_1506;
      let x_1508 : bool = u_xlatb21.x;
      if (x_1508) {
        let x_1512 : vec4<f32> = u_xlat11;
        x_1509 = vec3<f32>(x_1512.x, x_1512.y, x_1512.z);
      } else {
        let x_1515 : f32 = u_xlat52;
        x_1509 = vec3<f32>(x_1515, x_1515, x_1515);
      }
      let x_1517 : vec3<f32> = x_1509;
      let x_1518 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1517.x, x_1517.y, x_1517.z, x_1518.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1524 : vec4<f32> = u_xlat11;
    let x_1526 : u32 = u_xlatu45;
    let x_1529 : vec4<f32> = x_1003.x_AdditionalLightsColor[bitcast<i32>(x_1526)];
    let x_1531 : vec3<f32> = (vec3<f32>(x_1524.x, x_1524.y, x_1524.z) * vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
    let x_1532 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
    let x_1534 : vec3<f32> = u_xlat7;
    let x_1536 : vec4<f32> = u_xlat11;
    let x_1538 : vec3<f32> = (vec3<f32>(x_1534.x, x_1534.x, x_1534.x) * vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
    let x_1539 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1538.x, x_1538.y, x_1538.z, x_1539.w);
    let x_1541 : vec3<f32> = u_xlat3;
    let x_1542 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1541, x_1542);
    let x_1544 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1544, 0.0f, 1.0f);
    let x_1546 : f32 = u_xlat45;
    let x_1547 : f32 = u_xlat49;
    u_xlat45 = (x_1546 * x_1547);
    let x_1549 : f32 = u_xlat45;
    let x_1551 : vec4<f32> = u_xlat11;
    let x_1553 : vec3<f32> = (vec3<f32>(x_1549, x_1549, x_1549) * vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
    let x_1554 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
    let x_1556 : vec3<f32> = u_xlat23;
    let x_1557 : f32 = u_xlat50;
    let x_1560 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_1556 * vec3<f32>(x_1557, x_1557, x_1557)) + x_1560);
    let x_1562 : vec3<f32> = u_xlat23;
    let x_1563 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1562, x_1563);
    let x_1565 : f32 = u_xlat45;
    u_xlat45 = max(x_1565, 1.17549435e-37f);
    let x_1567 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1567);
    let x_1569 : f32 = u_xlat45;
    let x_1571 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1569, x_1569, x_1569) * x_1571);
    let x_1573 : vec3<f32> = u_xlat3;
    let x_1574 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1573, x_1574);
    let x_1576 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1576, 0.0f, 1.0f);
    let x_1578 : vec3<f32> = u_xlat10;
    let x_1579 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1578, x_1579);
    let x_1581 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1581, 0.0f, 1.0f);
    let x_1583 : f32 = u_xlat45;
    let x_1584 : f32 = u_xlat45;
    u_xlat45 = (x_1583 * x_1584);
    let x_1586 : f32 = u_xlat45;
    let x_1588 : f32 = u_xlat9.x;
    u_xlat45 = ((x_1586 * x_1588) + 1.000010014f);
    let x_1591 : f32 = u_xlat49;
    let x_1592 : f32 = u_xlat49;
    u_xlat49 = (x_1591 * x_1592);
    let x_1594 : f32 = u_xlat45;
    let x_1595 : f32 = u_xlat45;
    u_xlat45 = (x_1594 * x_1595);
    let x_1597 : f32 = u_xlat49;
    u_xlat49 = max(x_1597, 0.100000001f);
    let x_1599 : f32 = u_xlat45;
    let x_1600 : f32 = u_xlat49;
    u_xlat45 = (x_1599 * x_1600);
    let x_1602 : f32 = u_xlat47;
    let x_1603 : f32 = u_xlat45;
    u_xlat45 = (x_1602 * x_1603);
    let x_1605 : f32 = u_xlat46;
    let x_1606 : f32 = u_xlat45;
    u_xlat45 = (x_1605 / x_1606);
    let x_1608 : vec4<f32> = u_xlat0;
    let x_1610 : f32 = u_xlat45;
    let x_1613 : vec3<f32> = u_xlat15;
    u_xlat23 = ((vec3<f32>(x_1608.x, x_1608.y, x_1608.z) * vec3<f32>(x_1610, x_1610, x_1610)) + x_1613);
    let x_1615 : vec3<f32> = u_xlat23;
    let x_1616 : vec4<f32> = u_xlat11;
    let x_1619 : vec4<f32> = u_xlat8;
    let x_1621 : vec3<f32> = ((x_1615 * vec3<f32>(x_1616.x, x_1616.y, x_1616.z)) + vec3<f32>(x_1619.x, x_1619.y, x_1619.z));
    let x_1622 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);

    continuing {
      let x_1624 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1624 + bitcast<u32>(1i));
    }
  }
  let x_1626 : vec4<f32> = u_xlat6;
  let x_1628 : f32 = u_xlat48;
  let x_1631 : vec4<f32> = u_xlat5;
  let x_1633 : vec3<f32> = ((vec3<f32>(x_1626.x, x_1626.y, x_1626.z) * vec3<f32>(x_1628, x_1628, x_1628)) + vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
  let x_1634 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
  let x_1636 : vec4<f32> = u_xlat8;
  let x_1638 : vec4<f32> = u_xlat0;
  let x_1640 : vec3<f32> = (vec3<f32>(x_1636.x, x_1636.y, x_1636.z) + vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
  let x_1641 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  let x_1645 : vec3<f32> = u_xlat2;
  let x_1647 : vec4<f32> = x_57.x_EmissionColor;
  let x_1650 : vec4<f32> = u_xlat0;
  let x_1652 : vec3<f32> = ((x_1645 * vec3<f32>(x_1647.x, x_1647.y, x_1647.z)) + vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
  let x_1653 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
  let x_1658 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1658 == 1.0f);
  let x_1660 : bool = u_xlatb0;
  if (x_1660) {
    let x_1665 : f32 = u_xlat1.x;
    x_1661 = x_1665;
  } else {
    x_1661 = 1.0f;
  }
  let x_1667 : f32 = x_1661;
  SV_Target0.w = x_1667;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

