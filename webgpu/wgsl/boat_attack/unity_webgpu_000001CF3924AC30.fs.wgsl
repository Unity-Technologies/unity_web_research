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
  unity_MatrixV : mat4x4<f32>,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(8) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_782 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_855 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1045 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1330 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(12) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_583 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_938 : f32;
  var x_949 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1467 : f32;
  var x_1477 : f32;
  var txVec1 : vec3<f32>;
  var x_1905 : f32;
  var x_1918 : f32;
  var x_1976 : f32;
  var x_1987 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_63 : vec4<f32> = x_59.x_MaskMapRemapScale0;
  let x_70 : vec4<f32> = x_59.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_63.x, x_63.y, x_63.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_70.x, x_70.y, x_70.w));
  let x_77 : vec4<f32> = x_59.x_MaskMapRemapScale1;
  let x_82 : vec4<f32> = x_59.x_MaskMapRemapOffset1;
  let x_84 : vec3<f32> = ((vec3<f32>(x_77.x, x_77.y, x_77.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_82.x, x_82.y, x_82.w));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_90 : vec4<f32> = x_59.x_MaskMapRemapScale2;
  let x_95 : vec4<f32> = x_59.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_101 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_106 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.w, x_101.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_106.x, x_106.w, x_106.y));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_108.z);
  let x_114 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_118 : vec2<f32> = (vec2<f32>(x_114.z, x_114.w) + vec2<f32>(-1.0f, -1.0f));
  let x_119 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  let x_123 : vec4<f32> = u_xlat4;
  let x_127 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(0.5f, 0.5f));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat4;
  let x_133 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_135 : vec2<f32> = (vec2<f32>(x_130.x, x_130.y) * vec2<f32>(x_133.x, x_133.y));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_143 : vec4<f32> = u_xlat4;
  let x_146 : f32 = x_29.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_143.x, x_143.y), x_146);
  u_xlat4 = x_147;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_149, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_160 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : f32 = x_29.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_160.x, x_160.y), x_163);
  u_xlat5 = x_164;
  let x_170 : vec4<f32> = vs_TEXCOORD1;
  let x_173 : f32 = x_29.x_GlobalMipBias.x;
  let x_174 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_170.z, x_170.w), x_173);
  u_xlat6 = x_174;
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_181.x, x_181.y), x_184);
  u_xlat7 = x_185;
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : f32 = x_29.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_191.z, x_191.w), x_194);
  u_xlat8 = x_195;
  let x_199 : f32 = u_xlat5.w;
  u_xlat9.x = x_199;
  let x_202 : f32 = u_xlat6.w;
  u_xlat9.y = x_202;
  let x_206 : f32 = u_xlat7.w;
  u_xlat9.z = x_206;
  let x_210 : f32 = u_xlat8.w;
  u_xlat9.w = x_210;
  let x_213 : vec4<f32> = u_xlat9;
  let x_216 : f32 = x_59.x_Smoothness0;
  let x_219 : f32 = x_59.x_Smoothness1;
  let x_222 : f32 = x_59.x_Smoothness2;
  let x_225 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_213 * vec4<f32>(x_216, x_219, x_222, x_225));
  let x_232 : f32 = x_59.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_232);
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_235) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat9;
  let x_239 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_238 + -(x_239));
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_242 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_246, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_250 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_254);
  let x_257 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_257 + -(x_258));
  let x_263 : f32 = u_xlat12.x;
  let x_266 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.y;
  let x_273 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_270 * x_273);
  let x_277 : f32 = u_xlat12.z;
  let x_280 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_277 * x_280);
  let x_284 : f32 = u_xlat12.w;
  let x_287 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_284 * x_287);
  let x_290 : vec4<f32> = u_xlat11;
  let x_291 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_290 + x_291);
  let x_293 : bool = u_xlatb43;
  let x_294 : vec4<f32> = u_xlat11;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_295, x_294, vec4<bool>(x_293, x_293, x_293, x_293));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_300, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_304 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_304);
  let x_306 : bool = u_xlatb44;
  if (((select(0i, 1i, x_306) * -1i) != 0i)) {
    discard;
  }
  let x_313 : f32 = u_xlat43;
  u_xlat43 = (x_313 + 0.00006103515625f);
  let x_316 : vec4<f32> = u_xlat4;
  let x_317 : f32 = u_xlat43;
  u_xlat4 = (x_316 / vec4<f32>(x_317, x_317, x_317, x_317));
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.x, x_320.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.y, x_328.y, x_328.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec4<f32> = u_xlat12;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = u_xlat11;
  let x_348 : vec4<f32> = u_xlat6;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat4;
  let x_356 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.z, x_353.z, x_353.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat6;
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.y, x_363.z)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_374 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_376 : vec3<f32> = (vec3<f32>(x_371.w, x_371.w, x_371.w) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.x, x_381.y, x_381.z)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_390;
  let x_393 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_393;
  let x_396 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_396;
  let x_399 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_399;
  let x_402 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_402;
  let x_405 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_405;
  let x_408 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_408;
  let x_411 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_411;
  let x_413 : vec4<f32> = u_xlat6;
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_413 + x_414);
  let x_417 : f32 = u_xlat0.z;
  u_xlat7.x = x_417;
  let x_420 : f32 = u_xlat1.z;
  u_xlat7.y = x_420;
  let x_423 : f32 = u_xlat2.z;
  u_xlat7.z = x_423;
  let x_426 : f32 = u_xlat3.y;
  u_xlat7.w = x_426;
  let x_428 : vec4<f32> = u_xlat9;
  let x_431 : f32 = x_59.x_Smoothness0;
  let x_433 : f32 = x_59.x_Smoothness1;
  let x_435 : f32 = x_59.x_Smoothness2;
  let x_437 : f32 = x_59.x_Smoothness3;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_428) * vec4<f32>(x_431, x_433, x_435, x_437)) + x_440);
  let x_444 : f32 = x_59.x_LayerHasMask0;
  let x_447 : f32 = x_59.x_LayerHasMask1;
  let x_450 : f32 = x_59.x_LayerHasMask2;
  let x_453 : f32 = x_59.x_LayerHasMask3;
  let x_455 : vec4<f32> = u_xlat7;
  let x_457 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_444, x_447, x_450, x_453) * x_455) + x_457);
  let x_460 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_460, x_461);
  let x_464 : f32 = u_xlat0.x;
  u_xlat7.x = x_464;
  let x_467 : f32 = u_xlat1.x;
  u_xlat7.y = x_467;
  let x_470 : f32 = u_xlat2.x;
  u_xlat7.z = x_470;
  let x_473 : f32 = u_xlat3.x;
  u_xlat7.w = x_473;
  let x_475 : vec4<f32> = u_xlat7;
  let x_478 : f32 = x_59.x_Metallic0;
  let x_481 : f32 = x_59.x_Metallic1;
  let x_484 : f32 = x_59.x_Metallic2;
  let x_487 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_475 + -(vec4<f32>(x_478, x_481, x_484, x_487)));
  let x_492 : f32 = x_59.x_LayerHasMask0;
  let x_494 : f32 = x_59.x_LayerHasMask1;
  let x_496 : f32 = x_59.x_LayerHasMask2;
  let x_498 : f32 = x_59.x_LayerHasMask3;
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : f32 = x_59.x_Metallic0;
  let x_505 : f32 = x_59.x_Metallic1;
  let x_507 : f32 = x_59.x_Metallic2;
  let x_509 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_492, x_494, x_496, x_498) * x_500) + vec4<f32>(x_503, x_505, x_507, x_509));
  let x_512 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_512, x_513);
  let x_517 : f32 = u_xlat0.y;
  u_xlat3.x = x_517;
  let x_520 : f32 = u_xlat1.y;
  u_xlat3.y = x_520;
  let x_523 : f32 = u_xlat2.y;
  u_xlat3.z = x_523;
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_525) + x_527);
  let x_530 : f32 = x_59.x_LayerHasMask0;
  let x_532 : f32 = x_59.x_LayerHasMask1;
  let x_534 : f32 = x_59.x_LayerHasMask2;
  let x_536 : f32 = x_59.x_LayerHasMask3;
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_530, x_532, x_534, x_536) * x_538) + x_540);
  let x_543 : vec4<f32> = u_xlat4;
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_543, x_544);
  let x_548 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_548 == 0.0f);
  let x_553 : vec3<f32> = vs_TEXCOORD7;
  let x_557 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_553) + x_557);
  let x_559 : vec3<f32> = u_xlat15;
  let x_560 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_559, x_560);
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_564);
  let x_567 : vec3<f32> = u_xlat15;
  let x_568 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x));
  let x_572 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_572;
  let x_575 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_575;
  let x_579 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_579;
  let x_581 : bool = u_xlatb1;
  if (x_581) {
    let x_586 : vec3<f32> = u_xlat15;
    x_583 = x_586;
  } else {
    let x_588 : vec3<f32> = u_xlat2;
    x_583 = x_588;
  }
  let x_589 : vec3<f32> = x_583;
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_593, x_594);
  let x_596 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_596);
  let x_598 : f32 = u_xlat43;
  let x_600 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_598, x_598, x_598) * x_600);
  let x_604 : f32 = vs_TEXCOORD7.y;
  let x_606 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat43 = (x_604 * x_606);
  let x_609 : f32 = x_29.unity_MatrixV[0i].z;
  let x_611 : f32 = vs_TEXCOORD7.x;
  let x_613 : f32 = u_xlat43;
  u_xlat43 = ((x_609 * x_611) + x_613);
  let x_616 : f32 = x_29.unity_MatrixV[2i].z;
  let x_618 : f32 = vs_TEXCOORD7.z;
  let x_620 : f32 = u_xlat43;
  u_xlat43 = ((x_616 * x_618) + x_620);
  let x_622 : f32 = u_xlat43;
  let x_625 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat43 = (x_622 + x_625);
  let x_627 : f32 = u_xlat43;
  let x_630 : f32 = x_29.x_ProjectionParams.y;
  u_xlat43 = (-(x_627) + -(x_630));
  let x_633 : f32 = u_xlat43;
  u_xlat43 = max(x_633, 0.0f);
  let x_635 : f32 = u_xlat43;
  let x_637 : f32 = x_29.unity_FogParams.x;
  u_xlat43 = (x_635 * x_637);
  let x_644 : vec4<f32> = vs_TEXCOORD0;
  let x_647 : f32 = x_29.x_GlobalMipBias.x;
  let x_648 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_644.z, x_644.w), x_647);
  u_xlat3 = x_648;
  let x_653 : vec4<f32> = vs_TEXCOORD0;
  let x_656 : f32 = x_29.x_GlobalMipBias.x;
  let x_657 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_653.z, x_653.w), x_656);
  let x_658 : vec3<f32> = vec3<f32>(x_657.x, x_657.y, x_657.z);
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_669 : vec3<f32> = u_xlat2;
  let x_670 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(x_669, vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat44;
  u_xlat44 = (x_673 + 0.5f);
  let x_675 : f32 = u_xlat44;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_683 : f32 = u_xlat3.w;
  u_xlat44 = max(x_683, 0.00009999999747378752f);
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : f32 = u_xlat44;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) / vec3<f32>(x_688, x_688, x_688));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_694 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_694) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_700 : f32 = u_xlat28;
  let x_701 : f32 = u_xlat44;
  u_xlat45 = (x_700 + -(x_701));
  let x_704 : f32 = u_xlat44;
  let x_706 : vec4<f32> = u_xlat5;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat5;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_716 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec3<f32> = u_xlat0;
  let x_720 : vec4<f32> = u_xlat5;
  let x_725 : vec3<f32> = ((vec3<f32>(x_718.x, x_718.x, x_718.x) * vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : f32 = u_xlat28;
  u_xlat0.x = (-(x_728) + 1.0f);
  let x_733 : f32 = u_xlat0.x;
  let x_735 : f32 = u_xlat0.x;
  u_xlat28 = (x_733 * x_735);
  let x_737 : f32 = u_xlat28;
  u_xlat28 = max(x_737, 0.0078125f);
  let x_740 : f32 = u_xlat28;
  let x_741 : f32 = u_xlat28;
  u_xlat44 = (x_740 * x_741);
  let x_743 : f32 = u_xlat45;
  u_xlat45 = (x_743 + 1.0f);
  let x_745 : f32 = u_xlat45;
  u_xlat45 = clamp(x_745, 0.0f, 1.0f);
  let x_748 : f32 = u_xlat28;
  u_xlat46 = ((x_748 * 4.0f) + 2.0f);
  let x_752 : f32 = u_xlat14;
  u_xlat14 = min(x_752, 1.0f);
  let x_756 : vec4<f32> = vs_TEXCOORD8;
  let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
  let x_759 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_757.x, x_757.y, x_759);
  let x_772 : vec3<f32> = txVec0;
  let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_772.xy, x_772.z);
  u_xlat47 = x_774;
  let x_784 : f32 = x_782.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_784) + 1.0f);
  let x_788 : f32 = u_xlat47;
  let x_790 : f32 = x_782.x_MainLightShadowParams.x;
  let x_793 : f32 = u_xlat6.x;
  u_xlat47 = ((x_788 * x_790) + x_793);
  let x_797 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_797);
  let x_803 : f32 = vs_TEXCOORD8.z;
  u_xlatb20.x = (x_803 >= 1.0f);
  let x_807 : bool = u_xlatb20.x;
  let x_808 : bool = u_xlatb6;
  u_xlatb6 = (x_807 | x_808);
  let x_810 : bool = u_xlatb6;
  let x_811 : f32 = u_xlat47;
  u_xlat47 = select(x_811, 1.0f, x_810);
  let x_813 : vec3<f32> = vs_TEXCOORD7;
  let x_815 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_817 : vec3<f32> = (x_813 + -(x_815));
  let x_818 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_822 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_828 : f32 = u_xlat6.x;
  let x_830 : f32 = x_782.x_MainLightShadowParams.z;
  let x_833 : f32 = x_782.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_828 * x_830) + x_833);
  let x_837 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_837, 0.0f, 1.0f);
  let x_841 : f32 = u_xlat47;
  u_xlat34 = (-(x_841) + 1.0f);
  let x_845 : f32 = u_xlat20.x;
  let x_846 : f32 = u_xlat34;
  let x_848 : f32 = u_xlat47;
  u_xlat47 = ((x_845 * x_846) + x_848);
  let x_857 : f32 = x_855.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_857 == -1.0f));
  let x_861 : bool = u_xlatb20.x;
  if (x_861) {
    let x_864 : vec3<f32> = vs_TEXCOORD7;
    let x_867 : vec4<f32> = x_855.x_MainLightWorldToLight[1i];
    let x_869 : vec2<f32> = (vec2<f32>(x_864.y, x_864.y) * vec2<f32>(x_867.x, x_867.y));
    let x_870 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_869.x, x_869.y, x_870.z);
    let x_873 : vec4<f32> = x_855.x_MainLightWorldToLight[0i];
    let x_875 : vec3<f32> = vs_TEXCOORD7;
    let x_878 : vec3<f32> = u_xlat20;
    let x_880 : vec2<f32> = ((vec2<f32>(x_873.x, x_873.y) * vec2<f32>(x_875.x, x_875.x)) + vec2<f32>(x_878.x, x_878.y));
    let x_881 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_880.x, x_880.y, x_881.z);
    let x_884 : vec4<f32> = x_855.x_MainLightWorldToLight[2i];
    let x_886 : vec3<f32> = vs_TEXCOORD7;
    let x_889 : vec3<f32> = u_xlat20;
    let x_891 : vec2<f32> = ((vec2<f32>(x_884.x, x_884.y) * vec2<f32>(x_886.z, x_886.z)) + vec2<f32>(x_889.x, x_889.y));
    let x_892 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_891.x, x_891.y, x_892.z);
    let x_894 : vec3<f32> = u_xlat20;
    let x_897 : vec4<f32> = x_855.x_MainLightWorldToLight[3i];
    let x_899 : vec2<f32> = (vec2<f32>(x_894.x, x_894.y) + vec2<f32>(x_897.x, x_897.y));
    let x_900 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_899.x, x_899.y, x_900.z);
    let x_902 : vec3<f32> = u_xlat20;
    let x_905 : vec2<f32> = ((vec2<f32>(x_902.x, x_902.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_906 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_905.x, x_905.y, x_906.z);
    let x_913 : vec3<f32> = u_xlat20;
    let x_916 : f32 = x_29.x_GlobalMipBias.x;
    let x_917 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_913.x, x_913.y), x_916);
    u_xlat7 = x_917;
    let x_919 : f32 = x_855.x_MainLightCookieTextureFormat;
    let x_921 : f32 = x_855.x_MainLightCookieTextureFormat;
    let x_923 : f32 = x_855.x_MainLightCookieTextureFormat;
    let x_925 : f32 = x_855.x_MainLightCookieTextureFormat;
    let x_926 : vec4<f32> = vec4<f32>(x_919, x_921, x_923, x_925);
    let x_933 : vec4<bool> = (vec4<f32>(x_926.x, x_926.y, x_926.z, x_926.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_933.x, x_933.y);
    let x_936 : bool = u_xlatb20.y;
    if (x_936) {
      let x_942 : f32 = u_xlat7.w;
      x_938 = x_942;
    } else {
      let x_945 : f32 = u_xlat7.x;
      x_938 = x_945;
    }
    let x_946 : f32 = x_938;
    u_xlat34 = x_946;
    let x_948 : bool = u_xlatb20.x;
    if (x_948) {
      let x_952 : vec4<f32> = u_xlat7;
      x_949 = vec3<f32>(x_952.x, x_952.y, x_952.z);
    } else {
      let x_955 : f32 = u_xlat34;
      x_949 = vec3<f32>(x_955, x_955, x_955);
    }
    let x_957 : vec3<f32> = x_949;
    u_xlat20 = x_957;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_962 : vec3<f32> = u_xlat20;
  let x_964 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat20 = (x_962 * vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat1;
  let x_970 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_967.x, x_967.y, x_967.z)), x_970);
  let x_974 : f32 = u_xlat7.x;
  let x_976 : f32 = u_xlat7.x;
  u_xlat7.x = (x_974 + x_976);
  let x_979 : vec3<f32> = u_xlat2;
  let x_980 : vec4<f32> = u_xlat7;
  let x_984 : vec4<f32> = u_xlat1;
  let x_987 : vec3<f32> = ((x_979 * -(vec3<f32>(x_980.x, x_980.x, x_980.x))) + -(vec3<f32>(x_984.x, x_984.y, x_984.z)));
  let x_988 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_991 : vec3<f32> = u_xlat2;
  let x_992 : vec4<f32> = u_xlat1;
  u_xlat49 = dot(x_991, vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : f32 = u_xlat49;
  u_xlat49 = clamp(x_995, 0.0f, 1.0f);
  let x_997 : f32 = u_xlat49;
  u_xlat49 = (-(x_997) + 1.0f);
  let x_1000 : f32 = u_xlat49;
  let x_1001 : f32 = u_xlat49;
  u_xlat49 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat49;
  let x_1004 : f32 = u_xlat49;
  u_xlat49 = (x_1003 * x_1004);
  let x_1007 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_1007) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1015 : f32 = u_xlat0.x;
  let x_1017 : f32 = u_xlat8.x;
  u_xlat0.x = (x_1015 * x_1017);
  let x_1021 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1021 * 6.0f);
  let x_1033 : vec4<f32> = u_xlat7;
  let x_1036 : f32 = u_xlat0.x;
  let x_1037 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1033.x, x_1033.y, x_1033.z), x_1036);
  u_xlat8 = x_1037;
  let x_1039 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1039 + -1.0f);
  let x_1047 : f32 = x_1045.unity_SpecCube0_HDR.w;
  let x_1049 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1047 * x_1049) + 1.0f);
  let x_1054 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1054, 0.0f);
  let x_1058 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1058);
  let x_1062 : f32 = u_xlat0.x;
  let x_1064 : f32 = x_1045.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1062 * x_1064);
  let x_1068 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1068);
  let x_1072 : f32 = u_xlat0.x;
  let x_1074 : f32 = x_1045.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1072 * x_1074);
  let x_1077 : vec4<f32> = u_xlat8;
  let x_1079 : vec3<f32> = u_xlat0;
  let x_1081 : vec3<f32> = (vec3<f32>(x_1077.x, x_1077.y, x_1077.z) * vec3<f32>(x_1079.x, x_1079.x, x_1079.x));
  let x_1082 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : f32 = u_xlat28;
  let x_1086 : f32 = u_xlat28;
  let x_1090 : vec2<f32> = ((vec2<f32>(x_1084, x_1084) * vec2<f32>(x_1086, x_1086)) + vec2<f32>(-1.0f, 1.0f));
  let x_1091 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1090.x, x_1091.y, x_1090.y);
  let x_1094 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1094);
  let x_1096 : vec4<f32> = u_xlat5;
  let x_1099 : f32 = u_xlat45;
  let x_1101 : vec3<f32> = (-(vec3<f32>(x_1096.x, x_1096.y, x_1096.z)) + vec3<f32>(x_1099, x_1099, x_1099));
  let x_1102 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : f32 = u_xlat49;
  let x_1106 : vec4<f32> = u_xlat8;
  let x_1109 : vec4<f32> = u_xlat5;
  let x_1111 : vec3<f32> = ((vec3<f32>(x_1104, x_1104, x_1104) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : f32 = u_xlat28;
  let x_1116 : vec4<f32> = u_xlat8;
  let x_1118 : vec3<f32> = (vec3<f32>(x_1114, x_1114, x_1114) * vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : vec4<f32> = u_xlat7;
  let x_1123 : vec4<f32> = u_xlat8;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1128 : vec4<f32> = u_xlat3;
  let x_1130 : vec4<f32> = u_xlat4;
  let x_1133 : vec4<f32> = u_xlat7;
  let x_1135 : vec3<f32> = ((vec3<f32>(x_1128.x, x_1128.y, x_1128.z) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z)) + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : f32 = u_xlat47;
  let x_1140 : f32 = x_1045.unity_LightData.z;
  u_xlat28 = (x_1138 * x_1140);
  let x_1142 : vec3<f32> = u_xlat2;
  let x_1144 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat45 = dot(x_1142, vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1147, 0.0f, 1.0f);
  let x_1149 : f32 = u_xlat28;
  let x_1150 : f32 = u_xlat45;
  u_xlat28 = (x_1149 * x_1150);
  let x_1152 : f32 = u_xlat28;
  let x_1154 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1152, x_1152, x_1152) * x_1154);
  let x_1156 : vec4<f32> = u_xlat1;
  let x_1159 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1161 : vec3<f32> = (vec3<f32>(x_1156.x, x_1156.y, x_1156.z) + vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec4<f32> = u_xlat7;
  let x_1166 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : f32 = u_xlat28;
  u_xlat28 = max(x_1169, 1.17549435e-38f);
  let x_1172 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1172);
  let x_1174 : f32 = u_xlat28;
  let x_1176 : vec4<f32> = u_xlat7;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174, x_1174, x_1174) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec3<f32> = u_xlat2;
  let x_1182 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1181, vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
  let x_1185 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1185, 0.0f, 1.0f);
  let x_1188 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1190 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1188.x, x_1188.y, x_1188.z), vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1193, 0.0f, 1.0f);
  let x_1195 : f32 = u_xlat28;
  let x_1196 : f32 = u_xlat28;
  u_xlat28 = (x_1195 * x_1196);
  let x_1198 : f32 = u_xlat28;
  let x_1200 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1198 * x_1200) + 1.00001001358032226562f);
  let x_1204 : f32 = u_xlat45;
  let x_1205 : f32 = u_xlat45;
  u_xlat45 = (x_1204 * x_1205);
  let x_1207 : f32 = u_xlat28;
  let x_1208 : f32 = u_xlat28;
  u_xlat28 = (x_1207 * x_1208);
  let x_1210 : f32 = u_xlat45;
  u_xlat45 = max(x_1210, 0.10000000149011611938f);
  let x_1213 : f32 = u_xlat28;
  let x_1214 : f32 = u_xlat45;
  u_xlat28 = (x_1213 * x_1214);
  let x_1216 : f32 = u_xlat46;
  let x_1217 : f32 = u_xlat28;
  u_xlat28 = (x_1216 * x_1217);
  let x_1219 : f32 = u_xlat44;
  let x_1220 : f32 = u_xlat28;
  u_xlat28 = (x_1219 / x_1220);
  let x_1222 : vec4<f32> = u_xlat5;
  let x_1224 : f32 = u_xlat28;
  let x_1227 : vec4<f32> = u_xlat4;
  let x_1229 : vec3<f32> = ((vec3<f32>(x_1222.x, x_1222.y, x_1222.z) * vec3<f32>(x_1224, x_1224, x_1224)) + vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
  let x_1232 : vec3<f32> = u_xlat20;
  let x_1233 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1232 * vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1237 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1239 : f32 = x_1045.unity_LightData.y;
  u_xlat28 = min(x_1237, x_1239);
  let x_1243 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1243));
  let x_1247 : f32 = u_xlat6.x;
  let x_1249 : f32 = x_782.x_AdditionalShadowFadeParams.x;
  let x_1252 : f32 = x_782.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1247 * x_1249) + x_1252);
  let x_1254 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1254, 0.0f, 1.0f);
  let x_1258 : f32 = x_855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1260 : f32 = x_855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1262 : f32 = x_855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1264 : f32 = x_855.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1265 : vec4<f32> = vec4<f32>(x_1258, x_1260, x_1262, x_1264);
  let x_1271 : vec4<bool> = (vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1265.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1271.x, x_1271.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1283 : u32 = u_xlatu_loop_1;
    let x_1284 : u32 = u_xlatu28;
    if ((x_1283 < x_1284)) {
    } else {
      break;
    }
    let x_1287 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1287 >> 2u);
    let x_1291 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1291 & 3u));
    let x_1294 : u32 = u_xlatu6;
    let x_1297 : vec4<f32> = x_1045.unity_LightIndices[bitcast<i32>(x_1294)];
    let x_1307 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1312 : vec4<u32> = indexable[x_1307];
    u_xlat6.x = dot(x_1297, bitcast<vec4<f32>>(x_1312));
    let x_1318 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1318);
    let x_1320 : vec3<f32> = vs_TEXCOORD7;
    let x_1331 : i32 = u_xlati6;
    let x_1333 : vec4<f32> = x_1330.x_AdditionalLightsPosition[x_1331];
    let x_1336 : i32 = u_xlati6;
    let x_1338 : vec4<f32> = x_1330.x_AdditionalLightsPosition[x_1336];
    let x_1340 : vec3<f32> = ((-(x_1320) * vec3<f32>(x_1333.w, x_1333.w, x_1333.w)) + vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
    let x_1341 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1341.w);
    let x_1344 : vec4<f32> = u_xlat9;
    let x_1346 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1344.x, x_1344.y, x_1344.z), vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
    let x_1349 : f32 = u_xlat35;
    u_xlat35 = max(x_1349, 0.00006103515625f);
    let x_1351 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1351);
    let x_1353 : f32 = u_xlat49;
    let x_1355 : vec4<f32> = u_xlat9;
    let x_1357 : vec3<f32> = (vec3<f32>(x_1353, x_1353, x_1353) * vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
    let x_1358 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1361 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1361);
    let x_1363 : f32 = u_xlat35;
    let x_1364 : i32 = u_xlati6;
    let x_1366 : f32 = x_1330.x_AdditionalLightsAttenuation[x_1364].x;
    u_xlat35 = (x_1363 * x_1366);
    let x_1368 : f32 = u_xlat35;
    let x_1370 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1368) * x_1370) + 1.0f);
    let x_1373 : f32 = u_xlat35;
    u_xlat35 = max(x_1373, 0.0f);
    let x_1375 : f32 = u_xlat35;
    let x_1376 : f32 = u_xlat35;
    u_xlat35 = (x_1375 * x_1376);
    let x_1378 : f32 = u_xlat35;
    let x_1379 : f32 = u_xlat50;
    u_xlat35 = (x_1378 * x_1379);
    let x_1381 : i32 = u_xlati6;
    let x_1383 : vec4<f32> = x_1330.x_AdditionalLightsSpotDir[x_1381];
    let x_1385 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1383.x, x_1383.y, x_1383.z), vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
    let x_1388 : f32 = u_xlat50;
    let x_1389 : i32 = u_xlati6;
    let x_1391 : f32 = x_1330.x_AdditionalLightsAttenuation[x_1389].z;
    let x_1393 : i32 = u_xlati6;
    let x_1395 : f32 = x_1330.x_AdditionalLightsAttenuation[x_1393].w;
    u_xlat50 = ((x_1388 * x_1391) + x_1395);
    let x_1397 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1397, 0.0f, 1.0f);
    let x_1399 : f32 = u_xlat50;
    let x_1400 : f32 = u_xlat50;
    u_xlat50 = (x_1399 * x_1400);
    let x_1402 : f32 = u_xlat35;
    let x_1403 : f32 = u_xlat50;
    u_xlat35 = (x_1402 * x_1403);
    let x_1406 : i32 = u_xlati6;
    let x_1408 : f32 = x_782.x_AdditionalShadowParams[x_1406].w;
    u_xlati50 = i32(x_1408);
    let x_1411 : i32 = u_xlati50;
    u_xlatb51 = (x_1411 >= 0i);
    let x_1413 : bool = u_xlatb51;
    if (x_1413) {
      let x_1417 : i32 = u_xlati6;
      let x_1419 : f32 = x_782.x_AdditionalShadowParams[x_1417].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1419, x_1419, x_1419, x_1419))));
      let x_1423 : bool = u_xlatb51;
      if (x_1423) {
        let x_1428 : vec4<f32> = u_xlat10;
        let x_1431 : vec4<f32> = u_xlat10;
        let x_1434 : vec4<bool> = (abs(vec4<f32>(x_1428.z, x_1428.z, x_1428.y, x_1428.z)) >= abs(vec4<f32>(x_1431.x, x_1431.y, x_1431.x, x_1431.x)));
        let x_1436 : vec3<bool> = vec3<bool>(x_1434.x, x_1434.y, x_1434.z);
        let x_1437 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
        let x_1440 : bool = u_xlatb11.y;
        let x_1442 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1440 & x_1442);
        let x_1444 : vec4<f32> = u_xlat10;
        let x_1447 : vec4<bool> = (-(vec4<f32>(x_1444.z, x_1444.y, x_1444.z, x_1444.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1448 : vec3<bool> = vec3<bool>(x_1447.x, x_1447.y, x_1447.w);
        let x_1449 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1448.x, x_1448.y, x_1449.z, x_1448.z);
        let x_1452 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1452);
        let x_1457 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1457);
        let x_1463 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1463);
        let x_1466 : bool = u_xlatb11.z;
        if (x_1466) {
          let x_1471 : f32 = u_xlat11.y;
          x_1467 = x_1471;
        } else {
          let x_1473 : f32 = u_xlat52;
          x_1467 = x_1473;
        }
        let x_1474 : f32 = x_1467;
        u_xlat52 = x_1474;
        let x_1476 : bool = u_xlatb51;
        if (x_1476) {
          let x_1481 : f32 = u_xlat11.x;
          x_1477 = x_1481;
        } else {
          let x_1483 : f32 = u_xlat52;
          x_1477 = x_1483;
        }
        let x_1484 : f32 = x_1477;
        u_xlat51 = x_1484;
        let x_1485 : i32 = u_xlati6;
        let x_1487 : f32 = x_782.x_AdditionalShadowParams[x_1485].w;
        u_xlat52 = trunc(x_1487);
        let x_1489 : f32 = u_xlat51;
        let x_1490 : f32 = u_xlat52;
        u_xlat51 = (x_1489 + x_1490);
        let x_1492 : f32 = u_xlat51;
        u_xlati50 = i32(x_1492);
      }
      let x_1494 : i32 = u_xlati50;
      u_xlati50 = (x_1494 << bitcast<u32>(2i));
      let x_1496 : vec3<f32> = vs_TEXCOORD7;
      let x_1498 : i32 = u_xlati50;
      let x_1501 : i32 = u_xlati50;
      let x_1505 : vec4<f32> = x_782.x_AdditionalLightsWorldToShadow[((x_1498 + 1i) / 4i)][((x_1501 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1496.y, x_1496.y, x_1496.y, x_1496.y) * x_1505);
      let x_1507 : i32 = u_xlati50;
      let x_1509 : i32 = u_xlati50;
      let x_1512 : vec4<f32> = x_782.x_AdditionalLightsWorldToShadow[(x_1507 / 4i)][(x_1509 % 4i)];
      let x_1513 : vec3<f32> = vs_TEXCOORD7;
      let x_1516 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1512 * vec4<f32>(x_1513.x, x_1513.x, x_1513.x, x_1513.x)) + x_1516);
      let x_1518 : i32 = u_xlati50;
      let x_1521 : i32 = u_xlati50;
      let x_1525 : vec4<f32> = x_782.x_AdditionalLightsWorldToShadow[((x_1518 + 2i) / 4i)][((x_1521 + 2i) % 4i)];
      let x_1526 : vec3<f32> = vs_TEXCOORD7;
      let x_1529 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1525 * vec4<f32>(x_1526.z, x_1526.z, x_1526.z, x_1526.z)) + x_1529);
      let x_1531 : vec4<f32> = u_xlat11;
      let x_1532 : i32 = u_xlati50;
      let x_1535 : i32 = u_xlati50;
      let x_1539 : vec4<f32> = x_782.x_AdditionalLightsWorldToShadow[((x_1532 + 3i) / 4i)][((x_1535 + 3i) % 4i)];
      u_xlat11 = (x_1531 + x_1539);
      let x_1541 : vec4<f32> = u_xlat11;
      let x_1543 : vec4<f32> = u_xlat11;
      let x_1545 : vec3<f32> = (vec3<f32>(x_1541.x, x_1541.y, x_1541.z) / vec3<f32>(x_1543.w, x_1543.w, x_1543.w));
      let x_1546 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
      let x_1549 : vec4<f32> = u_xlat11;
      let x_1550 : vec2<f32> = vec2<f32>(x_1549.x, x_1549.y);
      let x_1552 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
      let x_1560 : vec3<f32> = txVec1;
      let x_1562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
      u_xlat50 = x_1562;
      let x_1563 : i32 = u_xlati6;
      let x_1565 : f32 = x_782.x_AdditionalShadowParams[x_1563].x;
      u_xlat51 = (1.0f + -(x_1565));
      let x_1568 : f32 = u_xlat50;
      let x_1569 : i32 = u_xlati6;
      let x_1571 : f32 = x_782.x_AdditionalShadowParams[x_1569].x;
      let x_1573 : f32 = u_xlat51;
      u_xlat50 = ((x_1568 * x_1571) + x_1573);
      let x_1576 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1576);
      let x_1580 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1580 >= 1.0f);
      let x_1582 : bool = u_xlatb51;
      let x_1583 : bool = u_xlatb52;
      u_xlatb51 = (x_1582 | x_1583);
      let x_1585 : bool = u_xlatb51;
      let x_1586 : f32 = u_xlat50;
      u_xlat50 = select(x_1586, 1.0f, x_1585);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1589 : f32 = u_xlat50;
    u_xlat51 = (-(x_1589) + 1.0f);
    let x_1592 : f32 = u_xlat45;
    let x_1593 : f32 = u_xlat51;
    let x_1595 : f32 = u_xlat50;
    u_xlat50 = ((x_1592 * x_1593) + x_1595);
    let x_1598 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1598 & 31i)));
    let x_1601 : i32 = u_xlati51;
    let x_1604 : f32 = x_855.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1601) & bitcast<u32>(x_1604)));
    let x_1608 : i32 = u_xlati51;
    if ((x_1608 != 0i)) {
      let x_1612 : i32 = u_xlati6;
      let x_1614 : f32 = x_855.x_AdditionalLightsLightTypes[x_1612].el;
      u_xlati51 = i32(x_1614);
      let x_1617 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1617 != 0i));
      let x_1621 : i32 = u_xlati6;
      u_xlati11 = (x_1621 << bitcast<u32>(2i));
      let x_1623 : i32 = u_xlati52;
      if ((x_1623 != 0i)) {
        let x_1628 : vec3<f32> = vs_TEXCOORD7;
        let x_1630 : i32 = u_xlati11;
        let x_1633 : i32 = u_xlati11;
        let x_1637 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1630 + 1i) / 4i)][((x_1633 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1628.y, x_1628.y, x_1628.y) * vec3<f32>(x_1637.x, x_1637.y, x_1637.w));
        let x_1640 : i32 = u_xlati11;
        let x_1642 : i32 = u_xlati11;
        let x_1645 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[(x_1640 / 4i)][(x_1642 % 4i)];
        let x_1647 : vec3<f32> = vs_TEXCOORD7;
        let x_1650 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1645.x, x_1645.y, x_1645.w) * vec3<f32>(x_1647.x, x_1647.x, x_1647.x)) + x_1650);
        let x_1652 : i32 = u_xlati11;
        let x_1655 : i32 = u_xlati11;
        let x_1659 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1652 + 2i) / 4i)][((x_1655 + 2i) % 4i)];
        let x_1661 : vec3<f32> = vs_TEXCOORD7;
        let x_1664 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1659.x, x_1659.y, x_1659.w) * vec3<f32>(x_1661.z, x_1661.z, x_1661.z)) + x_1664);
        let x_1666 : vec3<f32> = u_xlat25;
        let x_1667 : i32 = u_xlati11;
        let x_1670 : i32 = u_xlati11;
        let x_1674 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1667 + 3i) / 4i)][((x_1670 + 3i) % 4i)];
        u_xlat25 = (x_1666 + vec3<f32>(x_1674.x, x_1674.y, x_1674.w));
        let x_1677 : vec3<f32> = u_xlat25;
        let x_1679 : vec3<f32> = u_xlat25;
        let x_1681 : vec2<f32> = (vec2<f32>(x_1677.x, x_1677.y) / vec2<f32>(x_1679.z, x_1679.z));
        let x_1682 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1681.x, x_1681.y, x_1682.z);
        let x_1684 : vec3<f32> = u_xlat25;
        let x_1687 : vec2<f32> = ((vec2<f32>(x_1684.x, x_1684.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1688 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1687.x, x_1687.y, x_1688.z);
        let x_1690 : vec3<f32> = u_xlat25;
        let x_1694 : vec2<f32> = clamp(vec2<f32>(x_1690.x, x_1690.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1695 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1694.x, x_1694.y, x_1695.z);
        let x_1697 : i32 = u_xlati6;
        let x_1699 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1697];
        let x_1701 : vec3<f32> = u_xlat25;
        let x_1704 : i32 = u_xlati6;
        let x_1706 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1704];
        let x_1708 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1701.x, x_1701.y)) + vec2<f32>(x_1706.z, x_1706.w));
        let x_1709 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1708.x, x_1708.y, x_1709.z);
      } else {
        let x_1712 : i32 = u_xlati51;
        u_xlatb51 = (x_1712 == 1i);
        let x_1714 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1714);
        let x_1716 : i32 = u_xlati51;
        if ((x_1716 != 0i)) {
          let x_1720 : vec3<f32> = vs_TEXCOORD7;
          let x_1722 : i32 = u_xlati11;
          let x_1725 : i32 = u_xlati11;
          let x_1729 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1722 + 1i) / 4i)][((x_1725 + 1i) % 4i)];
          let x_1731 : vec2<f32> = (vec2<f32>(x_1720.y, x_1720.y) * vec2<f32>(x_1729.x, x_1729.y));
          let x_1732 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
          let x_1734 : i32 = u_xlati11;
          let x_1736 : i32 = u_xlati11;
          let x_1739 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[(x_1734 / 4i)][(x_1736 % 4i)];
          let x_1741 : vec3<f32> = vs_TEXCOORD7;
          let x_1744 : vec4<f32> = u_xlat12;
          let x_1746 : vec2<f32> = ((vec2<f32>(x_1739.x, x_1739.y) * vec2<f32>(x_1741.x, x_1741.x)) + vec2<f32>(x_1744.x, x_1744.y));
          let x_1747 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1746.x, x_1746.y, x_1747.z, x_1747.w);
          let x_1749 : i32 = u_xlati11;
          let x_1752 : i32 = u_xlati11;
          let x_1756 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1749 + 2i) / 4i)][((x_1752 + 2i) % 4i)];
          let x_1758 : vec3<f32> = vs_TEXCOORD7;
          let x_1761 : vec4<f32> = u_xlat12;
          let x_1763 : vec2<f32> = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1758.z, x_1758.z)) + vec2<f32>(x_1761.x, x_1761.y));
          let x_1764 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
          let x_1766 : vec4<f32> = u_xlat12;
          let x_1768 : i32 = u_xlati11;
          let x_1771 : i32 = u_xlati11;
          let x_1775 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1768 + 3i) / 4i)][((x_1771 + 3i) % 4i)];
          let x_1777 : vec2<f32> = (vec2<f32>(x_1766.x, x_1766.y) + vec2<f32>(x_1775.x, x_1775.y));
          let x_1778 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
          let x_1780 : vec4<f32> = u_xlat12;
          let x_1783 : vec2<f32> = ((vec2<f32>(x_1780.x, x_1780.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1784 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1783.x, x_1783.y, x_1784.z, x_1784.w);
          let x_1786 : vec4<f32> = u_xlat12;
          let x_1788 : vec2<f32> = fract(vec2<f32>(x_1786.x, x_1786.y));
          let x_1789 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1788.x, x_1788.y, x_1789.z, x_1789.w);
          let x_1791 : i32 = u_xlati6;
          let x_1793 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1791];
          let x_1795 : vec4<f32> = u_xlat12;
          let x_1798 : i32 = u_xlati6;
          let x_1800 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1798];
          let x_1802 : vec2<f32> = ((vec2<f32>(x_1793.x, x_1793.y) * vec2<f32>(x_1795.x, x_1795.y)) + vec2<f32>(x_1800.z, x_1800.w));
          let x_1803 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1802.x, x_1802.y, x_1803.z);
        } else {
          let x_1806 : vec3<f32> = vs_TEXCOORD7;
          let x_1808 : i32 = u_xlati11;
          let x_1811 : i32 = u_xlati11;
          let x_1815 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1808 + 1i) / 4i)][((x_1811 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1806.y, x_1806.y, x_1806.y, x_1806.y) * x_1815);
          let x_1817 : i32 = u_xlati11;
          let x_1819 : i32 = u_xlati11;
          let x_1822 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[(x_1817 / 4i)][(x_1819 % 4i)];
          let x_1823 : vec3<f32> = vs_TEXCOORD7;
          let x_1826 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1822 * vec4<f32>(x_1823.x, x_1823.x, x_1823.x, x_1823.x)) + x_1826);
          let x_1828 : i32 = u_xlati11;
          let x_1831 : i32 = u_xlati11;
          let x_1835 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1828 + 2i) / 4i)][((x_1831 + 2i) % 4i)];
          let x_1836 : vec3<f32> = vs_TEXCOORD7;
          let x_1839 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1835 * vec4<f32>(x_1836.z, x_1836.z, x_1836.z, x_1836.z)) + x_1839);
          let x_1841 : vec4<f32> = u_xlat12;
          let x_1842 : i32 = u_xlati11;
          let x_1845 : i32 = u_xlati11;
          let x_1849 : vec4<f32> = x_855.x_AdditionalLightsWorldToLights[((x_1842 + 3i) / 4i)][((x_1845 + 3i) % 4i)];
          u_xlat12 = (x_1841 + x_1849);
          let x_1851 : vec4<f32> = u_xlat12;
          let x_1853 : vec4<f32> = u_xlat12;
          let x_1855 : vec3<f32> = (vec3<f32>(x_1851.x, x_1851.y, x_1851.z) / vec3<f32>(x_1853.w, x_1853.w, x_1853.w));
          let x_1856 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
          let x_1858 : vec4<f32> = u_xlat12;
          let x_1860 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1858.x, x_1858.y, x_1858.z), vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
          let x_1863 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1863);
          let x_1865 : f32 = u_xlat51;
          let x_1867 : vec4<f32> = u_xlat12;
          let x_1869 : vec3<f32> = (vec3<f32>(x_1865, x_1865, x_1865) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
          let x_1870 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
          let x_1872 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1872.x, x_1872.y, x_1872.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1877 : f32 = u_xlat51;
          u_xlat51 = max(x_1877, 0.00000099999999747524f);
          let x_1880 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1880);
          let x_1882 : f32 = u_xlat51;
          let x_1884 : vec4<f32> = u_xlat12;
          let x_1886 : vec3<f32> = (vec3<f32>(x_1882, x_1882, x_1882) * vec3<f32>(x_1884.z, x_1884.x, x_1884.y));
          let x_1887 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
          let x_1890 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1890);
          let x_1894 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1894, 0.0f, 1.0f);
          let x_1897 : vec4<f32> = u_xlat13;
          let x_1899 : vec4<bool> = (vec4<f32>(x_1897.y, x_1897.y, x_1897.y, x_1897.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1900 : vec2<bool> = vec2<bool>(x_1899.x, x_1899.w);
          let x_1901 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1900.x, x_1901.y, x_1901.z, x_1900.y);
          let x_1904 : bool = u_xlatb11.x;
          if (x_1904) {
            let x_1909 : f32 = u_xlat13.x;
            x_1905 = x_1909;
          } else {
            let x_1912 : f32 = u_xlat13.x;
            x_1905 = -(x_1912);
          }
          let x_1914 : f32 = x_1905;
          u_xlat11.x = x_1914;
          let x_1917 : bool = u_xlatb11.w;
          if (x_1917) {
            let x_1922 : f32 = u_xlat13.x;
            x_1918 = x_1922;
          } else {
            let x_1925 : f32 = u_xlat13.x;
            x_1918 = -(x_1925);
          }
          let x_1927 : f32 = x_1918;
          u_xlat11.w = x_1927;
          let x_1929 : vec4<f32> = u_xlat12;
          let x_1931 : f32 = u_xlat51;
          let x_1934 : vec4<f32> = u_xlat11;
          let x_1936 : vec2<f32> = ((vec2<f32>(x_1929.x, x_1929.y) * vec2<f32>(x_1931, x_1931)) + vec2<f32>(x_1934.x, x_1934.w));
          let x_1937 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1936.x, x_1937.y, x_1937.z, x_1936.y);
          let x_1939 : vec4<f32> = u_xlat11;
          let x_1942 : vec2<f32> = ((vec2<f32>(x_1939.x, x_1939.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1943 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1942.x, x_1943.y, x_1943.z, x_1942.y);
          let x_1945 : vec4<f32> = u_xlat11;
          let x_1949 : vec2<f32> = clamp(vec2<f32>(x_1945.x, x_1945.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1950 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1949.x, x_1950.y, x_1950.z, x_1949.y);
          let x_1952 : i32 = u_xlati6;
          let x_1954 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1952];
          let x_1956 : vec4<f32> = u_xlat11;
          let x_1959 : i32 = u_xlati6;
          let x_1961 : vec4<f32> = x_855.x_AdditionalLightsCookieAtlasUVRects[x_1959];
          let x_1963 : vec2<f32> = ((vec2<f32>(x_1954.x, x_1954.y) * vec2<f32>(x_1956.x, x_1956.w)) + vec2<f32>(x_1961.z, x_1961.w));
          let x_1964 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1963.x, x_1963.y, x_1964.z);
        }
      }
      let x_1971 : vec3<f32> = u_xlat25;
      let x_1973 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1971.x, x_1971.y), 0.0f);
      u_xlat11 = x_1973;
      let x_1975 : bool = u_xlatb7.y;
      if (x_1975) {
        let x_1980 : f32 = u_xlat11.w;
        x_1976 = x_1980;
      } else {
        let x_1983 : f32 = u_xlat11.x;
        x_1976 = x_1983;
      }
      let x_1984 : f32 = x_1976;
      u_xlat51 = x_1984;
      let x_1986 : bool = u_xlatb7.x;
      if (x_1986) {
        let x_1990 : vec4<f32> = u_xlat11;
        x_1987 = vec3<f32>(x_1990.x, x_1990.y, x_1990.z);
      } else {
        let x_1993 : f32 = u_xlat51;
        x_1987 = vec3<f32>(x_1993, x_1993, x_1993);
      }
      let x_1995 : vec3<f32> = x_1987;
      let x_1996 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2002 : vec4<f32> = u_xlat11;
    let x_2004 : i32 = u_xlati6;
    let x_2006 : vec4<f32> = x_1330.x_AdditionalLightsColor[x_2004];
    let x_2008 : vec3<f32> = (vec3<f32>(x_2002.x, x_2002.y, x_2002.z) * vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
    let x_2009 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2008.x, x_2008.y, x_2008.z, x_2009.w);
    let x_2011 : f32 = u_xlat35;
    let x_2012 : f32 = u_xlat50;
    u_xlat6.x = (x_2011 * x_2012);
    let x_2015 : vec3<f32> = u_xlat2;
    let x_2016 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(x_2015, vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
    let x_2019 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2019, 0.0f, 1.0f);
    let x_2022 : f32 = u_xlat6.x;
    let x_2023 : f32 = u_xlat35;
    u_xlat6.x = (x_2022 * x_2023);
    let x_2026 : vec4<f32> = u_xlat6;
    let x_2028 : vec4<f32> = u_xlat11;
    let x_2030 : vec3<f32> = (vec3<f32>(x_2026.x, x_2026.x, x_2026.x) * vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
    let x_2031 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
    let x_2033 : vec4<f32> = u_xlat9;
    let x_2035 : f32 = u_xlat49;
    let x_2038 : vec4<f32> = u_xlat1;
    let x_2040 : vec3<f32> = ((vec3<f32>(x_2033.x, x_2033.y, x_2033.z) * vec3<f32>(x_2035, x_2035, x_2035)) + vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
    let x_2041 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);
    let x_2043 : vec4<f32> = u_xlat9;
    let x_2045 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2043.x, x_2043.y, x_2043.z), vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
    let x_2050 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2050, 1.17549435e-38f);
    let x_2054 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_2054);
    let x_2057 : vec4<f32> = u_xlat6;
    let x_2059 : vec4<f32> = u_xlat9;
    let x_2061 : vec3<f32> = (vec3<f32>(x_2057.x, x_2057.x, x_2057.x) * vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
    let x_2062 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
    let x_2064 : vec3<f32> = u_xlat2;
    let x_2065 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(x_2064, vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
    let x_2070 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2070, 0.0f, 1.0f);
    let x_2073 : vec4<f32> = u_xlat10;
    let x_2075 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_2073.x, x_2073.y, x_2073.z), vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
    let x_2078 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2078, 0.0f, 1.0f);
    let x_2081 : f32 = u_xlat6.x;
    let x_2083 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2081 * x_2083);
    let x_2087 : f32 = u_xlat6.x;
    let x_2089 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_2087 * x_2089) + 1.00001001358032226562f);
    let x_2093 : f32 = u_xlat35;
    let x_2094 : f32 = u_xlat35;
    u_xlat35 = (x_2093 * x_2094);
    let x_2097 : f32 = u_xlat6.x;
    let x_2099 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2097 * x_2099);
    let x_2102 : f32 = u_xlat35;
    u_xlat35 = max(x_2102, 0.10000000149011611938f);
    let x_2105 : f32 = u_xlat6.x;
    let x_2106 : f32 = u_xlat35;
    u_xlat6.x = (x_2105 * x_2106);
    let x_2109 : f32 = u_xlat46;
    let x_2111 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2109 * x_2111);
    let x_2114 : f32 = u_xlat44;
    let x_2116 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2114 / x_2116);
    let x_2119 : vec4<f32> = u_xlat5;
    let x_2121 : vec4<f32> = u_xlat6;
    let x_2124 : vec4<f32> = u_xlat4;
    let x_2126 : vec3<f32> = ((vec3<f32>(x_2119.x, x_2119.y, x_2119.z) * vec3<f32>(x_2121.x, x_2121.x, x_2121.x)) + vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
    let x_2127 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
    let x_2129 : vec4<f32> = u_xlat9;
    let x_2131 : vec4<f32> = u_xlat11;
    let x_2134 : vec4<f32> = u_xlat8;
    let x_2136 : vec3<f32> = ((vec3<f32>(x_2129.x, x_2129.y, x_2129.z) * vec3<f32>(x_2131.x, x_2131.y, x_2131.z)) + vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
    let x_2137 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);

    continuing {
      let x_2139 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2139 + bitcast<u32>(1i));
    }
  }
  let x_2141 : vec4<f32> = u_xlat3;
  let x_2143 : f32 = u_xlat14;
  let x_2146 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_2141.x, x_2141.y, x_2141.z) * vec3<f32>(x_2143, x_2143, x_2143)) + x_2146);
  let x_2148 : vec4<f32> = u_xlat8;
  let x_2150 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2148.x, x_2148.y, x_2148.z) + x_2150);
  let x_2152 : f32 = u_xlat42;
  let x_2154 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2152, x_2152, x_2152) * x_2154);
  let x_2156 : f32 = u_xlat43;
  let x_2157 : f32 = u_xlat43;
  u_xlat42 = (x_2156 * -(x_2157));
  let x_2160 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2160);
  let x_2164 : vec3<f32> = u_xlat0;
  let x_2165 : f32 = u_xlat42;
  let x_2167 : vec3<f32> = (x_2164 * vec3<f32>(x_2165, x_2165, x_2165));
  let x_2168 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


