diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_96 : UnityPerDraw;

var<private> u_xlatb42 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat33 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_376 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat20 : f32;

@group(1) @binding(5) var<uniform> x_442 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_884 : AdditionalLights;

var<private> u_xlat51 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlati52 : i32;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlatb12 : vec3<bool>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat11 : vec4<f32>;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb25 : bool;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb40 : vec2<bool>;

var<private> u_xlat40 : vec2<f32>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> u_xlat53 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu46 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_167 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_529 : f32;
  var x_540 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1020 : f32;
  var x_1032 : f32;
  var txVec1 : vec3<f32>;
  var x_1495 : f32;
  var x_1508 : f32;
  var x_1566 : f32;
  var x_1577 : vec3<f32>;
  var x_1736 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_67 : vec4<f32> = hlslcc_FragCoord;
  let x_71 : f32 = x_45.x_DitheringTextureInvSize;
  let x_73 : vec2<f32> = (vec2<f32>(x_67.x, x_67.y) * vec2<f32>(x_71, x_71));
  let x_74 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_73.x, x_73.y, x_74.z);
  let x_83 : vec3<f32> = u_xlat2;
  let x_86 : f32 = x_45.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_83.x, x_83.y), x_86);
  u_xlat42 = x_87.w;
  let x_98 : f32 = x_96.unity_LODFade.x;
  u_xlatb2 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb2;
  if (x_101) {
    let x_106 : f32 = u_xlat42;
    x_103 = abs(x_106);
  } else {
    let x_109 : f32 = u_xlat42;
    x_103 = -(abs(x_109));
  }
  let x_112 : f32 = x_103;
  u_xlat42 = x_112;
  let x_113 : f32 = u_xlat42;
  let x_116 : f32 = x_96.unity_LODFade.x;
  u_xlat42 = (-(x_113) + x_116);
  let x_119 : f32 = u_xlat42;
  u_xlatb42 = (x_119 < 0.0f);
  let x_121 : bool = u_xlatb42;
  if (((select(0i, 1i, x_121) * -1i) != 0i)) {
    discard;
  }
  let x_132 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb42 = (x_132 == 0.0f);
  let x_136 : vec3<f32> = vs_TEXCOORD1;
  let x_141 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_136) + x_141);
  let x_144 : vec3<f32> = u_xlat2;
  let x_145 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_144, x_145);
  let x_147 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_147);
  let x_149 : f32 = u_xlat44;
  let x_151 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_149, x_149, x_149) * x_151);
  let x_156 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat3.x = x_156;
  let x_159 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat3.y = x_159;
  let x_163 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat3.z = x_163;
  let x_165 : bool = u_xlatb42;
  if (x_165) {
    let x_170 : vec3<f32> = u_xlat2;
    x_167 = x_170;
  } else {
    let x_172 : vec3<f32> = u_xlat3;
    x_167 = x_172;
  }
  let x_173 : vec3<f32> = x_167;
  u_xlat2 = x_173;
  let x_175 : vec3<f32> = vs_TEXCOORD2;
  let x_176 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_175, x_176);
  let x_178 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_178);
  let x_180 : f32 = u_xlat42;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_180, x_180, x_180) * x_182);
  let x_185 : f32 = vs_TEXCOORD1.y;
  let x_187 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat42 = (x_185 * x_187);
  let x_190 : f32 = x_45.unity_MatrixV[0i].z;
  let x_192 : f32 = vs_TEXCOORD1.x;
  let x_194 : f32 = u_xlat42;
  u_xlat42 = ((x_190 * x_192) + x_194);
  let x_197 : f32 = x_45.unity_MatrixV[2i].z;
  let x_199 : f32 = vs_TEXCOORD1.z;
  let x_201 : f32 = u_xlat42;
  u_xlat42 = ((x_197 * x_199) + x_201);
  let x_203 : f32 = u_xlat42;
  let x_206 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat42 = (x_203 + x_206);
  let x_208 : f32 = u_xlat42;
  let x_212 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (-(x_208) + -(x_212));
  let x_215 : f32 = u_xlat42;
  u_xlat42 = max(x_215, 0.0f);
  let x_217 : f32 = u_xlat42;
  let x_220 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_217 * x_220);
  let x_229 : vec2<f32> = vs_TEXCOORD8;
  let x_231 : f32 = x_45.x_GlobalMipBias.x;
  let x_232 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_229, x_231);
  u_xlat4 = x_232;
  let x_238 : vec2<f32> = vs_TEXCOORD8;
  let x_240 : f32 = x_45.x_GlobalMipBias.x;
  let x_241 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_238, x_240);
  u_xlat5 = vec3<f32>(x_241.x, x_241.y, x_241.z);
  let x_243 : vec4<f32> = u_xlat4;
  let x_247 : vec3<f32> = (vec3<f32>(x_243.x, x_243.y, x_243.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec3<f32> = u_xlat3;
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_250, vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : f32 = u_xlat44;
  u_xlat44 = (x_254 + 0.5f);
  let x_257 : f32 = u_xlat44;
  let x_259 : vec3<f32> = u_xlat5;
  let x_260 : vec3<f32> = (vec3<f32>(x_257, x_257, x_257) * x_259);
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_264 : f32 = u_xlat4.w;
  u_xlat44 = max(x_264, 0.00009999999747378752f);
  let x_267 : vec4<f32> = u_xlat4;
  let x_269 : f32 = u_xlat44;
  let x_271 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) / vec3<f32>(x_269, x_269, x_269));
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_275 : f32 = x_58.x_Metallic;
  u_xlat44 = ((-(x_275) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_281 : f32 = u_xlat44;
  let x_284 : f32 = x_58.x_Smoothness;
  u_xlat45 = (-(x_281) + x_284);
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : f32 = u_xlat44;
  u_xlat15 = (vec3<f32>(x_287.y, x_287.z, x_287.w) * vec3<f32>(x_289, x_289, x_289));
  let x_292 : vec4<f32> = u_xlat0;
  let x_295 : vec4<f32> = x_58.x_BaseColor;
  let x_300 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_295.x, x_295.y, x_295.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_304 : f32 = x_58.x_Metallic;
  let x_306 : f32 = x_58.x_Metallic;
  let x_308 : f32 = x_58.x_Metallic;
  let x_309 : vec3<f32> = vec3<f32>(x_304, x_306, x_308);
  let x_314 : vec4<f32> = u_xlat0;
  let x_319 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_314.x, x_314.y, x_314.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = x_58.x_Smoothness;
  u_xlat44 = (-(x_323) + 1.0f);
  let x_327 : f32 = u_xlat44;
  let x_328 : f32 = u_xlat44;
  u_xlat46 = (x_327 * x_328);
  let x_330 : f32 = u_xlat46;
  u_xlat46 = max(x_330, 0.0078125f);
  let x_333 : f32 = u_xlat46;
  let x_334 : f32 = u_xlat46;
  u_xlat5.x = (x_333 * x_334);
  let x_337 : f32 = u_xlat45;
  u_xlat45 = (x_337 + 1.0f);
  let x_339 : f32 = u_xlat45;
  u_xlat45 = clamp(x_339, 0.0f, 1.0f);
  let x_342 : f32 = u_xlat46;
  u_xlat19 = ((x_342 * 4.0f) + 2.0f);
  let x_349 : vec4<f32> = vs_TEXCOORD6;
  let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
  let x_352 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
  let x_365 : vec3<f32> = txVec0;
  let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_365.xy, x_365.z);
  u_xlat33 = x_367;
  let x_379 : f32 = x_376.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_379) + 1.0f);
  let x_382 : f32 = u_xlat33;
  let x_384 : f32 = x_376.x_MainLightShadowParams.x;
  let x_386 : f32 = u_xlat47;
  u_xlat33 = ((x_382 * x_384) + x_386);
  let x_390 : f32 = vs_TEXCOORD6.z;
  u_xlatb47 = (0.0f >= x_390);
  let x_394 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_394 >= 1.0f);
  let x_396 : bool = u_xlatb47;
  let x_397 : bool = u_xlatb6;
  u_xlatb47 = (x_396 | x_397);
  let x_399 : bool = u_xlatb47;
  let x_400 : f32 = u_xlat33;
  u_xlat33 = select(x_400, 1.0f, x_399);
  let x_403 : vec3<f32> = vs_TEXCOORD1;
  let x_405 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_407 : vec3<f32> = (x_403 + -(x_405));
  let x_408 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat6;
  let x_412 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : f32 = u_xlat47;
  let x_417 : f32 = x_376.x_MainLightShadowParams.z;
  let x_420 : f32 = x_376.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_415 * x_417) + x_420);
  let x_424 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_424, 0.0f, 1.0f);
  let x_428 : f32 = u_xlat33;
  u_xlat20 = (-(x_428) + 1.0f);
  let x_432 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat20;
  let x_435 : f32 = u_xlat33;
  u_xlat33 = ((x_432 * x_433) + x_435);
  let x_444 : f32 = x_442.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_444 == -1.0f));
  let x_447 : bool = u_xlatb6;
  if (x_447) {
    let x_450 : vec3<f32> = vs_TEXCOORD1;
    let x_453 : vec4<f32> = x_442.x_MainLightWorldToLight[1i];
    let x_455 : vec2<f32> = (vec2<f32>(x_450.y, x_450.y) * vec2<f32>(x_453.x, x_453.y));
    let x_456 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
    let x_459 : vec4<f32> = x_442.x_MainLightWorldToLight[0i];
    let x_461 : vec3<f32> = vs_TEXCOORD1;
    let x_464 : vec4<f32> = u_xlat6;
    let x_466 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(x_461.x, x_461.x)) + vec2<f32>(x_464.x, x_464.y));
    let x_467 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
    let x_470 : vec4<f32> = x_442.x_MainLightWorldToLight[2i];
    let x_472 : vec3<f32> = vs_TEXCOORD1;
    let x_475 : vec4<f32> = u_xlat6;
    let x_477 : vec2<f32> = ((vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_472.z, x_472.z)) + vec2<f32>(x_475.x, x_475.y));
    let x_478 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
    let x_480 : vec4<f32> = u_xlat6;
    let x_483 : vec4<f32> = x_442.x_MainLightWorldToLight[3i];
    let x_485 : vec2<f32> = (vec2<f32>(x_480.x, x_480.y) + vec2<f32>(x_483.x, x_483.y));
    let x_486 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
    let x_488 : vec4<f32> = u_xlat6;
    let x_492 : vec2<f32> = ((vec2<f32>(x_488.x, x_488.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_493 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
    let x_500 : vec4<f32> = u_xlat6;
    let x_503 : f32 = x_45.x_GlobalMipBias.x;
    let x_504 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_500.x, x_500.y), x_503);
    u_xlat6 = x_504;
    let x_509 : f32 = x_442.x_MainLightCookieTextureFormat;
    let x_511 : f32 = x_442.x_MainLightCookieTextureFormat;
    let x_513 : f32 = x_442.x_MainLightCookieTextureFormat;
    let x_515 : f32 = x_442.x_MainLightCookieTextureFormat;
    let x_516 : vec4<f32> = vec4<f32>(x_509, x_511, x_513, x_515);
    let x_524 : vec4<bool> = (vec4<f32>(x_516.x, x_516.y, x_516.z, x_516.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_524.x, x_524.y);
    let x_528 : bool = u_xlatb7.y;
    if (x_528) {
      let x_533 : f32 = u_xlat6.w;
      x_529 = x_533;
    } else {
      let x_536 : f32 = u_xlat6.x;
      x_529 = x_536;
    }
    let x_537 : f32 = x_529;
    u_xlat48 = x_537;
    let x_539 : bool = u_xlatb7.x;
    if (x_539) {
      let x_543 : vec4<f32> = u_xlat6;
      x_540 = vec3<f32>(x_543.x, x_543.y, x_543.z);
    } else {
      let x_546 : f32 = u_xlat48;
      x_540 = vec3<f32>(x_546, x_546, x_546);
    }
    let x_548 : vec3<f32> = x_540;
    let x_549 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_555 : vec4<f32> = u_xlat6;
  let x_558 : vec4<f32> = x_45.x_MainLightColor;
  let x_560 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec3<f32> = u_xlat2;
  let x_565 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(-(x_563), x_565);
  let x_567 : f32 = u_xlat48;
  let x_568 : f32 = u_xlat48;
  u_xlat48 = (x_567 + x_568);
  let x_571 : vec3<f32> = u_xlat3;
  let x_572 : f32 = u_xlat48;
  let x_576 : vec3<f32> = u_xlat2;
  let x_578 : vec3<f32> = ((x_571 * -(vec3<f32>(x_572, x_572, x_572))) + -(x_576));
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec3<f32> = u_xlat3;
  let x_582 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(x_581, x_582);
  let x_584 : f32 = u_xlat48;
  u_xlat48 = clamp(x_584, 0.0f, 1.0f);
  let x_586 : f32 = u_xlat48;
  u_xlat48 = (-(x_586) + 1.0f);
  let x_589 : f32 = u_xlat48;
  let x_590 : f32 = u_xlat48;
  u_xlat48 = (x_589 * x_590);
  let x_592 : f32 = u_xlat48;
  let x_593 : f32 = u_xlat48;
  u_xlat48 = (x_592 * x_593);
  let x_596 : f32 = u_xlat44;
  u_xlat49 = ((-(x_596) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_602 : f32 = u_xlat44;
  let x_603 : f32 = u_xlat49;
  u_xlat44 = (x_602 * x_603);
  let x_605 : f32 = u_xlat44;
  u_xlat44 = (x_605 * 6.0f);
  let x_616 : vec4<f32> = u_xlat7;
  let x_618 : f32 = u_xlat44;
  let x_619 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_616.x, x_616.y, x_616.z), x_618);
  u_xlat7 = x_619;
  let x_621 : f32 = u_xlat7.w;
  u_xlat44 = (x_621 + -1.0f);
  let x_624 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_625 : f32 = u_xlat44;
  u_xlat44 = ((x_624 * x_625) + 1.0f);
  let x_628 : f32 = u_xlat44;
  u_xlat44 = max(x_628, 0.0f);
  let x_630 : f32 = u_xlat44;
  u_xlat44 = log2(x_630);
  let x_632 : f32 = u_xlat44;
  let x_634 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_632 * x_634);
  let x_636 : f32 = u_xlat44;
  u_xlat44 = exp2(x_636);
  let x_638 : f32 = u_xlat44;
  let x_640 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_638 * x_640);
  let x_642 : vec4<f32> = u_xlat7;
  let x_644 : f32 = u_xlat44;
  let x_646 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(x_644, x_644, x_644));
  let x_647 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_651 : f32 = u_xlat46;
  let x_653 : f32 = u_xlat46;
  u_xlat8 = ((vec2<f32>(x_651, x_651) * vec2<f32>(x_653, x_653)) + vec2<f32>(-1.0f, 1.0f));
  let x_659 : f32 = u_xlat8.y;
  u_xlat44 = (1.0f / x_659);
  let x_662 : vec4<f32> = u_xlat0;
  let x_665 : f32 = u_xlat45;
  u_xlat22 = (-(vec3<f32>(x_662.x, x_662.y, x_662.z)) + vec3<f32>(x_665, x_665, x_665));
  let x_668 : f32 = u_xlat48;
  let x_670 : vec3<f32> = u_xlat22;
  let x_672 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_668, x_668, x_668) * x_670) + vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : f32 = u_xlat44;
  let x_677 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_675, x_675, x_675) * x_677);
  let x_679 : vec4<f32> = u_xlat7;
  let x_681 : vec3<f32> = u_xlat22;
  let x_682 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) * x_681);
  let x_683 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat4;
  let x_687 : vec3<f32> = u_xlat15;
  let x_689 : vec4<f32> = u_xlat7;
  let x_691 : vec3<f32> = ((vec3<f32>(x_685.x, x_685.y, x_685.z) * x_687) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : f32 = u_xlat33;
  let x_696 : f32 = x_96.unity_LightData.z;
  u_xlat44 = (x_694 * x_696);
  let x_698 : vec3<f32> = u_xlat3;
  let x_700 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat45 = dot(x_698, vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : f32 = u_xlat45;
  u_xlat45 = clamp(x_703, 0.0f, 1.0f);
  let x_705 : f32 = u_xlat44;
  let x_706 : f32 = u_xlat45;
  u_xlat44 = (x_705 * x_706);
  let x_708 : f32 = u_xlat44;
  let x_710 : vec4<f32> = u_xlat6;
  let x_712 : vec3<f32> = (vec3<f32>(x_708, x_708, x_708) * vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec3<f32> = u_xlat2;
  let x_717 : vec4<f32> = x_45.x_MainLightPosition;
  let x_719 : vec3<f32> = (x_715 + vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat7;
  let x_724 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : f32 = u_xlat44;
  u_xlat44 = max(x_727, 1.17549435e-38f);
  let x_730 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_730);
  let x_732 : f32 = u_xlat44;
  let x_734 : vec4<f32> = u_xlat7;
  let x_736 : vec3<f32> = (vec3<f32>(x_732, x_732, x_732) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec3<f32> = u_xlat3;
  let x_740 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(x_739, vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : f32 = u_xlat44;
  u_xlat44 = clamp(x_743, 0.0f, 1.0f);
  let x_746 : vec4<f32> = x_45.x_MainLightPosition;
  let x_748 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_746.x, x_746.y, x_746.z), vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : f32 = u_xlat45;
  u_xlat45 = clamp(x_751, 0.0f, 1.0f);
  let x_753 : f32 = u_xlat44;
  let x_754 : f32 = u_xlat44;
  u_xlat44 = (x_753 * x_754);
  let x_756 : f32 = u_xlat44;
  let x_758 : f32 = u_xlat8.x;
  u_xlat44 = ((x_756 * x_758) + 1.00001001358032226562f);
  let x_762 : f32 = u_xlat45;
  let x_763 : f32 = u_xlat45;
  u_xlat45 = (x_762 * x_763);
  let x_765 : f32 = u_xlat44;
  let x_766 : f32 = u_xlat44;
  u_xlat44 = (x_765 * x_766);
  let x_768 : f32 = u_xlat45;
  u_xlat45 = max(x_768, 0.10000000149011611938f);
  let x_771 : f32 = u_xlat44;
  let x_772 : f32 = u_xlat45;
  u_xlat44 = (x_771 * x_772);
  let x_774 : f32 = u_xlat19;
  let x_775 : f32 = u_xlat44;
  u_xlat44 = (x_774 * x_775);
  let x_778 : f32 = u_xlat5.x;
  let x_779 : f32 = u_xlat44;
  u_xlat44 = (x_778 / x_779);
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : f32 = u_xlat44;
  let x_786 : vec3<f32> = u_xlat15;
  let x_787 : vec3<f32> = ((vec3<f32>(x_781.x, x_781.y, x_781.z) * vec3<f32>(x_783, x_783, x_783)) + x_786);
  let x_788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_791 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_793 : f32 = x_96.unity_LightData.y;
  u_xlat44 = min(x_791, x_793);
  let x_797 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_797));
  let x_800 : f32 = u_xlat47;
  let x_803 : f32 = x_376.x_AdditionalShadowFadeParams.x;
  let x_806 : f32 = x_376.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_800 * x_803) + x_806);
  let x_808 : f32 = u_xlat45;
  u_xlat45 = clamp(x_808, 0.0f, 1.0f);
  let x_812 : f32 = x_442.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_814 : f32 = x_442.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_816 : f32 = x_442.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_818 : f32 = x_442.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_819 : vec4<f32> = vec4<f32>(x_812, x_814, x_816, x_818);
  let x_826 : vec4<bool> = (vec4<f32>(x_819.x, x_819.y, x_819.z, x_819.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb33 = vec2<bool>(x_826.x, x_826.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_838 : u32 = u_xlatu_loop_1;
    let x_839 : u32 = u_xlatu44;
    if ((x_838 < x_839)) {
    } else {
      break;
    }
    let x_842 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_842 >> 2u);
    let x_846 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_846 & 3u));
    let x_849 : u32 = u_xlatu48;
    let x_852 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_849)];
    let x_862 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_867 : vec4<u32> = indexable[x_862];
    u_xlat48 = dot(x_852, bitcast<vec4<f32>>(x_867));
    let x_871 : f32 = u_xlat48;
    u_xlati48 = i32(x_871);
    let x_874 : vec3<f32> = vs_TEXCOORD1;
    let x_885 : i32 = u_xlati48;
    let x_887 : vec4<f32> = x_884.x_AdditionalLightsPosition[x_885];
    let x_890 : i32 = u_xlati48;
    let x_892 : vec4<f32> = x_884.x_AdditionalLightsPosition[x_890];
    u_xlat9 = ((-(x_874) * vec3<f32>(x_887.w, x_887.w, x_887.w)) + vec3<f32>(x_892.x, x_892.y, x_892.z));
    let x_895 : vec3<f32> = u_xlat9;
    let x_896 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_895, x_896);
    let x_898 : f32 = u_xlat49;
    u_xlat49 = max(x_898, 0.00006103515625f);
    let x_902 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_902);
    let x_905 : f32 = u_xlat51;
    let x_907 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_905, x_905, x_905) * x_907);
    let x_910 : f32 = u_xlat49;
    u_xlat52 = (1.0f / x_910);
    let x_912 : f32 = u_xlat49;
    let x_913 : i32 = u_xlati48;
    let x_915 : f32 = x_884.x_AdditionalLightsAttenuation[x_913].x;
    u_xlat49 = (x_912 * x_915);
    let x_917 : f32 = u_xlat49;
    let x_919 : f32 = u_xlat49;
    u_xlat49 = ((-(x_917) * x_919) + 1.0f);
    let x_922 : f32 = u_xlat49;
    u_xlat49 = max(x_922, 0.0f);
    let x_924 : f32 = u_xlat49;
    let x_925 : f32 = u_xlat49;
    u_xlat49 = (x_924 * x_925);
    let x_927 : f32 = u_xlat49;
    let x_928 : f32 = u_xlat52;
    u_xlat49 = (x_927 * x_928);
    let x_930 : i32 = u_xlati48;
    let x_932 : vec4<f32> = x_884.x_AdditionalLightsSpotDir[x_930];
    let x_934 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), x_934);
    let x_936 : f32 = u_xlat52;
    let x_937 : i32 = u_xlati48;
    let x_939 : f32 = x_884.x_AdditionalLightsAttenuation[x_937].z;
    let x_941 : i32 = u_xlati48;
    let x_943 : f32 = x_884.x_AdditionalLightsAttenuation[x_941].w;
    u_xlat52 = ((x_936 * x_939) + x_943);
    let x_945 : f32 = u_xlat52;
    u_xlat52 = clamp(x_945, 0.0f, 1.0f);
    let x_947 : f32 = u_xlat52;
    let x_948 : f32 = u_xlat52;
    u_xlat52 = (x_947 * x_948);
    let x_950 : f32 = u_xlat49;
    let x_951 : f32 = u_xlat52;
    u_xlat49 = (x_950 * x_951);
    let x_955 : i32 = u_xlati48;
    let x_957 : f32 = x_376.x_AdditionalShadowParams[x_955].w;
    u_xlati52 = i32(x_957);
    let x_962 : i32 = u_xlati52;
    u_xlatb11.x = (x_962 >= 0i);
    let x_966 : bool = u_xlatb11.x;
    if (x_966) {
      let x_970 : i32 = u_xlati48;
      let x_972 : f32 = x_376.x_AdditionalShadowParams[x_970].z;
      u_xlatb11.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_972, x_972, x_972, x_972))));
      let x_978 : bool = u_xlatb11.x;
      if (x_978) {
        let x_981 : vec3<f32> = u_xlat10;
        let x_984 : vec3<f32> = u_xlat10;
        let x_987 : vec4<bool> = (abs(vec4<f32>(x_981.z, x_981.z, x_981.y, x_981.z)) >= abs(vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.x)));
        u_xlatb11 = vec3<bool>(x_987.x, x_987.y, x_987.z);
        let x_990 : bool = u_xlatb11.y;
        let x_992 : bool = u_xlatb11.x;
        u_xlatb11.x = (x_990 & x_992);
        let x_996 : vec3<f32> = u_xlat10;
        let x_999 : vec4<bool> = (-(vec4<f32>(x_996.z, x_996.y, x_996.x, x_996.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb12 = vec3<bool>(x_999.x, x_999.y, x_999.z);
        let x_1003 : bool = u_xlatb12.x;
        u_xlat25.x = select(4.0f, 5.0f, x_1003);
        let x_1008 : bool = u_xlatb12.y;
        u_xlat25.z = select(2.0f, 3.0f, x_1008);
        let x_1014 : bool = u_xlatb12.z;
        u_xlat12.x = select(0.0f, 1.0f, x_1014);
        let x_1019 : bool = u_xlatb11.z;
        if (x_1019) {
          let x_1024 : f32 = u_xlat25.z;
          x_1020 = x_1024;
        } else {
          let x_1027 : f32 = u_xlat12.x;
          x_1020 = x_1027;
        }
        let x_1028 : f32 = x_1020;
        u_xlat39 = x_1028;
        let x_1031 : bool = u_xlatb11.x;
        if (x_1031) {
          let x_1036 : f32 = u_xlat25.x;
          x_1032 = x_1036;
        } else {
          let x_1038 : f32 = u_xlat39;
          x_1032 = x_1038;
        }
        let x_1039 : f32 = x_1032;
        u_xlat11.x = x_1039;
        let x_1041 : i32 = u_xlati48;
        let x_1043 : f32 = x_376.x_AdditionalShadowParams[x_1041].w;
        u_xlat25.x = trunc(x_1043);
        let x_1047 : f32 = u_xlat11.x;
        let x_1049 : f32 = u_xlat25.x;
        u_xlat11.x = (x_1047 + x_1049);
        let x_1053 : f32 = u_xlat11.x;
        u_xlati52 = i32(x_1053);
      }
      let x_1055 : i32 = u_xlati52;
      u_xlati52 = (x_1055 << bitcast<u32>(2i));
      let x_1057 : vec3<f32> = vs_TEXCOORD1;
      let x_1060 : i32 = u_xlati52;
      let x_1063 : i32 = u_xlati52;
      let x_1067 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1060 + 1i) / 4i)][((x_1063 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1057.y, x_1057.y, x_1057.y, x_1057.y) * x_1067);
      let x_1069 : i32 = u_xlati52;
      let x_1071 : i32 = u_xlati52;
      let x_1074 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[(x_1069 / 4i)][(x_1071 % 4i)];
      let x_1075 : vec3<f32> = vs_TEXCOORD1;
      let x_1078 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1074 * vec4<f32>(x_1075.x, x_1075.x, x_1075.x, x_1075.x)) + x_1078);
      let x_1080 : i32 = u_xlati52;
      let x_1083 : i32 = u_xlati52;
      let x_1087 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1080 + 2i) / 4i)][((x_1083 + 2i) % 4i)];
      let x_1088 : vec3<f32> = vs_TEXCOORD1;
      let x_1091 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1087 * vec4<f32>(x_1088.z, x_1088.z, x_1088.z, x_1088.z)) + x_1091);
      let x_1093 : vec4<f32> = u_xlat11;
      let x_1094 : i32 = u_xlati52;
      let x_1097 : i32 = u_xlati52;
      let x_1101 : vec4<f32> = x_376.x_AdditionalLightsWorldToShadow[((x_1094 + 3i) / 4i)][((x_1097 + 3i) % 4i)];
      u_xlat11 = (x_1093 + x_1101);
      let x_1103 : vec4<f32> = u_xlat11;
      let x_1105 : vec4<f32> = u_xlat11;
      let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) / vec3<f32>(x_1105.w, x_1105.w, x_1105.w));
      let x_1108 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
      let x_1111 : vec4<f32> = u_xlat11;
      let x_1112 : vec2<f32> = vec2<f32>(x_1111.x, x_1111.y);
      let x_1114 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1112.x, x_1112.y, x_1114);
      let x_1122 : vec3<f32> = txVec1;
      let x_1124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1122.xy, x_1122.z);
      u_xlat52 = x_1124;
      let x_1125 : i32 = u_xlati48;
      let x_1127 : f32 = x_376.x_AdditionalShadowParams[x_1125].x;
      u_xlat11.x = (1.0f + -(x_1127));
      let x_1131 : f32 = u_xlat52;
      let x_1132 : i32 = u_xlati48;
      let x_1134 : f32 = x_376.x_AdditionalShadowParams[x_1132].x;
      let x_1137 : f32 = u_xlat11.x;
      u_xlat52 = ((x_1131 * x_1134) + x_1137);
      let x_1140 : f32 = u_xlat11.z;
      u_xlatb11.x = (0.0f >= x_1140);
      let x_1145 : f32 = u_xlat11.z;
      u_xlatb25 = (x_1145 >= 1.0f);
      let x_1147 : bool = u_xlatb25;
      let x_1149 : bool = u_xlatb11.x;
      u_xlatb11.x = (x_1147 | x_1149);
      let x_1153 : bool = u_xlatb11.x;
      let x_1154 : f32 = u_xlat52;
      u_xlat52 = select(x_1154, 1.0f, x_1153);
    } else {
      u_xlat52 = 1.0f;
    }
    let x_1157 : f32 = u_xlat52;
    u_xlat11.x = (-(x_1157) + 1.0f);
    let x_1161 : f32 = u_xlat45;
    let x_1163 : f32 = u_xlat11.x;
    let x_1165 : f32 = u_xlat52;
    u_xlat52 = ((x_1161 * x_1163) + x_1165);
    let x_1168 : i32 = u_xlati48;
    u_xlati11 = (1i << bitcast<u32>((x_1168 & 31i)));
    let x_1172 : i32 = u_xlati11;
    let x_1175 : f32 = x_442.x_AdditionalLightsCookieEnableBits;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1172) & bitcast<u32>(x_1175)));
    let x_1179 : i32 = u_xlati11;
    if ((x_1179 != 0i)) {
      let x_1183 : i32 = u_xlati48;
      let x_1185 : f32 = x_442.x_AdditionalLightsLightTypes[x_1183].el;
      u_xlati11 = i32(x_1185);
      let x_1188 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1188 != 0i));
      let x_1192 : i32 = u_xlati48;
      u_xlati39 = (x_1192 << bitcast<u32>(2i));
      let x_1194 : i32 = u_xlati25;
      if ((x_1194 != 0i)) {
        let x_1198 : vec3<f32> = vs_TEXCOORD1;
        let x_1200 : i32 = u_xlati39;
        let x_1203 : i32 = u_xlati39;
        let x_1207 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1200 + 1i) / 4i)][((x_1203 + 1i) % 4i)];
        let x_1209 : vec3<f32> = (vec3<f32>(x_1198.y, x_1198.y, x_1198.y) * vec3<f32>(x_1207.x, x_1207.y, x_1207.w));
        let x_1210 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
        let x_1212 : i32 = u_xlati39;
        let x_1214 : i32 = u_xlati39;
        let x_1217 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[(x_1212 / 4i)][(x_1214 % 4i)];
        let x_1219 : vec3<f32> = vs_TEXCOORD1;
        let x_1222 : vec4<f32> = u_xlat12;
        let x_1224 : vec3<f32> = ((vec3<f32>(x_1217.x, x_1217.y, x_1217.w) * vec3<f32>(x_1219.x, x_1219.x, x_1219.x)) + vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
        let x_1225 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
        let x_1227 : i32 = u_xlati39;
        let x_1230 : i32 = u_xlati39;
        let x_1234 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1227 + 2i) / 4i)][((x_1230 + 2i) % 4i)];
        let x_1236 : vec3<f32> = vs_TEXCOORD1;
        let x_1239 : vec4<f32> = u_xlat12;
        let x_1241 : vec3<f32> = ((vec3<f32>(x_1234.x, x_1234.y, x_1234.w) * vec3<f32>(x_1236.z, x_1236.z, x_1236.z)) + vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
        let x_1242 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat12;
        let x_1246 : i32 = u_xlati39;
        let x_1249 : i32 = u_xlati39;
        let x_1253 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1246 + 3i) / 4i)][((x_1249 + 3i) % 4i)];
        let x_1255 : vec3<f32> = (vec3<f32>(x_1244.x, x_1244.y, x_1244.z) + vec3<f32>(x_1253.x, x_1253.y, x_1253.w));
        let x_1256 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
        let x_1258 : vec4<f32> = u_xlat12;
        let x_1260 : vec4<f32> = u_xlat12;
        let x_1262 : vec2<f32> = (vec2<f32>(x_1258.x, x_1258.y) / vec2<f32>(x_1260.z, x_1260.z));
        let x_1263 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1262.x, x_1263.y, x_1262.y);
        let x_1265 : vec3<f32> = u_xlat25;
        let x_1268 : vec2<f32> = ((vec2<f32>(x_1265.x, x_1265.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1269 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1268.x, x_1269.y, x_1268.y);
        let x_1271 : vec3<f32> = u_xlat25;
        let x_1275 : vec2<f32> = clamp(vec2<f32>(x_1271.x, x_1271.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1276 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1275.x, x_1276.y, x_1275.y);
        let x_1278 : i32 = u_xlati48;
        let x_1280 : vec4<f32> = x_442.x_AdditionalLightsCookieAtlasUVRects[x_1278];
        let x_1282 : vec3<f32> = u_xlat25;
        let x_1285 : i32 = u_xlati48;
        let x_1287 : vec4<f32> = x_442.x_AdditionalLightsCookieAtlasUVRects[x_1285];
        let x_1289 : vec2<f32> = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1282.x, x_1282.z)) + vec2<f32>(x_1287.z, x_1287.w));
        let x_1290 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1289.x, x_1290.y, x_1289.y);
      } else {
        let x_1293 : i32 = u_xlati11;
        u_xlatb11.x = (x_1293 == 1i);
        let x_1297 : bool = u_xlatb11.x;
        u_xlati11 = select(0i, 1i, x_1297);
        let x_1299 : i32 = u_xlati11;
        if ((x_1299 != 0i)) {
          let x_1303 : vec3<f32> = vs_TEXCOORD1;
          let x_1305 : i32 = u_xlati39;
          let x_1308 : i32 = u_xlati39;
          let x_1312 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1305 + 1i) / 4i)][((x_1308 + 1i) % 4i)];
          let x_1314 : vec2<f32> = (vec2<f32>(x_1303.y, x_1303.y) * vec2<f32>(x_1312.x, x_1312.y));
          let x_1315 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
          let x_1317 : i32 = u_xlati39;
          let x_1319 : i32 = u_xlati39;
          let x_1322 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[(x_1317 / 4i)][(x_1319 % 4i)];
          let x_1324 : vec3<f32> = vs_TEXCOORD1;
          let x_1327 : vec4<f32> = u_xlat12;
          let x_1329 : vec2<f32> = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1324.x, x_1324.x)) + vec2<f32>(x_1327.x, x_1327.y));
          let x_1330 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
          let x_1332 : i32 = u_xlati39;
          let x_1335 : i32 = u_xlati39;
          let x_1339 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1332 + 2i) / 4i)][((x_1335 + 2i) % 4i)];
          let x_1341 : vec3<f32> = vs_TEXCOORD1;
          let x_1344 : vec4<f32> = u_xlat12;
          let x_1346 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * vec2<f32>(x_1341.z, x_1341.z)) + vec2<f32>(x_1344.x, x_1344.y));
          let x_1347 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
          let x_1349 : vec4<f32> = u_xlat12;
          let x_1351 : i32 = u_xlati39;
          let x_1354 : i32 = u_xlati39;
          let x_1358 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1351 + 3i) / 4i)][((x_1354 + 3i) % 4i)];
          let x_1360 : vec2<f32> = (vec2<f32>(x_1349.x, x_1349.y) + vec2<f32>(x_1358.x, x_1358.y));
          let x_1361 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
          let x_1363 : vec4<f32> = u_xlat12;
          let x_1366 : vec2<f32> = ((vec2<f32>(x_1363.x, x_1363.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1367 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
          let x_1369 : vec4<f32> = u_xlat12;
          let x_1371 : vec2<f32> = fract(vec2<f32>(x_1369.x, x_1369.y));
          let x_1372 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1371.x, x_1371.y, x_1372.z, x_1372.w);
          let x_1374 : i32 = u_xlati48;
          let x_1376 : vec4<f32> = x_442.x_AdditionalLightsCookieAtlasUVRects[x_1374];
          let x_1378 : vec4<f32> = u_xlat12;
          let x_1381 : i32 = u_xlati48;
          let x_1383 : vec4<f32> = x_442.x_AdditionalLightsCookieAtlasUVRects[x_1381];
          let x_1385 : vec2<f32> = ((vec2<f32>(x_1376.x, x_1376.y) * vec2<f32>(x_1378.x, x_1378.y)) + vec2<f32>(x_1383.z, x_1383.w));
          let x_1386 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1385.x, x_1386.y, x_1385.y);
        } else {
          let x_1389 : vec3<f32> = vs_TEXCOORD1;
          let x_1391 : i32 = u_xlati39;
          let x_1394 : i32 = u_xlati39;
          let x_1398 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1391 + 1i) / 4i)][((x_1394 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1389.y, x_1389.y, x_1389.y, x_1389.y) * x_1398);
          let x_1400 : i32 = u_xlati39;
          let x_1402 : i32 = u_xlati39;
          let x_1405 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[(x_1400 / 4i)][(x_1402 % 4i)];
          let x_1406 : vec3<f32> = vs_TEXCOORD1;
          let x_1409 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1405 * vec4<f32>(x_1406.x, x_1406.x, x_1406.x, x_1406.x)) + x_1409);
          let x_1411 : i32 = u_xlati39;
          let x_1414 : i32 = u_xlati39;
          let x_1418 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1411 + 2i) / 4i)][((x_1414 + 2i) % 4i)];
          let x_1419 : vec3<f32> = vs_TEXCOORD1;
          let x_1422 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1418 * vec4<f32>(x_1419.z, x_1419.z, x_1419.z, x_1419.z)) + x_1422);
          let x_1424 : vec4<f32> = u_xlat12;
          let x_1425 : i32 = u_xlati39;
          let x_1428 : i32 = u_xlati39;
          let x_1432 : vec4<f32> = x_442.x_AdditionalLightsWorldToLights[((x_1425 + 3i) / 4i)][((x_1428 + 3i) % 4i)];
          u_xlat12 = (x_1424 + x_1432);
          let x_1434 : vec4<f32> = u_xlat12;
          let x_1436 : vec4<f32> = u_xlat12;
          let x_1438 : vec3<f32> = (vec3<f32>(x_1434.x, x_1434.y, x_1434.z) / vec3<f32>(x_1436.w, x_1436.w, x_1436.w));
          let x_1439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
          let x_1441 : vec4<f32> = u_xlat12;
          let x_1443 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1441.x, x_1441.y, x_1441.z), vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
          let x_1448 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1448);
          let x_1451 : vec4<f32> = u_xlat11;
          let x_1453 : vec4<f32> = u_xlat12;
          let x_1455 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.x, x_1451.x) * vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
          let x_1456 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
          let x_1458 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1458.x, x_1458.y, x_1458.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1465 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1465, 0.00000099999999747524f);
          let x_1470 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1470);
          let x_1474 : vec4<f32> = u_xlat11;
          let x_1476 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1474.x, x_1474.x, x_1474.x) * vec3<f32>(x_1476.z, x_1476.x, x_1476.y));
          let x_1480 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1480);
          let x_1484 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1484, 0.0f, 1.0f);
          let x_1488 : vec3<f32> = u_xlat13;
          let x_1490 : vec4<bool> = (vec4<f32>(x_1488.y, x_1488.z, x_1488.y, x_1488.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1490.x, x_1490.y);
          let x_1494 : bool = u_xlatb40.x;
          if (x_1494) {
            let x_1499 : f32 = u_xlat13.x;
            x_1495 = x_1499;
          } else {
            let x_1502 : f32 = u_xlat13.x;
            x_1495 = -(x_1502);
          }
          let x_1504 : f32 = x_1495;
          u_xlat40.x = x_1504;
          let x_1507 : bool = u_xlatb40.y;
          if (x_1507) {
            let x_1512 : f32 = u_xlat13.x;
            x_1508 = x_1512;
          } else {
            let x_1515 : f32 = u_xlat13.x;
            x_1508 = -(x_1515);
          }
          let x_1517 : f32 = x_1508;
          u_xlat40.y = x_1517;
          let x_1519 : vec4<f32> = u_xlat12;
          let x_1521 : vec4<f32> = u_xlat11;
          let x_1524 : vec2<f32> = u_xlat40;
          let x_1525 : vec2<f32> = ((vec2<f32>(x_1519.x, x_1519.y) * vec2<f32>(x_1521.x, x_1521.x)) + x_1524);
          let x_1526 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1525.x, x_1526.y, x_1525.y, x_1526.w);
          let x_1528 : vec4<f32> = u_xlat11;
          let x_1531 : vec2<f32> = ((vec2<f32>(x_1528.x, x_1528.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1532 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1531.x, x_1532.y, x_1531.y, x_1532.w);
          let x_1534 : vec4<f32> = u_xlat11;
          let x_1538 : vec2<f32> = clamp(vec2<f32>(x_1534.x, x_1534.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1539 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1538.x, x_1539.y, x_1538.y, x_1539.w);
          let x_1541 : i32 = u_xlati48;
          let x_1543 : vec4<f32> = x_442.x_AdditionalLightsCookieAtlasUVRects[x_1541];
          let x_1545 : vec4<f32> = u_xlat11;
          let x_1548 : i32 = u_xlati48;
          let x_1550 : vec4<f32> = x_442.x_AdditionalLightsCookieAtlasUVRects[x_1548];
          let x_1552 : vec2<f32> = ((vec2<f32>(x_1543.x, x_1543.y) * vec2<f32>(x_1545.x, x_1545.z)) + vec2<f32>(x_1550.z, x_1550.w));
          let x_1553 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1552.x, x_1553.y, x_1552.y);
        }
      }
      let x_1560 : vec3<f32> = u_xlat25;
      let x_1562 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1560.x, x_1560.z), 0.0f);
      u_xlat11 = x_1562;
      let x_1565 : bool = u_xlatb33.y;
      if (x_1565) {
        let x_1570 : f32 = u_xlat11.w;
        x_1566 = x_1570;
      } else {
        let x_1573 : f32 = u_xlat11.x;
        x_1566 = x_1573;
      }
      let x_1574 : f32 = x_1566;
      u_xlat53 = x_1574;
      let x_1576 : bool = u_xlatb33.x;
      if (x_1576) {
        let x_1580 : vec4<f32> = u_xlat11;
        x_1577 = vec3<f32>(x_1580.x, x_1580.y, x_1580.z);
      } else {
        let x_1583 : f32 = u_xlat53;
        x_1577 = vec3<f32>(x_1583, x_1583, x_1583);
      }
      let x_1585 : vec3<f32> = x_1577;
      let x_1586 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1592 : vec4<f32> = u_xlat11;
    let x_1594 : i32 = u_xlati48;
    let x_1596 : vec4<f32> = x_884.x_AdditionalLightsColor[x_1594];
    let x_1598 : vec3<f32> = (vec3<f32>(x_1592.x, x_1592.y, x_1592.z) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
    let x_1599 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
    let x_1601 : f32 = u_xlat49;
    let x_1602 : f32 = u_xlat52;
    u_xlat48 = (x_1601 * x_1602);
    let x_1604 : vec3<f32> = u_xlat3;
    let x_1605 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1604, x_1605);
    let x_1607 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1607, 0.0f, 1.0f);
    let x_1609 : f32 = u_xlat48;
    let x_1610 : f32 = u_xlat49;
    u_xlat48 = (x_1609 * x_1610);
    let x_1612 : f32 = u_xlat48;
    let x_1614 : vec4<f32> = u_xlat11;
    let x_1616 : vec3<f32> = (vec3<f32>(x_1612, x_1612, x_1612) * vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
    let x_1617 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1616.x, x_1616.y, x_1616.z, x_1617.w);
    let x_1619 : vec3<f32> = u_xlat9;
    let x_1620 : f32 = u_xlat51;
    let x_1623 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1619 * vec3<f32>(x_1620, x_1620, x_1620)) + x_1623);
    let x_1625 : vec3<f32> = u_xlat9;
    let x_1626 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1625, x_1626);
    let x_1628 : f32 = u_xlat48;
    u_xlat48 = max(x_1628, 1.17549435e-38f);
    let x_1630 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1630);
    let x_1632 : f32 = u_xlat48;
    let x_1634 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1632, x_1632, x_1632) * x_1634);
    let x_1636 : vec3<f32> = u_xlat3;
    let x_1637 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1636, x_1637);
    let x_1639 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1639, 0.0f, 1.0f);
    let x_1641 : vec3<f32> = u_xlat10;
    let x_1642 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1641, x_1642);
    let x_1644 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1644, 0.0f, 1.0f);
    let x_1646 : f32 = u_xlat48;
    let x_1647 : f32 = u_xlat48;
    u_xlat48 = (x_1646 * x_1647);
    let x_1649 : f32 = u_xlat48;
    let x_1651 : f32 = u_xlat8.x;
    u_xlat48 = ((x_1649 * x_1651) + 1.00001001358032226562f);
    let x_1654 : f32 = u_xlat49;
    let x_1655 : f32 = u_xlat49;
    u_xlat49 = (x_1654 * x_1655);
    let x_1657 : f32 = u_xlat48;
    let x_1658 : f32 = u_xlat48;
    u_xlat48 = (x_1657 * x_1658);
    let x_1660 : f32 = u_xlat49;
    u_xlat49 = max(x_1660, 0.10000000149011611938f);
    let x_1662 : f32 = u_xlat48;
    let x_1663 : f32 = u_xlat49;
    u_xlat48 = (x_1662 * x_1663);
    let x_1665 : f32 = u_xlat19;
    let x_1666 : f32 = u_xlat48;
    u_xlat48 = (x_1665 * x_1666);
    let x_1669 : f32 = u_xlat5.x;
    let x_1670 : f32 = u_xlat48;
    u_xlat48 = (x_1669 / x_1670);
    let x_1672 : vec4<f32> = u_xlat0;
    let x_1674 : f32 = u_xlat48;
    let x_1677 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1672.x, x_1672.y, x_1672.z) * vec3<f32>(x_1674, x_1674, x_1674)) + x_1677);
    let x_1679 : vec3<f32> = u_xlat9;
    let x_1680 : vec4<f32> = u_xlat11;
    let x_1683 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1679 * vec3<f32>(x_1680.x, x_1680.y, x_1680.z)) + x_1683);

    continuing {
      let x_1685 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1685 + bitcast<u32>(1i));
    }
  }
  let x_1687 : vec4<f32> = u_xlat7;
  let x_1689 : vec4<f32> = u_xlat6;
  let x_1692 : vec4<f32> = u_xlat4;
  let x_1694 : vec3<f32> = ((vec3<f32>(x_1687.x, x_1687.y, x_1687.z) * vec3<f32>(x_1689.x, x_1689.y, x_1689.z)) + vec3<f32>(x_1692.x, x_1692.y, x_1692.z));
  let x_1695 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
  let x_1697 : vec3<f32> = u_xlat22;
  let x_1698 : vec4<f32> = u_xlat0;
  let x_1700 : vec3<f32> = (x_1697 + vec3<f32>(x_1698.x, x_1698.y, x_1698.z));
  let x_1701 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1701.w);
  let x_1703 : f32 = u_xlat42;
  let x_1704 : f32 = u_xlat42;
  u_xlat42 = (x_1703 * -(x_1704));
  let x_1707 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1707);
  let x_1709 : vec4<f32> = u_xlat0;
  let x_1712 : vec4<f32> = x_45.unity_FogColor;
  let x_1715 : vec3<f32> = (vec3<f32>(x_1709.x, x_1709.y, x_1709.z) + -(vec3<f32>(x_1712.x, x_1712.y, x_1712.z)));
  let x_1716 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
  let x_1720 : f32 = u_xlat42;
  let x_1722 : vec4<f32> = u_xlat0;
  let x_1726 : vec4<f32> = x_45.unity_FogColor;
  let x_1728 : vec3<f32> = ((vec3<f32>(x_1720, x_1720, x_1720) * vec3<f32>(x_1722.x, x_1722.y, x_1722.z)) + vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
  let x_1729 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
  let x_1733 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_1733 == 1.0f);
  let x_1735 : bool = u_xlatb0;
  if (x_1735) {
    let x_1740 : f32 = u_xlat1.x;
    x_1736 = x_1740;
  } else {
    x_1736 = 1.0f;
  }
  let x_1742 : f32 = x_1736;
  SV_Target0.w = x_1742;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


