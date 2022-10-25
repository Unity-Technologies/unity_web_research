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
  x_DitheringTextureInvSize : f32,
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

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_187 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_656 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1096 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1200 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb42 : bool;
  var u_xlat44 : f32;
  var u_xlat3 : vec3<f32>;
  var x_164 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var u_xlat45 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var u_xlat34 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlatb18 : vec2<bool>;
  var u_xlatb32 : bool;
  var x_603 : f32;
  var u_xlat32 : vec2<f32>;
  var x_725 : f32;
  var x_737 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu48 : u32;
  var u_xlati35 : i32;
  var u_xlat48 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var u_xlat49 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1494 : f32;
  var x_1507 : f32;
  var x_1559 : f32;
  var x_1570 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1739 : f32;
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
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat42 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat42;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat42;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat42 = x_110;
  let x_111 : f32 = u_xlat42;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat42 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat42;
  u_xlatb42 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb42;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat44;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_154 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_154;
  let x_157 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_157;
  let x_161 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_161;
  let x_163 : bool = u_xlatb42;
  if (x_163) {
    let x_167 : vec3<f32> = u_xlat2;
    x_164 = x_167;
  } else {
    let x_169 : vec3<f32> = u_xlat3;
    x_164 = x_169;
  }
  let x_170 : vec3<f32> = x_164;
  u_xlat2 = x_170;
  let x_172 : vec3<f32> = vs_TEXCOORD2;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_172, x_173);
  let x_175 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat42;
  let x_179 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_177, x_177, x_177) * x_179);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres0;
  let x_192 : vec3<f32> = (x_182 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec3<f32> = vs_TEXCOORD1;
  let x_198 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres1;
  let x_201 : vec3<f32> = (x_196 + -(vec3<f32>(x_198.x, x_198.y, x_198.z)));
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec3<f32> = vs_TEXCOORD1;
  let x_208 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_205 + -(vec3<f32>(x_208.x, x_208.y, x_208.z)));
  let x_213 : vec3<f32> = vs_TEXCOORD1;
  let x_216 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres3;
  let x_219 : vec3<f32> = (x_213 + -(vec3<f32>(x_216.x, x_216.y, x_216.z)));
  let x_220 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat4;
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_222.x, x_222.y, x_222.z), vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_234 : vec3<f32> = u_xlat6;
  let x_235 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_234, x_235);
  let x_238 : vec4<f32> = u_xlat7;
  let x_240 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_247 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = x_187.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_247 < x_250);
  let x_253 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_253);
  let x_257 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_257);
  let x_261 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_261);
  let x_265 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_265);
  let x_269 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_269);
  let x_275 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_275);
  let x_279 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_279);
  let x_282 : vec4<f32> = u_xlat4;
  let x_284 : vec4<f32> = u_xlat5;
  let x_286 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) + vec3<f32>(x_284.y, x_284.z, x_284.w));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec4<f32> = u_xlat4;
  let x_292 : vec3<f32> = max(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_293.x, x_292.x, x_292.y, x_292.z);
  let x_295 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_295, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_301 : f32 = u_xlat42;
  u_xlat42 = (-(x_301) + 4.0f);
  let x_306 : f32 = u_xlat42;
  u_xlatu42 = u32(x_306);
  let x_310 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_310) << bitcast<u32>(2i));
  let x_313 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : i32 = u_xlati42;
  let x_318 : i32 = u_xlati42;
  let x_322 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_315 + 1i) / 4i)][((x_318 + 1i) % 4i)];
  let x_324 : vec3<f32> = (vec3<f32>(x_313.y, x_313.y, x_313.y) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : i32 = u_xlati42;
  let x_329 : i32 = u_xlati42;
  let x_332 : vec4<f32> = x_187.x_MainLightWorldToShadow[(x_327 / 4i)][(x_329 % 4i)];
  let x_334 : vec3<f32> = vs_TEXCOORD1;
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.x, x_334.x, x_334.x)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : i32 = u_xlati42;
  let x_345 : i32 = u_xlati42;
  let x_349 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_342 + 2i) / 4i)][((x_345 + 2i) % 4i)];
  let x_351 : vec3<f32> = vs_TEXCOORD1;
  let x_354 : vec4<f32> = u_xlat4;
  let x_356 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_351.z, x_351.z, x_351.z)) + vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat4;
  let x_361 : i32 = u_xlati42;
  let x_364 : i32 = u_xlati42;
  let x_368 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_361 + 3i) / 4i)][((x_364 + 3i) % 4i)];
  let x_370 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = vs_TEXCOORD1.y;
  let x_376 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat42 = (x_374 * x_376);
  let x_379 : f32 = x_44.unity_MatrixV[0i].z;
  let x_381 : f32 = vs_TEXCOORD1.x;
  let x_383 : f32 = u_xlat42;
  u_xlat42 = ((x_379 * x_381) + x_383);
  let x_386 : f32 = x_44.unity_MatrixV[2i].z;
  let x_388 : f32 = vs_TEXCOORD1.z;
  let x_390 : f32 = u_xlat42;
  u_xlat42 = ((x_386 * x_388) + x_390);
  let x_392 : f32 = u_xlat42;
  let x_394 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat42 = (x_392 + x_394);
  let x_396 : f32 = u_xlat42;
  let x_400 : f32 = x_44.x_ProjectionParams.y;
  u_xlat42 = (-(x_396) + -(x_400));
  let x_403 : f32 = u_xlat42;
  u_xlat42 = max(x_403, 0.0f);
  let x_405 : f32 = u_xlat42;
  let x_408 : f32 = x_44.unity_FogParams.x;
  u_xlat42 = (x_405 * x_408);
  let x_416 : vec2<f32> = vs_TEXCOORD8;
  let x_418 : f32 = x_44.x_GlobalMipBias.x;
  let x_419 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_416, x_418);
  let x_420 : vec3<f32> = vec3<f32>(x_419.x, x_419.y, x_419.z);
  let x_421 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_425 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
  let x_430 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_426.x, x_426.y));
  let x_431 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_430.x, x_430.y, x_431.z);
  let x_433 : vec3<f32> = u_xlat6;
  let x_435 : vec4<f32> = hlslcc_FragCoord;
  let x_437 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_435.x, x_435.y));
  let x_438 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_437.x, x_437.y, x_438.z);
  let x_441 : f32 = u_xlat6.y;
  let x_444 : f32 = x_44.x_ScaleBiasRt.x;
  let x_447 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_441 * x_444) + x_447);
  let x_449 : f32 = u_xlat44;
  u_xlat6.z = (-(x_449) + 1.0f);
  let x_454 : f32 = x_57.x_Metallic;
  u_xlat44 = ((-(x_454) * 0.959999979f) + 0.959999979f);
  let x_460 : f32 = u_xlat44;
  let x_463 : f32 = x_57.x_Smoothness;
  u_xlat45 = (-(x_460) + x_463);
  let x_466 : vec4<f32> = u_xlat1;
  let x_468 : f32 = u_xlat44;
  u_xlat15 = (vec3<f32>(x_466.y, x_466.z, x_466.w) * vec3<f32>(x_468, x_468, x_468));
  let x_471 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = x_57.x_BaseColor;
  let x_479 : vec3<f32> = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(x_474.x, x_474.y, x_474.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_480 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_483 : f32 = x_57.x_Metallic;
  let x_485 : f32 = x_57.x_Metallic;
  let x_487 : f32 = x_57.x_Metallic;
  let x_488 : vec3<f32> = vec3<f32>(x_483, x_485, x_487);
  let x_493 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.y, x_488.z) * vec3<f32>(x_493.x, x_493.y, x_493.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_499 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_502 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_502) + 1.0f);
  let x_506 : f32 = u_xlat44;
  let x_507 : f32 = u_xlat44;
  u_xlat46 = (x_506 * x_507);
  let x_509 : f32 = u_xlat46;
  u_xlat46 = max(x_509, 0.0078125f);
  let x_513 : f32 = u_xlat46;
  let x_514 : f32 = u_xlat46;
  u_xlat47 = (x_513 * x_514);
  let x_516 : f32 = u_xlat45;
  u_xlat45 = (x_516 + 1.0f);
  let x_518 : f32 = u_xlat45;
  u_xlat45 = clamp(x_518, 0.0f, 1.0f);
  let x_521 : f32 = u_xlat46;
  u_xlat20 = ((x_521 * 4.0f) + 2.0f);
  let x_529 : vec3<f32> = u_xlat6;
  let x_532 : f32 = x_44.x_GlobalMipBias.x;
  let x_533 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_529.x, x_529.z), x_532);
  u_xlat6.x = x_533.x;
  let x_538 : f32 = u_xlat6.x;
  u_xlat34 = (x_538 + -1.0f);
  let x_541 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_542 : f32 = u_xlat34;
  u_xlat34 = ((x_541 * x_542) + 1.0f);
  let x_546 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_546, 1.0f);
  let x_550 : vec4<f32> = u_xlat4;
  let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
  let x_553 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_551.x, x_551.y, x_553);
  let x_565 : vec3<f32> = txVec0;
  let x_567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_565.xy, x_565.z);
  u_xlat4.x = x_567;
  let x_572 : f32 = x_187.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_572) + 1.0f);
  let x_577 : f32 = u_xlat4.x;
  let x_579 : f32 = x_187.x_MainLightShadowParams.x;
  let x_582 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_577 * x_579) + x_582);
  let x_589 : f32 = u_xlat4.z;
  u_xlatb18.x = (0.0f >= x_589);
  let x_594 : f32 = u_xlat4.z;
  u_xlatb32 = (x_594 >= 1.0f);
  let x_596 : bool = u_xlatb32;
  let x_598 : bool = u_xlatb18.x;
  u_xlatb18.x = (x_596 | x_598);
  let x_602 : bool = u_xlatb18.x;
  if (x_602) {
    x_603 = 1.0f;
  } else {
    let x_608 : f32 = u_xlat4.x;
    x_603 = x_608;
  }
  let x_609 : f32 = x_603;
  u_xlat4.x = x_609;
  let x_611 : vec3<f32> = vs_TEXCOORD1;
  let x_613 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_615 : vec3<f32> = (x_611 + -(x_613));
  let x_616 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat7;
  let x_620 : vec4<f32> = u_xlat7;
  u_xlat18.x = dot(vec3<f32>(x_618.x, x_618.y, x_618.z), vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_625 : f32 = u_xlat18.x;
  let x_627 : f32 = x_187.x_MainLightShadowParams.z;
  let x_630 : f32 = x_187.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_625 * x_627) + x_630);
  let x_634 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_634, 0.0f, 1.0f);
  let x_639 : f32 = u_xlat4.x;
  u_xlat32.x = (-(x_639) + 1.0f);
  let x_644 : f32 = u_xlat18.x;
  let x_646 : f32 = u_xlat32.x;
  let x_649 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_644 * x_646) + x_649);
  let x_658 : f32 = x_656.x_MainLightCookieTextureFormat;
  u_xlatb18.x = !((x_658 == -1.0f));
  let x_662 : bool = u_xlatb18.x;
  if (x_662) {
    let x_665 : vec3<f32> = vs_TEXCOORD1;
    let x_668 : vec4<f32> = x_656.x_MainLightWorldToLight[1i];
    u_xlat18 = (vec2<f32>(x_665.y, x_665.y) * vec2<f32>(x_668.x, x_668.y));
    let x_672 : vec4<f32> = x_656.x_MainLightWorldToLight[0i];
    let x_674 : vec3<f32> = vs_TEXCOORD1;
    let x_677 : vec2<f32> = u_xlat18;
    u_xlat18 = ((vec2<f32>(x_672.x, x_672.y) * vec2<f32>(x_674.x, x_674.x)) + x_677);
    let x_680 : vec4<f32> = x_656.x_MainLightWorldToLight[2i];
    let x_682 : vec3<f32> = vs_TEXCOORD1;
    let x_685 : vec2<f32> = u_xlat18;
    u_xlat18 = ((vec2<f32>(x_680.x, x_680.y) * vec2<f32>(x_682.z, x_682.z)) + x_685);
    let x_687 : vec2<f32> = u_xlat18;
    let x_689 : vec4<f32> = x_656.x_MainLightWorldToLight[3i];
    u_xlat18 = (x_687 + vec2<f32>(x_689.x, x_689.y));
    let x_692 : vec2<f32> = u_xlat18;
    u_xlat18 = ((x_692 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_702 : vec2<f32> = u_xlat18;
    let x_704 : f32 = x_44.x_GlobalMipBias.x;
    let x_705 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_702, x_704);
    u_xlat7 = x_705;
    let x_707 : f32 = x_656.x_MainLightCookieTextureFormat;
    let x_709 : f32 = x_656.x_MainLightCookieTextureFormat;
    let x_711 : f32 = x_656.x_MainLightCookieTextureFormat;
    let x_713 : f32 = x_656.x_MainLightCookieTextureFormat;
    let x_714 : vec4<f32> = vec4<f32>(x_707, x_709, x_711, x_713);
    let x_721 : vec4<bool> = (vec4<f32>(x_714.x, x_714.y, x_714.z, x_714.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb18 = vec2<bool>(x_721.x, x_721.y);
    let x_724 : bool = u_xlatb18.y;
    if (x_724) {
      let x_729 : f32 = u_xlat7.w;
      x_725 = x_729;
    } else {
      let x_732 : f32 = u_xlat7.x;
      x_725 = x_732;
    }
    let x_733 : f32 = x_725;
    u_xlat32.x = x_733;
    let x_736 : bool = u_xlatb18.x;
    if (x_736) {
      let x_740 : vec4<f32> = u_xlat7;
      x_737 = vec3<f32>(x_740.x, x_740.y, x_740.z);
    } else {
      let x_743 : vec2<f32> = u_xlat32;
      x_737 = vec3<f32>(x_743.x, x_743.x, x_743.x);
    }
    let x_745 : vec3<f32> = x_737;
    let x_746 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_752 : vec4<f32> = u_xlat7;
  let x_755 : vec4<f32> = x_44.x_MainLightColor;
  let x_757 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : f32 = u_xlat34;
  let x_762 : vec4<f32> = u_xlat7;
  let x_764 : vec3<f32> = (vec3<f32>(x_760, x_760, x_760) * vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec3<f32> = u_xlat2;
  let x_769 : vec3<f32> = u_xlat3;
  u_xlat18.x = dot(-(x_767), x_769);
  let x_773 : f32 = u_xlat18.x;
  let x_775 : f32 = u_xlat18.x;
  u_xlat18.x = (x_773 + x_775);
  let x_779 : vec3<f32> = u_xlat3;
  let x_780 : vec2<f32> = u_xlat18;
  let x_784 : vec3<f32> = u_xlat2;
  let x_786 : vec3<f32> = ((x_779 * -(vec3<f32>(x_780.x, x_780.x, x_780.x))) + -(x_784));
  let x_787 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec3<f32> = u_xlat3;
  let x_790 : vec3<f32> = u_xlat2;
  u_xlat18.x = dot(x_789, x_790);
  let x_794 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_794, 0.0f, 1.0f);
  let x_798 : f32 = u_xlat18.x;
  u_xlat18.x = (-(x_798) + 1.0f);
  let x_803 : f32 = u_xlat18.x;
  let x_805 : f32 = u_xlat18.x;
  u_xlat18.x = (x_803 * x_805);
  let x_809 : f32 = u_xlat18.x;
  let x_811 : f32 = u_xlat18.x;
  u_xlat18.x = (x_809 * x_811);
  let x_814 : f32 = u_xlat44;
  u_xlat32.x = ((-(x_814) * 0.699999988f) + 1.700000048f);
  let x_821 : f32 = u_xlat44;
  let x_823 : f32 = u_xlat32.x;
  u_xlat44 = (x_821 * x_823);
  let x_825 : f32 = u_xlat44;
  u_xlat44 = (x_825 * 6.0f);
  let x_836 : vec4<f32> = u_xlat8;
  let x_838 : f32 = u_xlat44;
  let x_839 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_836.x, x_836.y, x_836.z), x_838);
  u_xlat8 = x_839;
  let x_841 : f32 = u_xlat8.w;
  u_xlat44 = (x_841 + -1.0f);
  let x_844 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_845 : f32 = u_xlat44;
  u_xlat44 = ((x_844 * x_845) + 1.0f);
  let x_848 : f32 = u_xlat44;
  u_xlat44 = max(x_848, 0.0f);
  let x_850 : f32 = u_xlat44;
  u_xlat44 = log2(x_850);
  let x_852 : f32 = u_xlat44;
  let x_854 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_852 * x_854);
  let x_856 : f32 = u_xlat44;
  u_xlat44 = exp2(x_856);
  let x_858 : f32 = u_xlat44;
  let x_860 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_858 * x_860);
  let x_862 : vec4<f32> = u_xlat8;
  let x_864 : f32 = u_xlat44;
  let x_866 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) * vec3<f32>(x_864, x_864, x_864));
  let x_867 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : f32 = u_xlat46;
  let x_871 : f32 = u_xlat46;
  u_xlat32 = ((vec2<f32>(x_869, x_869) * vec2<f32>(x_871, x_871)) + vec2<f32>(-1.0f, 1.0f));
  let x_877 : f32 = u_xlat32.y;
  u_xlat44 = (1.0f / x_877);
  let x_880 : vec4<f32> = u_xlat0;
  let x_883 : f32 = u_xlat45;
  u_xlat9 = (-(vec3<f32>(x_880.x, x_880.y, x_880.z)) + vec3<f32>(x_883, x_883, x_883));
  let x_886 : vec2<f32> = u_xlat18;
  let x_888 : vec3<f32> = u_xlat9;
  let x_890 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_886.x, x_886.x, x_886.x) * x_888) + vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : f32 = u_xlat44;
  let x_895 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_893, x_893, x_893) * x_895);
  let x_897 : vec4<f32> = u_xlat8;
  let x_899 : vec3<f32> = u_xlat9;
  let x_900 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) * x_899);
  let x_901 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat5;
  let x_905 : vec3<f32> = u_xlat15;
  let x_907 : vec4<f32> = u_xlat8;
  let x_909 : vec3<f32> = ((vec3<f32>(x_903.x, x_903.y, x_903.z) * x_905) + vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_913 : f32 = u_xlat4.x;
  let x_915 : f32 = x_95.unity_LightData.z;
  u_xlat44 = (x_913 * x_915);
  let x_917 : vec3<f32> = u_xlat3;
  let x_919 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat45 = dot(x_917, vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : f32 = u_xlat45;
  u_xlat45 = clamp(x_922, 0.0f, 1.0f);
  let x_924 : f32 = u_xlat44;
  let x_925 : f32 = u_xlat45;
  u_xlat44 = (x_924 * x_925);
  let x_927 : f32 = u_xlat44;
  let x_929 : vec4<f32> = u_xlat7;
  let x_931 : vec3<f32> = (vec3<f32>(x_927, x_927, x_927) * vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_931.z);
  let x_934 : vec3<f32> = u_xlat2;
  let x_936 : vec4<f32> = x_44.x_MainLightPosition;
  let x_938 : vec3<f32> = (x_934 + vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat7;
  let x_943 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_941.x, x_941.y, x_941.z), vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : f32 = u_xlat44;
  u_xlat44 = max(x_946, 1.17549435e-37f);
  let x_949 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_949);
  let x_951 : f32 = u_xlat44;
  let x_953 : vec4<f32> = u_xlat7;
  let x_955 : vec3<f32> = (vec3<f32>(x_951, x_951, x_951) * vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : vec3<f32> = u_xlat3;
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(x_958, vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : f32 = u_xlat44;
  u_xlat44 = clamp(x_962, 0.0f, 1.0f);
  let x_965 : vec4<f32> = x_44.x_MainLightPosition;
  let x_967 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : f32 = u_xlat45;
  u_xlat45 = clamp(x_970, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat44;
  let x_973 : f32 = u_xlat44;
  u_xlat44 = (x_972 * x_973);
  let x_975 : f32 = u_xlat44;
  let x_977 : f32 = u_xlat32.x;
  u_xlat44 = ((x_975 * x_977) + 1.000010014f);
  let x_981 : f32 = u_xlat45;
  let x_982 : f32 = u_xlat45;
  u_xlat45 = (x_981 * x_982);
  let x_984 : f32 = u_xlat44;
  let x_985 : f32 = u_xlat44;
  u_xlat44 = (x_984 * x_985);
  let x_987 : f32 = u_xlat45;
  u_xlat45 = max(x_987, 0.100000001f);
  let x_990 : f32 = u_xlat44;
  let x_991 : f32 = u_xlat45;
  u_xlat44 = (x_990 * x_991);
  let x_993 : f32 = u_xlat20;
  let x_994 : f32 = u_xlat44;
  u_xlat44 = (x_993 * x_994);
  let x_996 : f32 = u_xlat47;
  let x_997 : f32 = u_xlat44;
  u_xlat44 = (x_996 / x_997);
  let x_999 : vec4<f32> = u_xlat0;
  let x_1001 : f32 = u_xlat44;
  let x_1004 : vec3<f32> = u_xlat15;
  let x_1005 : vec3<f32> = ((vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(x_1001, x_1001, x_1001)) + x_1004);
  let x_1006 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat4;
  let x_1010 : vec4<f32> = u_xlat7;
  let x_1012 : vec3<f32> = (vec3<f32>(x_1008.x, x_1008.y, x_1008.w) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1013 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1012.z);
  let x_1016 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1018 : f32 = x_95.unity_LightData.y;
  u_xlat44 = min(x_1016, x_1018);
  let x_1021 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1021));
  let x_1026 : f32 = x_656.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1028 : f32 = x_656.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1030 : f32 = x_656.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1032 : f32 = x_656.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1033 : vec4<f32> = vec4<f32>(x_1026, x_1028, x_1030, x_1032);
  let x_1039 : vec4<bool> = (vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1033.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1039.x, x_1039.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1050 : u32 = u_xlatu_loop_1;
    let x_1051 : u32 = u_xlatu44;
    if ((x_1050 < x_1051)) {
    } else {
      break;
    }
    let x_1054 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1054 >> 2u);
    let x_1057 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1057 & 3u));
    let x_1061 : u32 = u_xlatu48;
    let x_1064 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1061)];
    let x_1074 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1079 : vec4<u32> = indexable[x_1074];
    u_xlat48 = dot(x_1064, bitcast<vec4<f32>>(x_1079));
    let x_1082 : f32 = u_xlat48;
    u_xlatu48 = bitcast<u32>(i32(x_1082));
    let x_1085 : vec3<f32> = vs_TEXCOORD1;
    let x_1097 : u32 = u_xlatu48;
    let x_1100 : vec4<f32> = x_1096.x_AdditionalLightsPosition[bitcast<i32>(x_1097)];
    let x_1103 : u32 = u_xlatu48;
    let x_1106 : vec4<f32> = x_1096.x_AdditionalLightsPosition[bitcast<i32>(x_1103)];
    u_xlat9 = ((-(x_1085) * vec3<f32>(x_1100.w, x_1100.w, x_1100.w)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
    let x_1110 : vec3<f32> = u_xlat9;
    let x_1111 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1110, x_1111);
    let x_1113 : f32 = u_xlat35;
    u_xlat35 = max(x_1113, 6.10351562e-05f);
    let x_1117 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1117);
    let x_1120 : f32 = u_xlat49;
    let x_1122 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1120, x_1120, x_1120) * x_1122);
    let x_1125 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1125);
    let x_1127 : f32 = u_xlat35;
    let x_1128 : u32 = u_xlatu48;
    let x_1131 : f32 = x_1096.x_AdditionalLightsAttenuation[bitcast<i32>(x_1128)].x;
    u_xlat35 = (x_1127 * x_1131);
    let x_1133 : f32 = u_xlat35;
    let x_1135 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1133) * x_1135) + 1.0f);
    let x_1138 : f32 = u_xlat35;
    u_xlat35 = max(x_1138, 0.0f);
    let x_1140 : f32 = u_xlat35;
    let x_1141 : f32 = u_xlat35;
    u_xlat35 = (x_1140 * x_1141);
    let x_1143 : f32 = u_xlat35;
    let x_1144 : f32 = u_xlat50;
    u_xlat35 = (x_1143 * x_1144);
    let x_1146 : u32 = u_xlatu48;
    let x_1149 : vec4<f32> = x_1096.x_AdditionalLightsSpotDir[bitcast<i32>(x_1146)];
    let x_1151 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1149.x, x_1149.y, x_1149.z), x_1151);
    let x_1153 : f32 = u_xlat50;
    let x_1154 : u32 = u_xlatu48;
    let x_1157 : f32 = x_1096.x_AdditionalLightsAttenuation[bitcast<i32>(x_1154)].z;
    let x_1159 : u32 = u_xlatu48;
    let x_1162 : f32 = x_1096.x_AdditionalLightsAttenuation[bitcast<i32>(x_1159)].w;
    u_xlat50 = ((x_1153 * x_1157) + x_1162);
    let x_1164 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1164, 0.0f, 1.0f);
    let x_1166 : f32 = u_xlat50;
    let x_1167 : f32 = u_xlat50;
    u_xlat50 = (x_1166 * x_1167);
    let x_1169 : f32 = u_xlat35;
    let x_1170 : f32 = u_xlat50;
    u_xlat35 = (x_1169 * x_1170);
    let x_1173 : u32 = u_xlatu48;
    u_xlatu50 = (x_1173 >> 5u);
    let x_1176 : u32 = u_xlatu48;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1176) & 31i)));
    let x_1182 : i32 = u_xlati51;
    let x_1184 : u32 = u_xlatu50;
    let x_1187 : f32 = x_656.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1184)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1182) & bitcast<u32>(x_1187)));
    let x_1191 : i32 = u_xlati50;
    if ((x_1191 != 0i)) {
      let x_1201 : u32 = u_xlatu48;
      let x_1204 : f32 = x_1200.x_AdditionalLightsLightTypes[bitcast<i32>(x_1201)].el;
      u_xlati50 = i32(x_1204);
      let x_1206 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1206 != 0i));
      let x_1210 : u32 = u_xlatu48;
      u_xlati52 = (bitcast<i32>(x_1210) << bitcast<u32>(2i));
      let x_1213 : i32 = u_xlati51;
      if ((x_1213 != 0i)) {
        let x_1218 : vec3<f32> = vs_TEXCOORD1;
        let x_1220 : i32 = u_xlati52;
        let x_1223 : i32 = u_xlati52;
        let x_1227 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1220 + 1i) / 4i)][((x_1223 + 1i) % 4i)];
        let x_1229 : vec3<f32> = (vec3<f32>(x_1218.y, x_1218.y, x_1218.y) * vec3<f32>(x_1227.x, x_1227.y, x_1227.w));
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
        let x_1232 : i32 = u_xlati52;
        let x_1234 : i32 = u_xlati52;
        let x_1237 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[(x_1232 / 4i)][(x_1234 % 4i)];
        let x_1239 : vec3<f32> = vs_TEXCOORD1;
        let x_1242 : vec4<f32> = u_xlat11;
        let x_1244 : vec3<f32> = ((vec3<f32>(x_1237.x, x_1237.y, x_1237.w) * vec3<f32>(x_1239.x, x_1239.x, x_1239.x)) + vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
        let x_1245 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1247 : i32 = u_xlati52;
        let x_1250 : i32 = u_xlati52;
        let x_1254 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1247 + 2i) / 4i)][((x_1250 + 2i) % 4i)];
        let x_1256 : vec3<f32> = vs_TEXCOORD1;
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1261 : vec3<f32> = ((vec3<f32>(x_1254.x, x_1254.y, x_1254.w) * vec3<f32>(x_1256.z, x_1256.z, x_1256.z)) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
        let x_1262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1266 : i32 = u_xlati52;
        let x_1269 : i32 = u_xlati52;
        let x_1273 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1266 + 3i) / 4i)][((x_1269 + 3i) % 4i)];
        let x_1275 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) + vec3<f32>(x_1273.x, x_1273.y, x_1273.w));
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat11;
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = (vec2<f32>(x_1278.x, x_1278.y) / vec2<f32>(x_1280.z, x_1280.z));
        let x_1283 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat11;
        let x_1288 : vec2<f32> = ((vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1289 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat11;
        let x_1295 : vec2<f32> = clamp(vec2<f32>(x_1291.x, x_1291.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1296 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1295.x, x_1295.y, x_1296.z, x_1296.w);
        let x_1298 : u32 = u_xlatu48;
        let x_1301 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1298)];
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1306 : u32 = u_xlatu48;
        let x_1309 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1306)];
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1303.x, x_1303.y)) + vec2<f32>(x_1309.z, x_1309.w));
        let x_1312 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
      } else {
        let x_1316 : i32 = u_xlati50;
        u_xlatb50 = (x_1316 == 1i);
        let x_1318 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1318);
        let x_1320 : i32 = u_xlati50;
        if ((x_1320 != 0i)) {
          let x_1325 : vec3<f32> = vs_TEXCOORD1;
          let x_1327 : i32 = u_xlati52;
          let x_1330 : i32 = u_xlati52;
          let x_1334 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1327 + 1i) / 4i)][((x_1330 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1325.y, x_1325.y) * vec2<f32>(x_1334.x, x_1334.y));
          let x_1337 : i32 = u_xlati52;
          let x_1339 : i32 = u_xlati52;
          let x_1342 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[(x_1337 / 4i)][(x_1339 % 4i)];
          let x_1344 : vec3<f32> = vs_TEXCOORD1;
          let x_1347 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1342.x, x_1342.y) * vec2<f32>(x_1344.x, x_1344.x)) + x_1347);
          let x_1349 : i32 = u_xlati52;
          let x_1352 : i32 = u_xlati52;
          let x_1356 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1349 + 2i) / 4i)][((x_1352 + 2i) % 4i)];
          let x_1358 : vec3<f32> = vs_TEXCOORD1;
          let x_1361 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1358.z, x_1358.z)) + x_1361);
          let x_1363 : vec2<f32> = u_xlat39;
          let x_1364 : i32 = u_xlati52;
          let x_1367 : i32 = u_xlati52;
          let x_1371 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1364 + 3i) / 4i)][((x_1367 + 3i) % 4i)];
          u_xlat39 = (x_1363 + vec2<f32>(x_1371.x, x_1371.y));
          let x_1374 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1374 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1377 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1377);
          let x_1379 : u32 = u_xlatu48;
          let x_1382 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1379)];
          let x_1384 : vec2<f32> = u_xlat39;
          let x_1386 : u32 = u_xlatu48;
          let x_1389 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1386)];
          let x_1391 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.y) * x_1384) + vec2<f32>(x_1389.z, x_1389.w));
          let x_1392 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        } else {
          let x_1396 : vec3<f32> = vs_TEXCOORD1;
          let x_1398 : i32 = u_xlati52;
          let x_1401 : i32 = u_xlati52;
          let x_1405 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1398 + 1i) / 4i)][((x_1401 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1396.y, x_1396.y, x_1396.y, x_1396.y) * x_1405);
          let x_1407 : i32 = u_xlati52;
          let x_1409 : i32 = u_xlati52;
          let x_1412 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[(x_1407 / 4i)][(x_1409 % 4i)];
          let x_1413 : vec3<f32> = vs_TEXCOORD1;
          let x_1416 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1412 * vec4<f32>(x_1413.x, x_1413.x, x_1413.x, x_1413.x)) + x_1416);
          let x_1418 : i32 = u_xlati52;
          let x_1421 : i32 = u_xlati52;
          let x_1425 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1418 + 2i) / 4i)][((x_1421 + 2i) % 4i)];
          let x_1426 : vec3<f32> = vs_TEXCOORD1;
          let x_1429 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1425 * vec4<f32>(x_1426.z, x_1426.z, x_1426.z, x_1426.z)) + x_1429);
          let x_1431 : vec4<f32> = u_xlat12;
          let x_1432 : i32 = u_xlati52;
          let x_1435 : i32 = u_xlati52;
          let x_1439 : vec4<f32> = x_1200.x_AdditionalLightsWorldToLights[((x_1432 + 3i) / 4i)][((x_1435 + 3i) % 4i)];
          u_xlat12 = (x_1431 + x_1439);
          let x_1441 : vec4<f32> = u_xlat12;
          let x_1443 : vec4<f32> = u_xlat12;
          let x_1445 : vec3<f32> = (vec3<f32>(x_1441.x, x_1441.y, x_1441.z) / vec3<f32>(x_1443.w, x_1443.w, x_1443.w));
          let x_1446 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
          let x_1448 : vec4<f32> = u_xlat12;
          let x_1450 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1448.x, x_1448.y, x_1448.z), vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
          let x_1453 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1453);
          let x_1455 : f32 = u_xlat50;
          let x_1457 : vec4<f32> = u_xlat12;
          let x_1459 : vec3<f32> = (vec3<f32>(x_1455, x_1455, x_1455) * vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
          let x_1460 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
          let x_1462 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1462.x, x_1462.y, x_1462.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1467 : f32 = u_xlat50;
          u_xlat50 = max(x_1467, 0.000001f);
          let x_1470 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1470);
          let x_1473 : f32 = u_xlat50;
          let x_1475 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1473, x_1473, x_1473) * vec3<f32>(x_1475.z, x_1475.x, x_1475.y));
          let x_1479 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1479);
          let x_1483 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1483, 0.0f, 1.0f);
          let x_1487 : vec3<f32> = u_xlat13;
          let x_1490 : vec4<bool> = (vec4<f32>(x_1487.y, x_1487.z, x_1487.y, x_1487.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1490.x, x_1490.y);
          let x_1493 : bool = u_xlatb39.x;
          if (x_1493) {
            let x_1498 : f32 = u_xlat13.x;
            x_1494 = x_1498;
          } else {
            let x_1501 : f32 = u_xlat13.x;
            x_1494 = -(x_1501);
          }
          let x_1503 : f32 = x_1494;
          u_xlat39.x = x_1503;
          let x_1506 : bool = u_xlatb39.y;
          if (x_1506) {
            let x_1511 : f32 = u_xlat13.x;
            x_1507 = x_1511;
          } else {
            let x_1514 : f32 = u_xlat13.x;
            x_1507 = -(x_1514);
          }
          let x_1516 : f32 = x_1507;
          u_xlat39.y = x_1516;
          let x_1518 : vec4<f32> = u_xlat12;
          let x_1520 : f32 = u_xlat50;
          let x_1523 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(x_1520, x_1520)) + x_1523);
          let x_1525 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1525 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1528 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1528, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1532 : u32 = u_xlatu48;
          let x_1535 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1532)];
          let x_1537 : vec2<f32> = u_xlat39;
          let x_1539 : u32 = u_xlatu48;
          let x_1542 : vec4<f32> = x_1200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1539)];
          let x_1544 : vec2<f32> = ((vec2<f32>(x_1535.x, x_1535.y) * x_1537) + vec2<f32>(x_1542.z, x_1542.w));
          let x_1545 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1544.x, x_1544.y, x_1545.z, x_1545.w);
        }
      }
      let x_1552 : vec4<f32> = u_xlat11;
      let x_1555 : f32 = x_44.x_GlobalMipBias.x;
      let x_1556 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1552.x, x_1552.y), x_1555);
      u_xlat11 = x_1556;
      let x_1558 : bool = u_xlatb7.y;
      if (x_1558) {
        let x_1563 : f32 = u_xlat11.w;
        x_1559 = x_1563;
      } else {
        let x_1566 : f32 = u_xlat11.x;
        x_1559 = x_1566;
      }
      let x_1567 : f32 = x_1559;
      u_xlat50 = x_1567;
      let x_1569 : bool = u_xlatb7.x;
      if (x_1569) {
        let x_1573 : vec4<f32> = u_xlat11;
        x_1570 = vec3<f32>(x_1573.x, x_1573.y, x_1573.z);
      } else {
        let x_1576 : f32 = u_xlat50;
        x_1570 = vec3<f32>(x_1576, x_1576, x_1576);
      }
      let x_1578 : vec3<f32> = x_1570;
      let x_1579 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1585 : vec4<f32> = u_xlat11;
    let x_1587 : u32 = u_xlatu48;
    let x_1590 : vec4<f32> = x_1096.x_AdditionalLightsColor[bitcast<i32>(x_1587)];
    let x_1592 : vec3<f32> = (vec3<f32>(x_1585.x, x_1585.y, x_1585.z) * vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
    let x_1593 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
    let x_1595 : f32 = u_xlat34;
    let x_1597 : vec4<f32> = u_xlat11;
    let x_1599 : vec3<f32> = (vec3<f32>(x_1595, x_1595, x_1595) * vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
    let x_1600 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
    let x_1602 : vec3<f32> = u_xlat3;
    let x_1603 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1602, x_1603);
    let x_1605 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1605, 0.0f, 1.0f);
    let x_1607 : f32 = u_xlat48;
    let x_1608 : f32 = u_xlat35;
    u_xlat48 = (x_1607 * x_1608);
    let x_1610 : f32 = u_xlat48;
    let x_1612 : vec4<f32> = u_xlat11;
    let x_1614 : vec3<f32> = (vec3<f32>(x_1610, x_1610, x_1610) * vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
    let x_1615 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
    let x_1617 : vec3<f32> = u_xlat9;
    let x_1618 : f32 = u_xlat49;
    let x_1621 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1617 * vec3<f32>(x_1618, x_1618, x_1618)) + x_1621);
    let x_1623 : vec3<f32> = u_xlat9;
    let x_1624 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1623, x_1624);
    let x_1626 : f32 = u_xlat48;
    u_xlat48 = max(x_1626, 1.17549435e-37f);
    let x_1628 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1628);
    let x_1630 : f32 = u_xlat48;
    let x_1632 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1630, x_1630, x_1630) * x_1632);
    let x_1634 : vec3<f32> = u_xlat3;
    let x_1635 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1634, x_1635);
    let x_1637 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1637, 0.0f, 1.0f);
    let x_1639 : vec3<f32> = u_xlat10;
    let x_1640 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1639, x_1640);
    let x_1642 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1642, 0.0f, 1.0f);
    let x_1644 : f32 = u_xlat48;
    let x_1645 : f32 = u_xlat48;
    u_xlat48 = (x_1644 * x_1645);
    let x_1647 : f32 = u_xlat48;
    let x_1649 : f32 = u_xlat32.x;
    u_xlat48 = ((x_1647 * x_1649) + 1.000010014f);
    let x_1652 : f32 = u_xlat35;
    let x_1653 : f32 = u_xlat35;
    u_xlat35 = (x_1652 * x_1653);
    let x_1655 : f32 = u_xlat48;
    let x_1656 : f32 = u_xlat48;
    u_xlat48 = (x_1655 * x_1656);
    let x_1658 : f32 = u_xlat35;
    u_xlat35 = max(x_1658, 0.100000001f);
    let x_1660 : f32 = u_xlat48;
    let x_1661 : f32 = u_xlat35;
    u_xlat48 = (x_1660 * x_1661);
    let x_1663 : f32 = u_xlat20;
    let x_1664 : f32 = u_xlat48;
    u_xlat48 = (x_1663 * x_1664);
    let x_1666 : f32 = u_xlat47;
    let x_1667 : f32 = u_xlat48;
    u_xlat48 = (x_1666 / x_1667);
    let x_1669 : vec4<f32> = u_xlat0;
    let x_1671 : f32 = u_xlat48;
    let x_1674 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1669.x, x_1669.y, x_1669.z) * vec3<f32>(x_1671, x_1671, x_1671)) + x_1674);
    let x_1676 : vec3<f32> = u_xlat9;
    let x_1677 : vec4<f32> = u_xlat11;
    let x_1680 : vec4<f32> = u_xlat8;
    let x_1682 : vec3<f32> = ((x_1676 * vec3<f32>(x_1677.x, x_1677.y, x_1677.z)) + vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
    let x_1683 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);

    continuing {
      let x_1685 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1685 + bitcast<u32>(1i));
    }
  }
  let x_1687 : vec4<f32> = u_xlat5;
  let x_1689 : vec3<f32> = u_xlat6;
  let x_1692 : vec4<f32> = u_xlat4;
  let x_1694 : vec3<f32> = ((vec3<f32>(x_1687.x, x_1687.y, x_1687.z) * vec3<f32>(x_1689.x, x_1689.x, x_1689.x)) + vec3<f32>(x_1692.x, x_1692.y, x_1692.w));
  let x_1695 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
  let x_1697 : vec4<f32> = u_xlat8;
  let x_1699 : vec4<f32> = u_xlat0;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1697.x, x_1697.y, x_1697.z) + vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : f32 = u_xlat42;
  let x_1705 : f32 = u_xlat42;
  u_xlat42 = (x_1704 * -(x_1705));
  let x_1708 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1708);
  let x_1710 : vec4<f32> = u_xlat0;
  let x_1714 : vec4<f32> = x_44.unity_FogColor;
  let x_1717 : vec3<f32> = (vec3<f32>(x_1710.x, x_1710.y, x_1710.z) + -(vec3<f32>(x_1714.x, x_1714.y, x_1714.z)));
  let x_1718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
  let x_1722 : f32 = u_xlat42;
  let x_1724 : vec4<f32> = u_xlat0;
  let x_1728 : vec4<f32> = x_44.unity_FogColor;
  let x_1730 : vec3<f32> = ((vec3<f32>(x_1722, x_1722, x_1722) * vec3<f32>(x_1724.x, x_1724.y, x_1724.z)) + vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
  let x_1731 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
  let x_1736 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1736 == 1.0f);
  let x_1738 : bool = u_xlatb0;
  if (x_1738) {
    let x_1743 : f32 = u_xlat1.x;
    x_1739 = x_1743;
  } else {
    x_1739 = 1.0f;
  }
  let x_1745 : f32 = x_1739;
  SV_Target0.w = x_1745;
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

