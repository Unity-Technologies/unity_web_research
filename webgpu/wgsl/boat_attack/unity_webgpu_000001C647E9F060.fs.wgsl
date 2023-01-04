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

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_198 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_665 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1102 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1206 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb47 : bool;
  var x_112 : f32;
  var u_xlatb45 : bool;
  var u_xlat47 : f32;
  var u_xlat4 : vec3<f32>;
  var x_175 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu45 : u32;
  var u_xlati45 : i32;
  var u_xlat48 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat51 : f32;
  var u_xlat22 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb35 : bool;
  var x_614 : f32;
  var u_xlat35 : f32;
  var x_734 : f32;
  var x_745 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat37 : vec2<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatu47 : u32;
  var u_xlatb8 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu49 : u32;
  var u_xlati52 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat52 : f32;
  var u_xlat38 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat53 : f32;
  var u_xlatu53 : u32;
  var u_xlati54 : i32;
  var u_xlati53 : i32;
  var u_xlati55 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlatb53 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb42 : vec2<bool>;
  var x_1500 : f32;
  var x_1513 : f32;
  var x_1565 : f32;
  var x_1576 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1755 : f32;
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
  let x_77 : vec4<f32> = hlslcc_FragCoord;
  let x_81 : f32 = x_44.x_DitheringTextureInvSize;
  let x_83 : vec2<f32> = (vec2<f32>(x_77.x, x_77.y) * vec2<f32>(x_81, x_81));
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_93 : vec3<f32> = u_xlat3;
  let x_96 : f32 = x_44.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_93.x, x_93.y), x_96);
  u_xlat45 = x_97.w;
  let x_108 : f32 = x_106.unity_LODFade.x;
  u_xlatb47 = (x_108 >= 0.0f);
  let x_111 : bool = u_xlatb47;
  if (x_111) {
    let x_115 : f32 = u_xlat45;
    x_112 = abs(x_115);
  } else {
    let x_118 : f32 = u_xlat45;
    x_112 = -(abs(x_118));
  }
  let x_121 : f32 = x_112;
  u_xlat45 = x_121;
  let x_122 : f32 = u_xlat45;
  let x_125 : f32 = x_106.unity_LODFade.x;
  u_xlat45 = (-(x_122) + x_125);
  let x_128 : f32 = u_xlat45;
  u_xlatb45 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb45;
  if (((select(0i, 1i, x_130) * -1i) != 0i)) {
    discard;
  }
  let x_141 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb45 = (x_141 == 0.0f);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_145) + x_150);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat47 = dot(x_153, x_154);
  let x_156 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat47;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_165 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_165;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_168;
  let x_172 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_172;
  let x_174 : bool = u_xlatb45;
  if (x_174) {
    let x_178 : vec3<f32> = u_xlat3;
    x_175 = x_178;
  } else {
    let x_180 : vec3<f32> = u_xlat4;
    x_175 = x_180;
  }
  let x_181 : vec3<f32> = x_175;
  u_xlat3 = x_181;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  u_xlat45 = dot(x_183, x_184);
  let x_186 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_186);
  let x_188 : f32 = u_xlat45;
  let x_190 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_188, x_188, x_188) * x_190);
  let x_193 : vec3<f32> = vs_TEXCOORD1;
  let x_200 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres0;
  let x_203 : vec3<f32> = (x_193 + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec3<f32> = vs_TEXCOORD1;
  let x_209 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres1;
  let x_212 : vec3<f32> = (x_207 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec3<f32> = vs_TEXCOORD1;
  let x_219 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_216 + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_224 : vec3<f32> = vs_TEXCOORD1;
  let x_227 : vec4<f32> = x_198.x_CascadeShadowSplitSpheres3;
  let x_230 : vec3<f32> = (x_224 + -(vec3<f32>(x_227.x, x_227.y, x_227.z)));
  let x_231 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat5;
  let x_235 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec4<f32> = u_xlat6;
  let x_241 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_245 : vec3<f32> = u_xlat7;
  let x_246 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_245, x_246);
  let x_249 : vec4<f32> = u_xlat8;
  let x_251 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_258 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = x_198.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_258 < x_261);
  let x_264 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_264);
  let x_268 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_268);
  let x_272 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_272);
  let x_276 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_276);
  let x_280 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_280);
  let x_286 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_286);
  let x_290 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_290);
  let x_293 : vec4<f32> = u_xlat5;
  let x_295 : vec4<f32> = u_xlat6;
  let x_297 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) + vec3<f32>(x_295.y, x_295.z, x_295.w));
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat5;
  let x_303 : vec3<f32> = max(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_303.x, x_303.y, x_303.z);
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(x_306, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_312 : f32 = u_xlat45;
  u_xlat45 = (-(x_312) + 4.0f);
  let x_317 : f32 = u_xlat45;
  u_xlatu45 = u32(x_317);
  let x_321 : u32 = u_xlatu45;
  u_xlati45 = (bitcast<i32>(x_321) << bitcast<u32>(2i));
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_326 : i32 = u_xlati45;
  let x_329 : i32 = u_xlati45;
  let x_333 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_326 + 1i) / 4i)][((x_329 + 1i) % 4i)];
  let x_335 : vec3<f32> = (vec3<f32>(x_324.y, x_324.y, x_324.y) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : i32 = u_xlati45;
  let x_340 : i32 = u_xlati45;
  let x_343 : vec4<f32> = x_198.x_MainLightWorldToShadow[(x_338 / 4i)][(x_340 % 4i)];
  let x_345 : vec3<f32> = vs_TEXCOORD1;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.x, x_345.x)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : i32 = u_xlati45;
  let x_356 : i32 = u_xlati45;
  let x_360 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_353 + 2i) / 4i)][((x_356 + 2i) % 4i)];
  let x_362 : vec3<f32> = vs_TEXCOORD1;
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.z, x_362.z, x_362.z)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat5;
  let x_372 : i32 = u_xlati45;
  let x_375 : i32 = u_xlati45;
  let x_379 : vec4<f32> = x_198.x_MainLightWorldToShadow[((x_372 + 3i) / 4i)][((x_375 + 3i) % 4i)];
  let x_381 : vec3<f32> = (vec3<f32>(x_370.x, x_370.y, x_370.z) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : f32 = vs_TEXCOORD1.y;
  let x_387 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat45 = (x_385 * x_387);
  let x_390 : f32 = x_44.unity_MatrixV[0i].z;
  let x_392 : f32 = vs_TEXCOORD1.x;
  let x_394 : f32 = u_xlat45;
  u_xlat45 = ((x_390 * x_392) + x_394);
  let x_397 : f32 = x_44.unity_MatrixV[2i].z;
  let x_399 : f32 = vs_TEXCOORD1.z;
  let x_401 : f32 = u_xlat45;
  u_xlat45 = ((x_397 * x_399) + x_401);
  let x_403 : f32 = u_xlat45;
  let x_405 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat45 = (x_403 + x_405);
  let x_407 : f32 = u_xlat45;
  let x_411 : f32 = x_44.x_ProjectionParams.y;
  u_xlat45 = (-(x_407) + -(x_411));
  let x_414 : f32 = u_xlat45;
  u_xlat45 = max(x_414, 0.0f);
  let x_416 : f32 = u_xlat45;
  let x_419 : f32 = x_44.unity_FogParams.x;
  u_xlat45 = (x_416 * x_419);
  let x_427 : vec2<f32> = vs_TEXCOORD8;
  let x_429 : f32 = x_44.x_GlobalMipBias.x;
  let x_430 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_427, x_429);
  let x_431 : vec3<f32> = vec3<f32>(x_430.x, x_430.y, x_430.z);
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_437 : vec2<f32> = vec2<f32>(x_436.x, x_436.y);
  let x_441 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_437.x, x_437.y));
  let x_442 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_441.x, x_441.y, x_442.z);
  let x_444 : vec3<f32> = u_xlat7;
  let x_446 : vec4<f32> = hlslcc_FragCoord;
  let x_448 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_446.x, x_446.y));
  let x_449 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_448.x, x_448.y, x_449.z);
  let x_452 : f32 = u_xlat7.y;
  let x_455 : f32 = x_44.x_ScaleBiasRt.x;
  let x_458 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat47 = ((x_452 * x_455) + x_458);
  let x_460 : f32 = u_xlat47;
  u_xlat7.z = (-(x_460) + 1.0f);
  let x_465 : f32 = x_57.x_Metallic;
  u_xlat47 = ((-(x_465) * 0.959999979f) + 0.959999979f);
  let x_471 : f32 = u_xlat47;
  let x_474 : f32 = x_57.x_Smoothness;
  u_xlat48 = (-(x_471) + x_474);
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : f32 = u_xlat47;
  u_xlat16 = (vec3<f32>(x_477.y, x_477.z, x_477.w) * vec3<f32>(x_479, x_479, x_479));
  let x_482 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = x_57.x_BaseColor;
  let x_490 : vec3<f32> = ((vec3<f32>(x_482.x, x_482.y, x_482.z) * vec3<f32>(x_485.x, x_485.y, x_485.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_494 : f32 = x_57.x_Metallic;
  let x_496 : f32 = x_57.x_Metallic;
  let x_498 : f32 = x_57.x_Metallic;
  let x_499 : vec3<f32> = vec3<f32>(x_494, x_496, x_498);
  let x_504 : vec4<f32> = u_xlat0;
  let x_509 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_504.x, x_504.y, x_504.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_510 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = x_57.x_Smoothness;
  u_xlat47 = (-(x_513) + 1.0f);
  let x_517 : f32 = u_xlat47;
  let x_518 : f32 = u_xlat47;
  u_xlat49 = (x_517 * x_518);
  let x_520 : f32 = u_xlat49;
  u_xlat49 = max(x_520, 0.0078125f);
  let x_524 : f32 = u_xlat49;
  let x_525 : f32 = u_xlat49;
  u_xlat50 = (x_524 * x_525);
  let x_527 : f32 = u_xlat48;
  u_xlat48 = (x_527 + 1.0f);
  let x_529 : f32 = u_xlat48;
  u_xlat48 = clamp(x_529, 0.0f, 1.0f);
  let x_532 : f32 = u_xlat49;
  u_xlat51 = ((x_532 * 4.0f) + 2.0f);
  let x_540 : vec3<f32> = u_xlat7;
  let x_543 : f32 = x_44.x_GlobalMipBias.x;
  let x_544 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_540.x, x_540.z), x_543);
  u_xlat7.x = x_544.x;
  let x_549 : f32 = u_xlat7.x;
  u_xlat22 = (x_549 + -1.0f);
  let x_552 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_553 : f32 = u_xlat22;
  u_xlat22 = ((x_552 * x_553) + 1.0f);
  let x_557 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_557, 1.0f);
  let x_561 : vec4<f32> = u_xlat5;
  let x_562 : vec2<f32> = vec2<f32>(x_561.x, x_561.y);
  let x_564 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_562.x, x_562.y, x_564);
  let x_576 : vec3<f32> = txVec0;
  let x_578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_576.xy, x_576.z);
  u_xlat5.x = x_578;
  let x_583 : f32 = x_198.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_583) + 1.0f);
  let x_588 : f32 = u_xlat5.x;
  let x_590 : f32 = x_198.x_MainLightShadowParams.x;
  let x_593 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_588 * x_590) + x_593);
  let x_600 : f32 = u_xlat5.z;
  u_xlatb20.x = (0.0f >= x_600);
  let x_605 : f32 = u_xlat5.z;
  u_xlatb35 = (x_605 >= 1.0f);
  let x_607 : bool = u_xlatb35;
  let x_609 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_607 | x_609);
  let x_613 : bool = u_xlatb20.x;
  if (x_613) {
    x_614 = 1.0f;
  } else {
    let x_619 : f32 = u_xlat5.x;
    x_614 = x_619;
  }
  let x_620 : f32 = x_614;
  u_xlat5.x = x_620;
  let x_622 : vec3<f32> = vs_TEXCOORD1;
  let x_624 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_626 : vec3<f32> = (x_622 + -(x_624));
  let x_627 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat8;
  let x_631 : vec4<f32> = u_xlat8;
  u_xlat20.x = dot(vec3<f32>(x_629.x, x_629.y, x_629.z), vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_636 : f32 = u_xlat20.x;
  let x_638 : f32 = x_198.x_MainLightShadowParams.z;
  let x_641 : f32 = x_198.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_636 * x_638) + x_641);
  let x_645 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_645, 0.0f, 1.0f);
  let x_650 : f32 = u_xlat5.x;
  u_xlat35 = (-(x_650) + 1.0f);
  let x_654 : f32 = u_xlat20.x;
  let x_655 : f32 = u_xlat35;
  let x_658 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_654 * x_655) + x_658);
  let x_667 : f32 = x_665.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_667 == -1.0f));
  let x_671 : bool = u_xlatb20.x;
  if (x_671) {
    let x_674 : vec3<f32> = vs_TEXCOORD1;
    let x_677 : vec4<f32> = x_665.x_MainLightWorldToLight[1i];
    u_xlat20 = (vec2<f32>(x_674.y, x_674.y) * vec2<f32>(x_677.x, x_677.y));
    let x_681 : vec4<f32> = x_665.x_MainLightWorldToLight[0i];
    let x_683 : vec3<f32> = vs_TEXCOORD1;
    let x_686 : vec2<f32> = u_xlat20;
    u_xlat20 = ((vec2<f32>(x_681.x, x_681.y) * vec2<f32>(x_683.x, x_683.x)) + x_686);
    let x_689 : vec4<f32> = x_665.x_MainLightWorldToLight[2i];
    let x_691 : vec3<f32> = vs_TEXCOORD1;
    let x_694 : vec2<f32> = u_xlat20;
    u_xlat20 = ((vec2<f32>(x_689.x, x_689.y) * vec2<f32>(x_691.z, x_691.z)) + x_694);
    let x_696 : vec2<f32> = u_xlat20;
    let x_698 : vec4<f32> = x_665.x_MainLightWorldToLight[3i];
    u_xlat20 = (x_696 + vec2<f32>(x_698.x, x_698.y));
    let x_701 : vec2<f32> = u_xlat20;
    u_xlat20 = ((x_701 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_711 : vec2<f32> = u_xlat20;
    let x_713 : f32 = x_44.x_GlobalMipBias.x;
    let x_714 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_711, x_713);
    u_xlat8 = x_714;
    let x_716 : f32 = x_665.x_MainLightCookieTextureFormat;
    let x_718 : f32 = x_665.x_MainLightCookieTextureFormat;
    let x_720 : f32 = x_665.x_MainLightCookieTextureFormat;
    let x_722 : f32 = x_665.x_MainLightCookieTextureFormat;
    let x_723 : vec4<f32> = vec4<f32>(x_716, x_718, x_720, x_722);
    let x_730 : vec4<bool> = (vec4<f32>(x_723.x, x_723.y, x_723.z, x_723.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_730.x, x_730.y);
    let x_733 : bool = u_xlatb20.y;
    if (x_733) {
      let x_738 : f32 = u_xlat8.w;
      x_734 = x_738;
    } else {
      let x_741 : f32 = u_xlat8.x;
      x_734 = x_741;
    }
    let x_742 : f32 = x_734;
    u_xlat35 = x_742;
    let x_744 : bool = u_xlatb20.x;
    if (x_744) {
      let x_748 : vec4<f32> = u_xlat8;
      x_745 = vec3<f32>(x_748.x, x_748.y, x_748.z);
    } else {
      let x_751 : f32 = u_xlat35;
      x_745 = vec3<f32>(x_751, x_751, x_751);
    }
    let x_753 : vec3<f32> = x_745;
    let x_754 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  let x_760 : vec4<f32> = u_xlat8;
  let x_763 : vec4<f32> = x_44.x_MainLightColor;
  let x_765 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : f32 = u_xlat22;
  let x_770 : vec4<f32> = u_xlat8;
  let x_772 : vec3<f32> = (vec3<f32>(x_768, x_768, x_768) * vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec3<f32> = u_xlat3;
  let x_777 : vec3<f32> = u_xlat4;
  u_xlat20.x = dot(-(x_775), x_777);
  let x_781 : f32 = u_xlat20.x;
  let x_783 : f32 = u_xlat20.x;
  u_xlat20.x = (x_781 + x_783);
  let x_787 : vec3<f32> = u_xlat4;
  let x_788 : vec2<f32> = u_xlat20;
  let x_792 : vec3<f32> = u_xlat3;
  let x_794 : vec3<f32> = ((x_787 * -(vec3<f32>(x_788.x, x_788.x, x_788.x))) + -(x_792));
  let x_795 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec3<f32> = u_xlat4;
  let x_798 : vec3<f32> = u_xlat3;
  u_xlat20.x = dot(x_797, x_798);
  let x_802 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_802, 0.0f, 1.0f);
  let x_806 : f32 = u_xlat20.x;
  u_xlat20.x = (-(x_806) + 1.0f);
  let x_811 : f32 = u_xlat20.x;
  let x_813 : f32 = u_xlat20.x;
  u_xlat20.x = (x_811 * x_813);
  let x_817 : f32 = u_xlat20.x;
  let x_819 : f32 = u_xlat20.x;
  u_xlat20.x = (x_817 * x_819);
  let x_822 : f32 = u_xlat47;
  u_xlat35 = ((-(x_822) * 0.699999988f) + 1.700000048f);
  let x_828 : f32 = u_xlat47;
  let x_829 : f32 = u_xlat35;
  u_xlat47 = (x_828 * x_829);
  let x_831 : f32 = u_xlat47;
  u_xlat47 = (x_831 * 6.0f);
  let x_842 : vec4<f32> = u_xlat9;
  let x_844 : f32 = u_xlat47;
  let x_845 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_842.x, x_842.y, x_842.z), x_844);
  u_xlat9 = x_845;
  let x_847 : f32 = u_xlat9.w;
  u_xlat47 = (x_847 + -1.0f);
  let x_850 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_851 : f32 = u_xlat47;
  u_xlat47 = ((x_850 * x_851) + 1.0f);
  let x_854 : f32 = u_xlat47;
  u_xlat47 = max(x_854, 0.0f);
  let x_856 : f32 = u_xlat47;
  u_xlat47 = log2(x_856);
  let x_858 : f32 = u_xlat47;
  let x_860 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_858 * x_860);
  let x_862 : f32 = u_xlat47;
  u_xlat47 = exp2(x_862);
  let x_864 : f32 = u_xlat47;
  let x_866 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_864 * x_866);
  let x_868 : vec4<f32> = u_xlat9;
  let x_870 : f32 = u_xlat47;
  let x_872 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(x_870, x_870, x_870));
  let x_873 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_876 : f32 = u_xlat49;
  let x_878 : f32 = u_xlat49;
  u_xlat37 = ((vec2<f32>(x_876, x_876) * vec2<f32>(x_878, x_878)) + vec2<f32>(-1.0f, 1.0f));
  let x_884 : f32 = u_xlat37.y;
  u_xlat47 = (1.0f / x_884);
  let x_887 : vec4<f32> = u_xlat0;
  let x_890 : f32 = u_xlat48;
  u_xlat10 = (-(vec3<f32>(x_887.x, x_887.y, x_887.z)) + vec3<f32>(x_890, x_890, x_890));
  let x_893 : vec2<f32> = u_xlat20;
  let x_895 : vec3<f32> = u_xlat10;
  let x_897 : vec4<f32> = u_xlat0;
  u_xlat10 = ((vec3<f32>(x_893.x, x_893.x, x_893.x) * x_895) + vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : f32 = u_xlat47;
  let x_902 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_900, x_900, x_900) * x_902);
  let x_904 : vec4<f32> = u_xlat9;
  let x_906 : vec3<f32> = u_xlat10;
  let x_907 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) * x_906);
  let x_908 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat6;
  let x_912 : vec3<f32> = u_xlat16;
  let x_914 : vec4<f32> = u_xlat9;
  let x_916 : vec3<f32> = ((vec3<f32>(x_910.x, x_910.y, x_910.z) * x_912) + vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_920 : f32 = u_xlat5.x;
  let x_922 : f32 = x_106.unity_LightData.z;
  u_xlat47 = (x_920 * x_922);
  let x_924 : vec3<f32> = u_xlat4;
  let x_926 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat48 = dot(x_924, vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : f32 = u_xlat48;
  u_xlat48 = clamp(x_929, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat47;
  let x_932 : f32 = u_xlat48;
  u_xlat47 = (x_931 * x_932);
  let x_934 : f32 = u_xlat47;
  let x_936 : vec4<f32> = u_xlat8;
  let x_938 : vec3<f32> = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec3<f32> = u_xlat3;
  let x_943 : vec4<f32> = x_44.x_MainLightPosition;
  let x_945 : vec3<f32> = (x_941 + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec4<f32> = u_xlat8;
  let x_950 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_948.x, x_948.y, x_948.z), vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : f32 = u_xlat47;
  u_xlat47 = max(x_953, 1.17549435e-37f);
  let x_956 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_956);
  let x_958 : f32 = u_xlat47;
  let x_960 : vec4<f32> = u_xlat8;
  let x_962 : vec3<f32> = (vec3<f32>(x_958, x_958, x_958) * vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : vec3<f32> = u_xlat4;
  let x_966 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(x_965, vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : f32 = u_xlat47;
  u_xlat47 = clamp(x_969, 0.0f, 1.0f);
  let x_972 : vec4<f32> = x_44.x_MainLightPosition;
  let x_974 : vec4<f32> = u_xlat8;
  u_xlat48 = dot(vec3<f32>(x_972.x, x_972.y, x_972.z), vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : f32 = u_xlat48;
  u_xlat48 = clamp(x_977, 0.0f, 1.0f);
  let x_979 : f32 = u_xlat47;
  let x_980 : f32 = u_xlat47;
  u_xlat47 = (x_979 * x_980);
  let x_982 : f32 = u_xlat47;
  let x_984 : f32 = u_xlat37.x;
  u_xlat47 = ((x_982 * x_984) + 1.000010014f);
  let x_988 : f32 = u_xlat48;
  let x_989 : f32 = u_xlat48;
  u_xlat48 = (x_988 * x_989);
  let x_991 : f32 = u_xlat47;
  let x_992 : f32 = u_xlat47;
  u_xlat47 = (x_991 * x_992);
  let x_994 : f32 = u_xlat48;
  u_xlat48 = max(x_994, 0.100000001f);
  let x_997 : f32 = u_xlat47;
  let x_998 : f32 = u_xlat48;
  u_xlat47 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat51;
  let x_1001 : f32 = u_xlat47;
  u_xlat47 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat50;
  let x_1004 : f32 = u_xlat47;
  u_xlat47 = (x_1003 / x_1004);
  let x_1006 : vec4<f32> = u_xlat0;
  let x_1008 : f32 = u_xlat47;
  let x_1011 : vec3<f32> = u_xlat16;
  let x_1012 : vec3<f32> = ((vec3<f32>(x_1006.x, x_1006.y, x_1006.z) * vec3<f32>(x_1008, x_1008, x_1008)) + x_1011);
  let x_1013 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec4<f32> = u_xlat5;
  let x_1017 : vec4<f32> = u_xlat8;
  let x_1019 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1020 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1023 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1025 : f32 = x_106.unity_LightData.y;
  u_xlat47 = min(x_1023, x_1025);
  let x_1028 : f32 = u_xlat47;
  u_xlatu47 = bitcast<u32>(i32(x_1028));
  let x_1033 : f32 = x_665.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1035 : f32 = x_665.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1037 : f32 = x_665.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1039 : f32 = x_665.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1040 : vec4<f32> = vec4<f32>(x_1033, x_1035, x_1037, x_1039);
  let x_1046 : vec4<bool> = (vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1040.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1046.x, x_1046.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1057 : u32 = u_xlatu_loop_1;
    let x_1058 : u32 = u_xlatu47;
    if ((x_1057 < x_1058)) {
    } else {
      break;
    }
    let x_1061 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1061 >> 2u);
    let x_1064 : u32 = u_xlatu_loop_1;
    u_xlati52 = bitcast<i32>((x_1064 & 3u));
    let x_1067 : u32 = u_xlatu49;
    let x_1070 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_1067)];
    let x_1080 : i32 = u_xlati52;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1085 : vec4<u32> = indexable[x_1080];
    u_xlat49 = dot(x_1070, bitcast<vec4<f32>>(x_1085));
    let x_1088 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1088));
    let x_1091 : vec3<f32> = vs_TEXCOORD1;
    let x_1103 : u32 = u_xlatu49;
    let x_1106 : vec4<f32> = x_1102.x_AdditionalLightsPosition[bitcast<i32>(x_1103)];
    let x_1109 : u32 = u_xlatu49;
    let x_1112 : vec4<f32> = x_1102.x_AdditionalLightsPosition[bitcast<i32>(x_1109)];
    u_xlat10 = ((-(x_1091) * vec3<f32>(x_1106.w, x_1106.w, x_1106.w)) + vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
    let x_1116 : vec3<f32> = u_xlat10;
    let x_1117 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(x_1116, x_1117);
    let x_1119 : f32 = u_xlat52;
    u_xlat52 = max(x_1119, 6.10351562e-05f);
    let x_1123 : f32 = u_xlat52;
    u_xlat38 = inverseSqrt(x_1123);
    let x_1126 : f32 = u_xlat38;
    let x_1128 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1126, x_1126, x_1126) * x_1128);
    let x_1131 : f32 = u_xlat52;
    u_xlat53 = (1.0f / x_1131);
    let x_1133 : f32 = u_xlat52;
    let x_1134 : u32 = u_xlatu49;
    let x_1137 : f32 = x_1102.x_AdditionalLightsAttenuation[bitcast<i32>(x_1134)].x;
    u_xlat52 = (x_1133 * x_1137);
    let x_1139 : f32 = u_xlat52;
    let x_1141 : f32 = u_xlat52;
    u_xlat52 = ((-(x_1139) * x_1141) + 1.0f);
    let x_1144 : f32 = u_xlat52;
    u_xlat52 = max(x_1144, 0.0f);
    let x_1146 : f32 = u_xlat52;
    let x_1147 : f32 = u_xlat52;
    u_xlat52 = (x_1146 * x_1147);
    let x_1149 : f32 = u_xlat52;
    let x_1150 : f32 = u_xlat53;
    u_xlat52 = (x_1149 * x_1150);
    let x_1152 : u32 = u_xlatu49;
    let x_1155 : vec4<f32> = x_1102.x_AdditionalLightsSpotDir[bitcast<i32>(x_1152)];
    let x_1157 : vec3<f32> = u_xlat11;
    u_xlat53 = dot(vec3<f32>(x_1155.x, x_1155.y, x_1155.z), x_1157);
    let x_1159 : f32 = u_xlat53;
    let x_1160 : u32 = u_xlatu49;
    let x_1163 : f32 = x_1102.x_AdditionalLightsAttenuation[bitcast<i32>(x_1160)].z;
    let x_1165 : u32 = u_xlatu49;
    let x_1168 : f32 = x_1102.x_AdditionalLightsAttenuation[bitcast<i32>(x_1165)].w;
    u_xlat53 = ((x_1159 * x_1163) + x_1168);
    let x_1170 : f32 = u_xlat53;
    u_xlat53 = clamp(x_1170, 0.0f, 1.0f);
    let x_1172 : f32 = u_xlat53;
    let x_1173 : f32 = u_xlat53;
    u_xlat53 = (x_1172 * x_1173);
    let x_1175 : f32 = u_xlat52;
    let x_1176 : f32 = u_xlat53;
    u_xlat52 = (x_1175 * x_1176);
    let x_1179 : u32 = u_xlatu49;
    u_xlatu53 = (x_1179 >> 5u);
    let x_1182 : u32 = u_xlatu49;
    u_xlati54 = (1i << bitcast<u32>((bitcast<i32>(x_1182) & 31i)));
    let x_1188 : i32 = u_xlati54;
    let x_1190 : u32 = u_xlatu53;
    let x_1193 : f32 = x_665.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1190)].el;
    u_xlati53 = bitcast<i32>((bitcast<u32>(x_1188) & bitcast<u32>(x_1193)));
    let x_1197 : i32 = u_xlati53;
    if ((x_1197 != 0i)) {
      let x_1207 : u32 = u_xlatu49;
      let x_1210 : f32 = x_1206.x_AdditionalLightsLightTypes[bitcast<i32>(x_1207)].el;
      u_xlati53 = i32(x_1210);
      let x_1212 : i32 = u_xlati53;
      u_xlati54 = select(1i, 0i, (x_1212 != 0i));
      let x_1216 : u32 = u_xlatu49;
      u_xlati55 = (bitcast<i32>(x_1216) << bitcast<u32>(2i));
      let x_1219 : i32 = u_xlati54;
      if ((x_1219 != 0i)) {
        let x_1224 : vec3<f32> = vs_TEXCOORD1;
        let x_1226 : i32 = u_xlati55;
        let x_1229 : i32 = u_xlati55;
        let x_1233 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1226 + 1i) / 4i)][((x_1229 + 1i) % 4i)];
        let x_1235 : vec3<f32> = (vec3<f32>(x_1224.y, x_1224.y, x_1224.y) * vec3<f32>(x_1233.x, x_1233.y, x_1233.w));
        let x_1236 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
        let x_1238 : i32 = u_xlati55;
        let x_1240 : i32 = u_xlati55;
        let x_1243 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[(x_1238 / 4i)][(x_1240 % 4i)];
        let x_1245 : vec3<f32> = vs_TEXCOORD1;
        let x_1248 : vec4<f32> = u_xlat12;
        let x_1250 : vec3<f32> = ((vec3<f32>(x_1243.x, x_1243.y, x_1243.w) * vec3<f32>(x_1245.x, x_1245.x, x_1245.x)) + vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
        let x_1251 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
        let x_1253 : i32 = u_xlati55;
        let x_1256 : i32 = u_xlati55;
        let x_1260 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1253 + 2i) / 4i)][((x_1256 + 2i) % 4i)];
        let x_1262 : vec3<f32> = vs_TEXCOORD1;
        let x_1265 : vec4<f32> = u_xlat12;
        let x_1267 : vec3<f32> = ((vec3<f32>(x_1260.x, x_1260.y, x_1260.w) * vec3<f32>(x_1262.z, x_1262.z, x_1262.z)) + vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
        let x_1268 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
        let x_1270 : vec4<f32> = u_xlat12;
        let x_1272 : i32 = u_xlati55;
        let x_1275 : i32 = u_xlati55;
        let x_1279 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1272 + 3i) / 4i)][((x_1275 + 3i) % 4i)];
        let x_1281 : vec3<f32> = (vec3<f32>(x_1270.x, x_1270.y, x_1270.z) + vec3<f32>(x_1279.x, x_1279.y, x_1279.w));
        let x_1282 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat12;
        let x_1286 : vec4<f32> = u_xlat12;
        let x_1288 : vec2<f32> = (vec2<f32>(x_1284.x, x_1284.y) / vec2<f32>(x_1286.z, x_1286.z));
        let x_1289 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat12;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1295 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1297 : vec4<f32> = u_xlat12;
        let x_1301 : vec2<f32> = clamp(vec2<f32>(x_1297.x, x_1297.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1302 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
        let x_1304 : u32 = u_xlatu49;
        let x_1307 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1304)];
        let x_1309 : vec4<f32> = u_xlat12;
        let x_1312 : u32 = u_xlatu49;
        let x_1315 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1312)];
        let x_1317 : vec2<f32> = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1309.x, x_1309.y)) + vec2<f32>(x_1315.z, x_1315.w));
        let x_1318 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
      } else {
        let x_1322 : i32 = u_xlati53;
        u_xlatb53 = (x_1322 == 1i);
        let x_1324 : bool = u_xlatb53;
        u_xlati53 = select(0i, 1i, x_1324);
        let x_1326 : i32 = u_xlati53;
        if ((x_1326 != 0i)) {
          let x_1331 : vec3<f32> = vs_TEXCOORD1;
          let x_1333 : i32 = u_xlati55;
          let x_1336 : i32 = u_xlati55;
          let x_1340 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1333 + 1i) / 4i)][((x_1336 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1331.y, x_1331.y) * vec2<f32>(x_1340.x, x_1340.y));
          let x_1343 : i32 = u_xlati55;
          let x_1345 : i32 = u_xlati55;
          let x_1348 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[(x_1343 / 4i)][(x_1345 % 4i)];
          let x_1350 : vec3<f32> = vs_TEXCOORD1;
          let x_1353 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(x_1350.x, x_1350.x)) + x_1353);
          let x_1355 : i32 = u_xlati55;
          let x_1358 : i32 = u_xlati55;
          let x_1362 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1355 + 2i) / 4i)][((x_1358 + 2i) % 4i)];
          let x_1364 : vec3<f32> = vs_TEXCOORD1;
          let x_1367 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1364.z, x_1364.z)) + x_1367);
          let x_1369 : vec2<f32> = u_xlat42;
          let x_1370 : i32 = u_xlati55;
          let x_1373 : i32 = u_xlati55;
          let x_1377 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1370 + 3i) / 4i)][((x_1373 + 3i) % 4i)];
          u_xlat42 = (x_1369 + vec2<f32>(x_1377.x, x_1377.y));
          let x_1380 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1380 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1383 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1383);
          let x_1385 : u32 = u_xlatu49;
          let x_1388 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1385)];
          let x_1390 : vec2<f32> = u_xlat42;
          let x_1392 : u32 = u_xlatu49;
          let x_1395 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1392)];
          let x_1397 : vec2<f32> = ((vec2<f32>(x_1388.x, x_1388.y) * x_1390) + vec2<f32>(x_1395.z, x_1395.w));
          let x_1398 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1398.w);
        } else {
          let x_1402 : vec3<f32> = vs_TEXCOORD1;
          let x_1404 : i32 = u_xlati55;
          let x_1407 : i32 = u_xlati55;
          let x_1411 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1404 + 1i) / 4i)][((x_1407 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1402.y, x_1402.y, x_1402.y, x_1402.y) * x_1411);
          let x_1413 : i32 = u_xlati55;
          let x_1415 : i32 = u_xlati55;
          let x_1418 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[(x_1413 / 4i)][(x_1415 % 4i)];
          let x_1419 : vec3<f32> = vs_TEXCOORD1;
          let x_1422 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1418 * vec4<f32>(x_1419.x, x_1419.x, x_1419.x, x_1419.x)) + x_1422);
          let x_1424 : i32 = u_xlati55;
          let x_1427 : i32 = u_xlati55;
          let x_1431 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1424 + 2i) / 4i)][((x_1427 + 2i) % 4i)];
          let x_1432 : vec3<f32> = vs_TEXCOORD1;
          let x_1435 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1431 * vec4<f32>(x_1432.z, x_1432.z, x_1432.z, x_1432.z)) + x_1435);
          let x_1437 : vec4<f32> = u_xlat13;
          let x_1438 : i32 = u_xlati55;
          let x_1441 : i32 = u_xlati55;
          let x_1445 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1438 + 3i) / 4i)][((x_1441 + 3i) % 4i)];
          u_xlat13 = (x_1437 + x_1445);
          let x_1447 : vec4<f32> = u_xlat13;
          let x_1449 : vec4<f32> = u_xlat13;
          let x_1451 : vec3<f32> = (vec3<f32>(x_1447.x, x_1447.y, x_1447.z) / vec3<f32>(x_1449.w, x_1449.w, x_1449.w));
          let x_1452 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
          let x_1454 : vec4<f32> = u_xlat13;
          let x_1456 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(vec3<f32>(x_1454.x, x_1454.y, x_1454.z), vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
          let x_1459 : f32 = u_xlat53;
          u_xlat53 = inverseSqrt(x_1459);
          let x_1461 : f32 = u_xlat53;
          let x_1463 : vec4<f32> = u_xlat13;
          let x_1465 : vec3<f32> = (vec3<f32>(x_1461, x_1461, x_1461) * vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
          let x_1466 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
          let x_1468 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(abs(vec3<f32>(x_1468.x, x_1468.y, x_1468.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1473 : f32 = u_xlat53;
          u_xlat53 = max(x_1473, 0.000001f);
          let x_1476 : f32 = u_xlat53;
          u_xlat53 = (1.0f / x_1476);
          let x_1479 : f32 = u_xlat53;
          let x_1481 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1479, x_1479, x_1479) * vec3<f32>(x_1481.z, x_1481.x, x_1481.y));
          let x_1485 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1485);
          let x_1489 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1489, 0.0f, 1.0f);
          let x_1493 : vec3<f32> = u_xlat14;
          let x_1496 : vec4<bool> = (vec4<f32>(x_1493.y, x_1493.z, x_1493.y, x_1493.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1496.x, x_1496.y);
          let x_1499 : bool = u_xlatb42.x;
          if (x_1499) {
            let x_1504 : f32 = u_xlat14.x;
            x_1500 = x_1504;
          } else {
            let x_1507 : f32 = u_xlat14.x;
            x_1500 = -(x_1507);
          }
          let x_1509 : f32 = x_1500;
          u_xlat42.x = x_1509;
          let x_1512 : bool = u_xlatb42.y;
          if (x_1512) {
            let x_1517 : f32 = u_xlat14.x;
            x_1513 = x_1517;
          } else {
            let x_1520 : f32 = u_xlat14.x;
            x_1513 = -(x_1520);
          }
          let x_1522 : f32 = x_1513;
          u_xlat42.y = x_1522;
          let x_1524 : vec4<f32> = u_xlat13;
          let x_1526 : f32 = u_xlat53;
          let x_1529 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1526, x_1526)) + x_1529);
          let x_1531 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1531 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1534 : vec2<f32> = u_xlat42;
          u_xlat42 = clamp(x_1534, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1538 : u32 = u_xlatu49;
          let x_1541 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1538)];
          let x_1543 : vec2<f32> = u_xlat42;
          let x_1545 : u32 = u_xlatu49;
          let x_1548 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1545)];
          let x_1550 : vec2<f32> = ((vec2<f32>(x_1541.x, x_1541.y) * x_1543) + vec2<f32>(x_1548.z, x_1548.w));
          let x_1551 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
        }
      }
      let x_1558 : vec4<f32> = u_xlat12;
      let x_1561 : f32 = x_44.x_GlobalMipBias.x;
      let x_1562 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1558.x, x_1558.y), x_1561);
      u_xlat12 = x_1562;
      let x_1564 : bool = u_xlatb8.y;
      if (x_1564) {
        let x_1569 : f32 = u_xlat12.w;
        x_1565 = x_1569;
      } else {
        let x_1572 : f32 = u_xlat12.x;
        x_1565 = x_1572;
      }
      let x_1573 : f32 = x_1565;
      u_xlat53 = x_1573;
      let x_1575 : bool = u_xlatb8.x;
      if (x_1575) {
        let x_1579 : vec4<f32> = u_xlat12;
        x_1576 = vec3<f32>(x_1579.x, x_1579.y, x_1579.z);
      } else {
        let x_1582 : f32 = u_xlat53;
        x_1576 = vec3<f32>(x_1582, x_1582, x_1582);
      }
      let x_1584 : vec3<f32> = x_1576;
      let x_1585 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1591 : vec4<f32> = u_xlat12;
    let x_1593 : u32 = u_xlatu49;
    let x_1596 : vec4<f32> = x_1102.x_AdditionalLightsColor[bitcast<i32>(x_1593)];
    let x_1598 : vec3<f32> = (vec3<f32>(x_1591.x, x_1591.y, x_1591.z) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
    let x_1599 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
    let x_1601 : f32 = u_xlat22;
    let x_1603 : vec4<f32> = u_xlat12;
    let x_1605 : vec3<f32> = (vec3<f32>(x_1601, x_1601, x_1601) * vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
    let x_1606 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
    let x_1608 : vec3<f32> = u_xlat4;
    let x_1609 : vec3<f32> = u_xlat11;
    u_xlat49 = dot(x_1608, x_1609);
    let x_1611 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1611, 0.0f, 1.0f);
    let x_1613 : f32 = u_xlat49;
    let x_1614 : f32 = u_xlat52;
    u_xlat49 = (x_1613 * x_1614);
    let x_1616 : f32 = u_xlat49;
    let x_1618 : vec4<f32> = u_xlat12;
    let x_1620 : vec3<f32> = (vec3<f32>(x_1616, x_1616, x_1616) * vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
    let x_1621 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
    let x_1623 : vec3<f32> = u_xlat10;
    let x_1624 : f32 = u_xlat38;
    let x_1627 : vec3<f32> = u_xlat3;
    u_xlat10 = ((x_1623 * vec3<f32>(x_1624, x_1624, x_1624)) + x_1627);
    let x_1629 : vec3<f32> = u_xlat10;
    let x_1630 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1629, x_1630);
    let x_1632 : f32 = u_xlat49;
    u_xlat49 = max(x_1632, 1.17549435e-37f);
    let x_1634 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1634);
    let x_1636 : f32 = u_xlat49;
    let x_1638 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1636, x_1636, x_1636) * x_1638);
    let x_1640 : vec3<f32> = u_xlat4;
    let x_1641 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1640, x_1641);
    let x_1643 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1643, 0.0f, 1.0f);
    let x_1645 : vec3<f32> = u_xlat11;
    let x_1646 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(x_1645, x_1646);
    let x_1648 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1648, 0.0f, 1.0f);
    let x_1650 : f32 = u_xlat49;
    let x_1651 : f32 = u_xlat49;
    u_xlat49 = (x_1650 * x_1651);
    let x_1653 : f32 = u_xlat49;
    let x_1655 : f32 = u_xlat37.x;
    u_xlat49 = ((x_1653 * x_1655) + 1.000010014f);
    let x_1658 : f32 = u_xlat52;
    let x_1659 : f32 = u_xlat52;
    u_xlat52 = (x_1658 * x_1659);
    let x_1661 : f32 = u_xlat49;
    let x_1662 : f32 = u_xlat49;
    u_xlat49 = (x_1661 * x_1662);
    let x_1664 : f32 = u_xlat52;
    u_xlat52 = max(x_1664, 0.100000001f);
    let x_1666 : f32 = u_xlat49;
    let x_1667 : f32 = u_xlat52;
    u_xlat49 = (x_1666 * x_1667);
    let x_1669 : f32 = u_xlat51;
    let x_1670 : f32 = u_xlat49;
    u_xlat49 = (x_1669 * x_1670);
    let x_1672 : f32 = u_xlat50;
    let x_1673 : f32 = u_xlat49;
    u_xlat49 = (x_1672 / x_1673);
    let x_1675 : vec4<f32> = u_xlat0;
    let x_1677 : f32 = u_xlat49;
    let x_1680 : vec3<f32> = u_xlat16;
    u_xlat10 = ((vec3<f32>(x_1675.x, x_1675.y, x_1675.z) * vec3<f32>(x_1677, x_1677, x_1677)) + x_1680);
    let x_1682 : vec3<f32> = u_xlat10;
    let x_1683 : vec4<f32> = u_xlat12;
    let x_1686 : vec4<f32> = u_xlat9;
    let x_1688 : vec3<f32> = ((x_1682 * vec3<f32>(x_1683.x, x_1683.y, x_1683.z)) + vec3<f32>(x_1686.x, x_1686.y, x_1686.z));
    let x_1689 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);

    continuing {
      let x_1691 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1691 + bitcast<u32>(1i));
    }
  }
  let x_1693 : vec4<f32> = u_xlat6;
  let x_1695 : vec3<f32> = u_xlat7;
  let x_1698 : vec4<f32> = u_xlat5;
  let x_1700 : vec3<f32> = ((vec3<f32>(x_1693.x, x_1693.y, x_1693.z) * vec3<f32>(x_1695.x, x_1695.x, x_1695.x)) + vec3<f32>(x_1698.x, x_1698.y, x_1698.z));
  let x_1701 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1701.w);
  let x_1703 : vec4<f32> = u_xlat9;
  let x_1705 : vec4<f32> = u_xlat0;
  let x_1707 : vec3<f32> = (vec3<f32>(x_1703.x, x_1703.y, x_1703.z) + vec3<f32>(x_1705.x, x_1705.y, x_1705.z));
  let x_1708 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1710 : vec3<f32> = u_xlat2;
  let x_1712 : vec4<f32> = x_57.x_EmissionColor;
  let x_1715 : vec4<f32> = u_xlat0;
  let x_1717 : vec3<f32> = ((x_1710 * vec3<f32>(x_1712.x, x_1712.y, x_1712.z)) + vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
  let x_1720 : f32 = u_xlat45;
  let x_1721 : f32 = u_xlat45;
  u_xlat45 = (x_1720 * -(x_1721));
  let x_1724 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1724);
  let x_1726 : vec4<f32> = u_xlat0;
  let x_1730 : vec4<f32> = x_44.unity_FogColor;
  let x_1733 : vec3<f32> = (vec3<f32>(x_1726.x, x_1726.y, x_1726.z) + -(vec3<f32>(x_1730.x, x_1730.y, x_1730.z)));
  let x_1734 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
  let x_1738 : f32 = u_xlat45;
  let x_1740 : vec4<f32> = u_xlat0;
  let x_1744 : vec4<f32> = x_44.unity_FogColor;
  let x_1746 : vec3<f32> = ((vec3<f32>(x_1738, x_1738, x_1738) * vec3<f32>(x_1740.x, x_1740.y, x_1740.z)) + vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
  let x_1747 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
  let x_1752 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1752 == 1.0f);
  let x_1754 : bool = u_xlatb0;
  if (x_1754) {
    let x_1759 : f32 = u_xlat1.x;
    x_1755 = x_1759;
  } else {
    x_1755 = 1.0f;
  }
  let x_1761 : f32 = x_1755;
  SV_Target0.w = x_1761;
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

