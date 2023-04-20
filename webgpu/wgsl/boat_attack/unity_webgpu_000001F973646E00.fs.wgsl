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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_911 : UnityPerDraw;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1071 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1154 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu34 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_1656 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1103 : f32;
  var x_1221 : f32;
  var x_1232 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1794 : f32;
  var x_1804 : f32;
  var txVec1 : vec3<f32>;
  var x_2233 : f32;
  var x_2246 : f32;
  var x_2304 : f32;
  var x_2315 : vec3<f32>;
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
  let x_394 : vec4<f32> = vs_TEXCOORD1;
  let x_397 : f32 = x_29.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_394.x, x_394.y), x_397);
  let x_399 : vec3<f32> = vec3<f32>(x_398.x, x_398.y, x_398.w);
  let x_400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = u_xlat6.x;
  let x_405 : f32 = u_xlat6.z;
  u_xlat6.x = (x_403 * x_405);
  let x_408 : vec4<f32> = u_xlat6;
  let x_413 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_416.x, x_416.y), vec2<f32>(x_418.x, x_418.y));
  let x_421 : f32 = u_xlat43;
  u_xlat43 = min(x_421, 1.0f);
  let x_423 : f32 = u_xlat43;
  u_xlat43 = (-(x_423) + 1.0f);
  let x_426 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_426);
  let x_428 : f32 = u_xlat43;
  u_xlat7.z = max(x_428, 0.0000000000000001f);
  let x_432 : vec4<f32> = u_xlat6;
  let x_435 : f32 = x_59.x_NormalScale0;
  let x_437 : vec2<f32> = (vec2<f32>(x_432.x, x_432.y) * vec2<f32>(x_435, x_435));
  let x_438 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_444 : vec4<f32> = vs_TEXCOORD1;
  let x_447 : f32 = x_29.x_GlobalMipBias.x;
  let x_448 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_444.z, x_444.w), x_447);
  let x_449 : vec3<f32> = vec3<f32>(x_448.x, x_448.y, x_448.w);
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : f32 = u_xlat6.x;
  let x_455 : f32 = u_xlat6.z;
  u_xlat6.x = (x_453 * x_455);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : vec2<f32> = ((vec2<f32>(x_458.x, x_458.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat6;
  let x_466 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_464.x, x_464.y), vec2<f32>(x_466.x, x_466.y));
  let x_469 : f32 = u_xlat43;
  u_xlat43 = min(x_469, 1.0f);
  let x_471 : f32 = u_xlat43;
  u_xlat43 = (-(x_471) + 1.0f);
  let x_474 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_474);
  let x_476 : f32 = u_xlat43;
  u_xlat8.z = max(x_476, 0.0000000000000001f);
  let x_479 : vec4<f32> = u_xlat6;
  let x_482 : f32 = x_59.x_NormalScale1;
  let x_484 : f32 = x_59.x_NormalScale1;
  let x_485 : vec2<f32> = vec2<f32>(x_482, x_484);
  let x_489 : vec2<f32> = (vec2<f32>(x_479.x, x_479.y) * vec2<f32>(x_485.x, x_485.y));
  let x_490 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat4;
  let x_494 : vec4<f32> = u_xlat8;
  let x_496 : vec3<f32> = (vec3<f32>(x_492.y, x_492.y, x_492.y) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat4;
  let x_501 : vec4<f32> = u_xlat7;
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.x, x_499.x) * vec3<f32>(x_501.x, x_501.y, x_501.z)) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_513 : vec4<f32> = vs_TEXCOORD2;
  let x_516 : f32 = x_29.x_GlobalMipBias.x;
  let x_517 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_513.x, x_513.y), x_516);
  let x_518 : vec3<f32> = vec3<f32>(x_517.x, x_517.y, x_517.w);
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : f32 = u_xlat7.x;
  let x_524 : f32 = u_xlat7.z;
  u_xlat7.x = (x_522 * x_524);
  let x_527 : vec4<f32> = u_xlat7;
  let x_530 : vec2<f32> = ((vec2<f32>(x_527.x, x_527.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat7;
  let x_535 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_533.x, x_533.y), vec2<f32>(x_535.x, x_535.y));
  let x_538 : f32 = u_xlat43;
  u_xlat43 = min(x_538, 1.0f);
  let x_540 : f32 = u_xlat43;
  u_xlat43 = (-(x_540) + 1.0f);
  let x_543 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_543);
  let x_545 : f32 = u_xlat43;
  u_xlat8.z = max(x_545, 0.0000000000000001f);
  let x_548 : vec4<f32> = u_xlat7;
  let x_552 : f32 = x_59.x_NormalScale2;
  let x_554 : f32 = x_59.x_NormalScale2;
  let x_555 : vec2<f32> = vec2<f32>(x_552, x_554);
  let x_559 : vec2<f32> = (vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_555.x, x_555.y));
  let x_560 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat4;
  let x_564 : vec4<f32> = u_xlat8;
  let x_567 : vec4<f32> = u_xlat6;
  let x_569 : vec3<f32> = ((vec3<f32>(x_562.z, x_562.z, x_562.z) * vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_576 : vec4<f32> = vs_TEXCOORD2;
  let x_579 : f32 = x_29.x_GlobalMipBias.x;
  let x_580 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_576.z, x_576.w), x_579);
  let x_581 : vec3<f32> = vec3<f32>(x_580.x, x_580.y, x_580.w);
  let x_582 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : f32 = u_xlat7.x;
  let x_587 : f32 = u_xlat7.z;
  u_xlat7.x = (x_585 * x_587);
  let x_590 : vec4<f32> = u_xlat7;
  let x_593 : vec2<f32> = ((vec2<f32>(x_590.x, x_590.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_594 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat7;
  let x_598 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_596.x, x_596.y), vec2<f32>(x_598.x, x_598.y));
  let x_601 : f32 = u_xlat43;
  u_xlat43 = min(x_601, 1.0f);
  let x_603 : f32 = u_xlat43;
  u_xlat43 = (-(x_603) + 1.0f);
  let x_606 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_606);
  let x_608 : f32 = u_xlat43;
  u_xlat8.z = max(x_608, 0.0000000000000001f);
  let x_611 : vec4<f32> = u_xlat7;
  let x_615 : f32 = x_59.x_NormalScale3;
  let x_617 : f32 = x_59.x_NormalScale3;
  let x_618 : vec2<f32> = vec2<f32>(x_615, x_617);
  let x_622 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) * vec2<f32>(x_618.x, x_618.y));
  let x_623 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : vec4<f32> = u_xlat8;
  let x_630 : vec4<f32> = u_xlat6;
  let x_632 : vec3<f32> = ((vec3<f32>(x_625.w, x_625.w, x_625.w) * vec3<f32>(x_627.x, x_627.y, x_627.z)) + vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_636 : f32 = u_xlat6.z;
  u_xlat6.w = (x_636 + 0.00000999999974737875f);
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_640.x, x_640.y, x_640.w), vec3<f32>(x_642.x, x_642.y, x_642.w));
  let x_645 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_645);
  let x_647 : f32 = u_xlat43;
  let x_649 : vec4<f32> = u_xlat6;
  let x_651 : vec3<f32> = (vec3<f32>(x_647, x_647, x_647) * vec3<f32>(x_649.x, x_649.y, x_649.w));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_655 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_655;
  let x_658 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_658;
  let x_661 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_661;
  let x_664 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_664;
  let x_667 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_667;
  let x_670 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_670;
  let x_673 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_673;
  let x_676 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_676;
  let x_678 : vec4<f32> = u_xlat7;
  let x_679 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_678 + x_679);
  let x_682 : f32 = u_xlat0.z;
  u_xlat8.x = x_682;
  let x_685 : f32 = u_xlat1.z;
  u_xlat8.y = x_685;
  let x_688 : f32 = u_xlat2.z;
  u_xlat8.z = x_688;
  let x_691 : f32 = u_xlat3.y;
  u_xlat8.w = x_691;
  let x_693 : vec4<f32> = u_xlat9;
  let x_696 : f32 = x_59.x_Smoothness0;
  let x_698 : f32 = x_59.x_Smoothness1;
  let x_700 : f32 = x_59.x_Smoothness2;
  let x_702 : f32 = x_59.x_Smoothness3;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_693) * vec4<f32>(x_696, x_698, x_700, x_702)) + x_705);
  let x_709 : f32 = x_59.x_LayerHasMask0;
  let x_712 : f32 = x_59.x_LayerHasMask1;
  let x_715 : f32 = x_59.x_LayerHasMask2;
  let x_718 : f32 = x_59.x_LayerHasMask3;
  let x_720 : vec4<f32> = u_xlat8;
  let x_722 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_709, x_712, x_715, x_718) * x_720) + x_722);
  let x_725 : vec4<f32> = u_xlat4;
  let x_726 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_725, x_726);
  let x_729 : f32 = u_xlat0.x;
  u_xlat8.x = x_729;
  let x_732 : f32 = u_xlat1.x;
  u_xlat8.y = x_732;
  let x_735 : f32 = u_xlat2.x;
  u_xlat8.z = x_735;
  let x_738 : f32 = u_xlat3.x;
  u_xlat8.w = x_738;
  let x_740 : vec4<f32> = u_xlat8;
  let x_743 : f32 = x_59.x_Metallic0;
  let x_746 : f32 = x_59.x_Metallic1;
  let x_749 : f32 = x_59.x_Metallic2;
  let x_752 : f32 = x_59.x_Metallic3;
  u_xlat8 = (x_740 + -(vec4<f32>(x_743, x_746, x_749, x_752)));
  let x_757 : f32 = x_59.x_LayerHasMask0;
  let x_759 : f32 = x_59.x_LayerHasMask1;
  let x_761 : f32 = x_59.x_LayerHasMask2;
  let x_763 : f32 = x_59.x_LayerHasMask3;
  let x_765 : vec4<f32> = u_xlat8;
  let x_768 : f32 = x_59.x_Metallic0;
  let x_770 : f32 = x_59.x_Metallic1;
  let x_772 : f32 = x_59.x_Metallic2;
  let x_774 : f32 = x_59.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_757, x_759, x_761, x_763) * x_765) + vec4<f32>(x_768, x_770, x_772, x_774));
  let x_777 : vec4<f32> = u_xlat4;
  let x_778 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_777, x_778);
  let x_782 : f32 = u_xlat0.y;
  u_xlat3.x = x_782;
  let x_785 : f32 = u_xlat1.y;
  u_xlat3.y = x_785;
  let x_788 : f32 = u_xlat2.y;
  u_xlat3.z = x_788;
  let x_790 : vec4<f32> = u_xlat7;
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_790) + x_792);
  let x_795 : f32 = x_59.x_LayerHasMask0;
  let x_797 : f32 = x_59.x_LayerHasMask1;
  let x_799 : f32 = x_59.x_LayerHasMask2;
  let x_801 : f32 = x_59.x_LayerHasMask3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_795, x_797, x_799, x_801) * x_803) + x_805);
  let x_808 : vec4<f32> = u_xlat4;
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_808, x_809);
  let x_811 : vec4<f32> = u_xlat6;
  let x_814 : vec4<f32> = vs_TEXCOORD5;
  let x_816 : vec3<f32> = (vec3<f32>(x_811.y, x_811.y, x_811.y) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat6;
  let x_822 : vec4<f32> = vs_TEXCOORD4;
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec3<f32> = ((vec3<f32>(x_819.x, x_819.x, x_819.x) * -(vec3<f32>(x_822.x, x_822.y, x_822.z))) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat6;
  let x_834 : vec4<f32> = vs_TEXCOORD3;
  let x_837 : vec4<f32> = u_xlat1;
  let x_839 : vec3<f32> = ((vec3<f32>(x_831.z, x_831.z, x_831.z) * vec3<f32>(x_834.x, x_834.y, x_834.z)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_847);
  let x_849 : f32 = u_xlat43;
  let x_851 : vec4<f32> = u_xlat1;
  let x_853 : vec3<f32> = (vec3<f32>(x_849, x_849, x_849) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_860 : f32 = vs_TEXCOORD7.y;
  let x_862 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.x = (x_860 * x_862);
  let x_866 : f32 = x_29.unity_MatrixV[0i].z;
  let x_868 : f32 = vs_TEXCOORD7.x;
  let x_871 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_866 * x_868) + x_871);
  let x_875 : f32 = x_29.unity_MatrixV[2i].z;
  let x_877 : f32 = vs_TEXCOORD7.z;
  let x_880 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_875 * x_877) + x_880);
  let x_884 : f32 = u_xlat2.x;
  let x_886 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2.x = (x_884 + x_886);
  let x_890 : f32 = u_xlat2.x;
  let x_893 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2.x = (-(x_890) + -(x_893));
  let x_898 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_898, 0.0f);
  let x_902 : f32 = u_xlat2.x;
  let x_904 : f32 = x_29.unity_FogParams.x;
  u_xlat2.x = (x_902 * x_904);
  u_xlat1.w = 1.0f;
  let x_913 : vec4<f32> = x_911.unity_SHAr;
  let x_914 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_913, x_914);
  let x_918 : vec4<f32> = x_911.unity_SHAg;
  let x_919 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_918, x_919);
  let x_923 : vec4<f32> = x_911.unity_SHAb;
  let x_924 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_923, x_924);
  let x_927 : vec4<f32> = u_xlat1;
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_927.y, x_927.z, x_927.z, x_927.x) * vec4<f32>(x_929.x, x_929.y, x_929.z, x_929.z));
  let x_933 : vec4<f32> = x_911.unity_SHBr;
  let x_934 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_933, x_934);
  let x_938 : vec4<f32> = x_911.unity_SHBg;
  let x_939 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_938, x_939);
  let x_943 : vec4<f32> = x_911.unity_SHBb;
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_943, x_944);
  let x_948 : f32 = u_xlat1.y;
  let x_950 : f32 = u_xlat1.y;
  u_xlat43 = (x_948 * x_950);
  let x_953 : f32 = u_xlat1.x;
  let x_955 : f32 = u_xlat1.x;
  let x_957 : f32 = u_xlat43;
  u_xlat43 = ((x_953 * x_955) + -(x_957));
  let x_963 : vec4<f32> = x_911.unity_SHC;
  let x_965 : f32 = u_xlat43;
  let x_968 : vec4<f32> = u_xlat6;
  u_xlat16 = ((vec3<f32>(x_963.x, x_963.y, x_963.z) * vec3<f32>(x_965, x_965, x_965)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec3<f32> = u_xlat16;
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_971 + vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_975, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_979 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_979) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_984 : f32 = u_xlat28;
  let x_985 : f32 = u_xlat43;
  u_xlat3.x = (x_984 + -(x_985));
  let x_990 : f32 = u_xlat43;
  let x_992 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_990, x_990, x_990) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat5;
  let x_999 : vec3<f32> = (vec3<f32>(x_995.x, x_995.y, x_995.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1000 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec3<f32> = u_xlat0;
  let x_1004 : vec4<f32> = u_xlat4;
  let x_1009 : vec3<f32> = ((vec3<f32>(x_1002.x, x_1002.x, x_1002.x) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1010 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1012) + 1.0f);
  let x_1017 : f32 = u_xlat0.x;
  let x_1019 : f32 = u_xlat0.x;
  u_xlat28 = (x_1017 * x_1019);
  let x_1021 : f32 = u_xlat28;
  u_xlat28 = max(x_1021, 0.0078125f);
  let x_1024 : f32 = u_xlat28;
  let x_1025 : f32 = u_xlat28;
  u_xlat43 = (x_1024 * x_1025);
  let x_1028 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1028 + 1.0f);
  let x_1032 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1032, 0.0f, 1.0f);
  let x_1036 : f32 = u_xlat28;
  u_xlat46 = ((x_1036 * 4.0f) + 2.0f);
  let x_1039 : f32 = u_xlat14;
  u_xlat14 = min(x_1039, 1.0f);
  let x_1044 : vec4<f32> = vs_TEXCOORD8;
  let x_1045 : vec2<f32> = vec2<f32>(x_1044.x, x_1044.y);
  let x_1047 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1045.x, x_1045.y, x_1047);
  let x_1059 : vec3<f32> = txVec0;
  let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1059.xy, x_1059.z);
  u_xlat5.x = x_1061;
  let x_1073 : f32 = x_1071.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1073) + 1.0f);
  let x_1078 : f32 = u_xlat5.x;
  let x_1080 : f32 = x_1071.x_MainLightShadowParams.x;
  let x_1083 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1078 * x_1080) + x_1083);
  let x_1088 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1088);
  let x_1094 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_1094 >= 1.0f);
  let x_1098 : bool = u_xlatb33.x;
  let x_1099 : bool = u_xlatb19;
  u_xlatb19 = (x_1098 | x_1099);
  let x_1101 : bool = u_xlatb19;
  if (x_1101) {
    x_1103 = 1.0f;
  } else {
    let x_1108 : f32 = u_xlat5.x;
    x_1103 = x_1108;
  }
  let x_1109 : f32 = x_1103;
  u_xlat5.x = x_1109;
  let x_1111 : vec3<f32> = vs_TEXCOORD7;
  let x_1114 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1111 + -(x_1114));
  let x_1117 : vec3<f32> = u_xlat19;
  let x_1118 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1117, x_1118);
  let x_1124 : f32 = u_xlat19.x;
  let x_1126 : f32 = x_1071.x_MainLightShadowParams.z;
  let x_1129 : f32 = x_1071.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_1124 * x_1126) + x_1129);
  let x_1133 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1133, 0.0f, 1.0f);
  let x_1138 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1138) + 1.0f);
  let x_1142 : f32 = u_xlat33.x;
  let x_1143 : f32 = u_xlat47;
  let x_1146 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1142 * x_1143) + x_1146);
  let x_1156 : f32 = x_1154.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_1156 == -1.0f));
  let x_1160 : bool = u_xlatb33.x;
  if (x_1160) {
    let x_1163 : vec3<f32> = vs_TEXCOORD7;
    let x_1166 : vec4<f32> = x_1154.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_1163.y, x_1163.y) * vec2<f32>(x_1166.x, x_1166.y));
    let x_1170 : vec4<f32> = x_1154.x_MainLightWorldToLight[0i];
    let x_1172 : vec3<f32> = vs_TEXCOORD7;
    let x_1175 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(x_1172.x, x_1172.x)) + x_1175);
    let x_1178 : vec4<f32> = x_1154.x_MainLightWorldToLight[2i];
    let x_1180 : vec3<f32> = vs_TEXCOORD7;
    let x_1183 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1180.z, x_1180.z)) + x_1183);
    let x_1185 : vec2<f32> = u_xlat33;
    let x_1187 : vec4<f32> = x_1154.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_1185 + vec2<f32>(x_1187.x, x_1187.y));
    let x_1190 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_1190 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1198 : vec2<f32> = u_xlat33;
    let x_1200 : f32 = x_29.x_GlobalMipBias.x;
    let x_1201 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1198, x_1200);
    u_xlat6 = x_1201;
    let x_1203 : f32 = x_1154.x_MainLightCookieTextureFormat;
    let x_1205 : f32 = x_1154.x_MainLightCookieTextureFormat;
    let x_1207 : f32 = x_1154.x_MainLightCookieTextureFormat;
    let x_1209 : f32 = x_1154.x_MainLightCookieTextureFormat;
    let x_1210 : vec4<f32> = vec4<f32>(x_1203, x_1205, x_1207, x_1209);
    let x_1217 : vec4<bool> = (vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1210.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_1217.x, x_1217.y);
    let x_1220 : bool = u_xlatb33.y;
    if (x_1220) {
      let x_1225 : f32 = u_xlat6.w;
      x_1221 = x_1225;
    } else {
      let x_1228 : f32 = u_xlat6.x;
      x_1221 = x_1228;
    }
    let x_1229 : f32 = x_1221;
    u_xlat47 = x_1229;
    let x_1231 : bool = u_xlatb33.x;
    if (x_1231) {
      let x_1235 : vec4<f32> = u_xlat6;
      x_1232 = vec3<f32>(x_1235.x, x_1235.y, x_1235.z);
    } else {
      let x_1238 : f32 = u_xlat47;
      x_1232 = vec3<f32>(x_1238, x_1238, x_1238);
    }
    let x_1240 : vec3<f32> = x_1232;
    let x_1241 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1247 : vec4<f32> = u_xlat6;
  let x_1250 : vec4<f32> = x_29.x_MainLightColor;
  let x_1252 : vec3<f32> = (vec3<f32>(x_1247.x, x_1247.y, x_1247.z) * vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1256 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1256;
  let x_1259 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1259;
  let x_1262 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1262;
  let x_1264 : vec4<f32> = u_xlat7;
  let x_1267 : vec4<f32> = u_xlat1;
  u_xlat33.x = dot(-(vec3<f32>(x_1264.x, x_1264.y, x_1264.z)), vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1272 : f32 = u_xlat33.x;
  let x_1274 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1272 + x_1274);
  let x_1277 : vec4<f32> = u_xlat1;
  let x_1279 : vec2<f32> = u_xlat33;
  let x_1283 : vec4<f32> = u_xlat7;
  let x_1286 : vec3<f32> = ((vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * -(vec3<f32>(x_1279.x, x_1279.x, x_1279.x))) + -(vec3<f32>(x_1283.x, x_1283.y, x_1283.z)));
  let x_1287 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : vec4<f32> = u_xlat1;
  let x_1291 : vec4<f32> = u_xlat7;
  u_xlat33.x = dot(vec3<f32>(x_1289.x, x_1289.y, x_1289.z), vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1296 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1296, 0.0f, 1.0f);
  let x_1300 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_1300) + 1.0f);
  let x_1305 : f32 = u_xlat33.x;
  let x_1307 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1305 * x_1307);
  let x_1311 : f32 = u_xlat33.x;
  let x_1313 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1311 * x_1313);
  let x_1317 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1317) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1324 : f32 = u_xlat0.x;
  let x_1325 : f32 = u_xlat47;
  u_xlat0.x = (x_1324 * x_1325);
  let x_1329 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1329 * 6.0f);
  let x_1341 : vec4<f32> = u_xlat8;
  let x_1344 : f32 = u_xlat0.x;
  let x_1345 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1341.x, x_1341.y, x_1341.z), x_1344);
  u_xlat8 = x_1345;
  let x_1347 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1347 + -1.0f);
  let x_1351 : f32 = x_911.unity_SpecCube0_HDR.w;
  let x_1353 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1351 * x_1353) + 1.0f);
  let x_1358 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1358, 0.0f);
  let x_1362 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1362);
  let x_1366 : f32 = u_xlat0.x;
  let x_1368 : f32 = x_911.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1366 * x_1368);
  let x_1372 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1372);
  let x_1376 : f32 = u_xlat0.x;
  let x_1378 : f32 = x_911.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1376 * x_1378);
  let x_1381 : vec4<f32> = u_xlat8;
  let x_1383 : vec3<f32> = u_xlat0;
  let x_1385 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.y, x_1381.z) * vec3<f32>(x_1383.x, x_1383.x, x_1383.x));
  let x_1386 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1388 : f32 = u_xlat28;
  let x_1390 : f32 = u_xlat28;
  let x_1394 : vec2<f32> = ((vec2<f32>(x_1388, x_1388) * vec2<f32>(x_1390, x_1390)) + vec2<f32>(-1.0f, 1.0f));
  let x_1395 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1394.x, x_1395.y, x_1394.y);
  let x_1398 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1398);
  let x_1400 : vec4<f32> = u_xlat4;
  let x_1403 : vec4<f32> = u_xlat3;
  let x_1405 : vec3<f32> = (-(vec3<f32>(x_1400.x, x_1400.y, x_1400.z)) + vec3<f32>(x_1403.x, x_1403.x, x_1403.x));
  let x_1406 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
  let x_1408 : vec2<f32> = u_xlat33;
  let x_1410 : vec4<f32> = u_xlat9;
  let x_1413 : vec4<f32> = u_xlat4;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1408.x, x_1408.x, x_1408.x) * vec3<f32>(x_1410.x, x_1410.y, x_1410.z)) + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
  let x_1416 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : f32 = u_xlat28;
  let x_1420 : vec4<f32> = u_xlat9;
  let x_1422 : vec3<f32> = (vec3<f32>(x_1418, x_1418, x_1418) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
  let x_1423 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : vec4<f32> = u_xlat8;
  let x_1427 : vec4<f32> = u_xlat9;
  let x_1429 : vec3<f32> = (vec3<f32>(x_1425.x, x_1425.y, x_1425.z) * vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : vec3<f32> = u_xlat16;
  let x_1433 : vec3<f32> = u_xlat17;
  let x_1435 : vec4<f32> = u_xlat8;
  u_xlat16 = ((x_1432 * x_1433) + vec3<f32>(x_1435.x, x_1435.y, x_1435.z));
  let x_1439 : f32 = u_xlat5.x;
  let x_1441 : f32 = x_911.unity_LightData.z;
  u_xlat28 = (x_1439 * x_1441);
  let x_1443 : vec4<f32> = u_xlat1;
  let x_1446 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1443.x, x_1443.y, x_1443.z), vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
  let x_1451 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1451, 0.0f, 1.0f);
  let x_1454 : f32 = u_xlat28;
  let x_1456 : f32 = u_xlat3.x;
  u_xlat28 = (x_1454 * x_1456);
  let x_1458 : f32 = u_xlat28;
  let x_1460 : vec4<f32> = u_xlat6;
  let x_1462 : vec3<f32> = (vec3<f32>(x_1458, x_1458, x_1458) * vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
  let x_1463 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1462.x, x_1463.y, x_1462.y, x_1462.z);
  let x_1465 : vec4<f32> = u_xlat7;
  let x_1468 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1470 : vec3<f32> = (vec3<f32>(x_1465.x, x_1465.y, x_1465.z) + vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1473 : vec4<f32> = u_xlat6;
  let x_1475 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1473.x, x_1473.y, x_1473.z), vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
  let x_1478 : f32 = u_xlat28;
  u_xlat28 = max(x_1478, 1.17549435e-38f);
  let x_1481 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1481);
  let x_1483 : f32 = u_xlat28;
  let x_1485 : vec4<f32> = u_xlat6;
  let x_1487 : vec3<f32> = (vec3<f32>(x_1483, x_1483, x_1483) * vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
  let x_1488 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1488.w);
  let x_1490 : vec4<f32> = u_xlat1;
  let x_1492 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1490.x, x_1490.y, x_1490.z), vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
  let x_1495 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1495, 0.0f, 1.0f);
  let x_1498 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1500 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1498.x, x_1498.y, x_1498.z), vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
  let x_1505 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1505, 0.0f, 1.0f);
  let x_1508 : f32 = u_xlat28;
  let x_1509 : f32 = u_xlat28;
  u_xlat28 = (x_1508 * x_1509);
  let x_1511 : f32 = u_xlat28;
  let x_1513 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1511 * x_1513) + 1.00001001358032226562f);
  let x_1518 : f32 = u_xlat3.x;
  let x_1520 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1518 * x_1520);
  let x_1523 : f32 = u_xlat28;
  let x_1524 : f32 = u_xlat28;
  u_xlat28 = (x_1523 * x_1524);
  let x_1527 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1527, 0.10000000149011611938f);
  let x_1531 : f32 = u_xlat28;
  let x_1533 : f32 = u_xlat3.x;
  u_xlat28 = (x_1531 * x_1533);
  let x_1535 : f32 = u_xlat46;
  let x_1536 : f32 = u_xlat28;
  u_xlat28 = (x_1535 * x_1536);
  let x_1538 : f32 = u_xlat43;
  let x_1539 : f32 = u_xlat28;
  u_xlat28 = (x_1538 / x_1539);
  let x_1541 : vec4<f32> = u_xlat4;
  let x_1543 : f32 = u_xlat28;
  let x_1546 : vec3<f32> = u_xlat17;
  let x_1547 : vec3<f32> = ((vec3<f32>(x_1541.x, x_1541.y, x_1541.z) * vec3<f32>(x_1543, x_1543, x_1543)) + x_1546);
  let x_1548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
  let x_1550 : vec4<f32> = u_xlat5;
  let x_1552 : vec4<f32> = u_xlat6;
  let x_1554 : vec3<f32> = (vec3<f32>(x_1550.x, x_1550.z, x_1550.w) * vec3<f32>(x_1552.x, x_1552.y, x_1552.z));
  let x_1555 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1554.x, x_1555.y, x_1554.y, x_1554.z);
  let x_1558 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1560 : f32 = x_911.unity_LightData.y;
  u_xlat28 = min(x_1558, x_1560);
  let x_1564 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1564));
  let x_1568 : f32 = u_xlat19.x;
  let x_1570 : f32 = x_1071.x_AdditionalShadowFadeParams.x;
  let x_1573 : f32 = x_1071.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1568 * x_1570) + x_1573);
  let x_1577 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1577, 0.0f, 1.0f);
  let x_1582 : f32 = x_1154.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1584 : f32 = x_1154.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1586 : f32 = x_1154.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1588 : f32 = x_1154.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1589 : vec4<f32> = vec4<f32>(x_1582, x_1584, x_1586, x_1588);
  let x_1596 : vec4<bool> = (vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1589.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1596.x, x_1596.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1608 : u32 = u_xlatu_loop_1;
    let x_1609 : u32 = u_xlatu28;
    if ((x_1608 < x_1609)) {
    } else {
      break;
    }
    let x_1612 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1612 >> 2u);
    let x_1616 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1616 & 3u));
    let x_1620 : u32 = u_xlatu34;
    let x_1623 : vec4<f32> = x_911.unity_LightIndices[bitcast<i32>(x_1620)];
    let x_1633 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1638 : vec4<u32> = indexable[x_1633];
    u_xlat34.x = dot(x_1623, bitcast<vec4<f32>>(x_1638));
    let x_1644 : f32 = u_xlat34.x;
    u_xlati34 = i32(x_1644);
    let x_1646 : vec3<f32> = vs_TEXCOORD7;
    let x_1657 : i32 = u_xlati34;
    let x_1659 : vec4<f32> = x_1656.x_AdditionalLightsPosition[x_1657];
    let x_1662 : i32 = u_xlati34;
    let x_1664 : vec4<f32> = x_1656.x_AdditionalLightsPosition[x_1662];
    let x_1666 : vec3<f32> = ((-(x_1646) * vec3<f32>(x_1659.w, x_1659.w, x_1659.w)) + vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
    let x_1667 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1666.x, x_1666.y, x_1666.z, x_1667.w);
    let x_1670 : vec4<f32> = u_xlat9;
    let x_1672 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1670.x, x_1670.y, x_1670.z), vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
    let x_1675 : f32 = u_xlat48;
    u_xlat48 = max(x_1675, 0.00006103515625f);
    let x_1678 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1678);
    let x_1680 : f32 = u_xlat49;
    let x_1682 : vec4<f32> = u_xlat9;
    let x_1684 : vec3<f32> = (vec3<f32>(x_1680, x_1680, x_1680) * vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
    let x_1685 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
    let x_1688 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1688);
    let x_1690 : f32 = u_xlat48;
    let x_1691 : i32 = u_xlati34;
    let x_1693 : f32 = x_1656.x_AdditionalLightsAttenuation[x_1691].x;
    u_xlat48 = (x_1690 * x_1693);
    let x_1695 : f32 = u_xlat48;
    let x_1697 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1695) * x_1697) + 1.0f);
    let x_1700 : f32 = u_xlat48;
    u_xlat48 = max(x_1700, 0.0f);
    let x_1702 : f32 = u_xlat48;
    let x_1703 : f32 = u_xlat48;
    u_xlat48 = (x_1702 * x_1703);
    let x_1705 : f32 = u_xlat48;
    let x_1706 : f32 = u_xlat50;
    u_xlat48 = (x_1705 * x_1706);
    let x_1708 : i32 = u_xlati34;
    let x_1710 : vec4<f32> = x_1656.x_AdditionalLightsSpotDir[x_1708];
    let x_1712 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1710.x, x_1710.y, x_1710.z), vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
    let x_1715 : f32 = u_xlat50;
    let x_1716 : i32 = u_xlati34;
    let x_1718 : f32 = x_1656.x_AdditionalLightsAttenuation[x_1716].z;
    let x_1720 : i32 = u_xlati34;
    let x_1722 : f32 = x_1656.x_AdditionalLightsAttenuation[x_1720].w;
    u_xlat50 = ((x_1715 * x_1718) + x_1722);
    let x_1724 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1724, 0.0f, 1.0f);
    let x_1726 : f32 = u_xlat50;
    let x_1727 : f32 = u_xlat50;
    u_xlat50 = (x_1726 * x_1727);
    let x_1729 : f32 = u_xlat48;
    let x_1730 : f32 = u_xlat50;
    u_xlat48 = (x_1729 * x_1730);
    let x_1733 : i32 = u_xlati34;
    let x_1735 : f32 = x_1071.x_AdditionalShadowParams[x_1733].w;
    u_xlati50 = i32(x_1735);
    let x_1738 : i32 = u_xlati50;
    u_xlatb51 = (x_1738 >= 0i);
    let x_1740 : bool = u_xlatb51;
    if (x_1740) {
      let x_1744 : i32 = u_xlati34;
      let x_1746 : f32 = x_1071.x_AdditionalShadowParams[x_1744].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1746, x_1746, x_1746, x_1746))));
      let x_1750 : bool = u_xlatb51;
      if (x_1750) {
        let x_1755 : vec4<f32> = u_xlat10;
        let x_1758 : vec4<f32> = u_xlat10;
        let x_1761 : vec4<bool> = (abs(vec4<f32>(x_1755.z, x_1755.z, x_1755.y, x_1755.z)) >= abs(vec4<f32>(x_1758.x, x_1758.y, x_1758.x, x_1758.x)));
        let x_1763 : vec3<bool> = vec3<bool>(x_1761.x, x_1761.y, x_1761.z);
        let x_1764 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
        let x_1767 : bool = u_xlatb11.y;
        let x_1769 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1767 & x_1769);
        let x_1771 : vec4<f32> = u_xlat10;
        let x_1774 : vec4<bool> = (-(vec4<f32>(x_1771.z, x_1771.y, x_1771.z, x_1771.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1775 : vec3<bool> = vec3<bool>(x_1774.x, x_1774.y, x_1774.w);
        let x_1776 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1775.x, x_1775.y, x_1776.z, x_1775.z);
        let x_1779 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1779);
        let x_1784 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1784);
        let x_1790 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1790);
        let x_1793 : bool = u_xlatb11.z;
        if (x_1793) {
          let x_1798 : f32 = u_xlat11.y;
          x_1794 = x_1798;
        } else {
          let x_1800 : f32 = u_xlat52;
          x_1794 = x_1800;
        }
        let x_1801 : f32 = x_1794;
        u_xlat52 = x_1801;
        let x_1803 : bool = u_xlatb51;
        if (x_1803) {
          let x_1808 : f32 = u_xlat11.x;
          x_1804 = x_1808;
        } else {
          let x_1810 : f32 = u_xlat52;
          x_1804 = x_1810;
        }
        let x_1811 : f32 = x_1804;
        u_xlat51 = x_1811;
        let x_1812 : i32 = u_xlati34;
        let x_1814 : f32 = x_1071.x_AdditionalShadowParams[x_1812].w;
        u_xlat52 = trunc(x_1814);
        let x_1816 : f32 = u_xlat51;
        let x_1817 : f32 = u_xlat52;
        u_xlat51 = (x_1816 + x_1817);
        let x_1819 : f32 = u_xlat51;
        u_xlati50 = i32(x_1819);
      }
      let x_1821 : i32 = u_xlati50;
      u_xlati50 = (x_1821 << bitcast<u32>(2i));
      let x_1823 : vec3<f32> = vs_TEXCOORD7;
      let x_1825 : i32 = u_xlati50;
      let x_1828 : i32 = u_xlati50;
      let x_1832 : vec4<f32> = x_1071.x_AdditionalLightsWorldToShadow[((x_1825 + 1i) / 4i)][((x_1828 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1823.y, x_1823.y, x_1823.y, x_1823.y) * x_1832);
      let x_1834 : i32 = u_xlati50;
      let x_1836 : i32 = u_xlati50;
      let x_1839 : vec4<f32> = x_1071.x_AdditionalLightsWorldToShadow[(x_1834 / 4i)][(x_1836 % 4i)];
      let x_1840 : vec3<f32> = vs_TEXCOORD7;
      let x_1843 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1839 * vec4<f32>(x_1840.x, x_1840.x, x_1840.x, x_1840.x)) + x_1843);
      let x_1845 : i32 = u_xlati50;
      let x_1848 : i32 = u_xlati50;
      let x_1852 : vec4<f32> = x_1071.x_AdditionalLightsWorldToShadow[((x_1845 + 2i) / 4i)][((x_1848 + 2i) % 4i)];
      let x_1853 : vec3<f32> = vs_TEXCOORD7;
      let x_1856 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1852 * vec4<f32>(x_1853.z, x_1853.z, x_1853.z, x_1853.z)) + x_1856);
      let x_1858 : vec4<f32> = u_xlat11;
      let x_1859 : i32 = u_xlati50;
      let x_1862 : i32 = u_xlati50;
      let x_1866 : vec4<f32> = x_1071.x_AdditionalLightsWorldToShadow[((x_1859 + 3i) / 4i)][((x_1862 + 3i) % 4i)];
      u_xlat11 = (x_1858 + x_1866);
      let x_1868 : vec4<f32> = u_xlat11;
      let x_1870 : vec4<f32> = u_xlat11;
      let x_1872 : vec3<f32> = (vec3<f32>(x_1868.x, x_1868.y, x_1868.z) / vec3<f32>(x_1870.w, x_1870.w, x_1870.w));
      let x_1873 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
      let x_1876 : vec4<f32> = u_xlat11;
      let x_1877 : vec2<f32> = vec2<f32>(x_1876.x, x_1876.y);
      let x_1879 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
      let x_1887 : vec3<f32> = txVec1;
      let x_1889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1887.xy, x_1887.z);
      u_xlat50 = x_1889;
      let x_1890 : i32 = u_xlati34;
      let x_1892 : f32 = x_1071.x_AdditionalShadowParams[x_1890].x;
      u_xlat51 = (1.0f + -(x_1892));
      let x_1895 : f32 = u_xlat50;
      let x_1896 : i32 = u_xlati34;
      let x_1898 : f32 = x_1071.x_AdditionalShadowParams[x_1896].x;
      let x_1900 : f32 = u_xlat51;
      u_xlat50 = ((x_1895 * x_1898) + x_1900);
      let x_1903 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1903);
      let x_1907 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1907 >= 1.0f);
      let x_1909 : bool = u_xlatb51;
      let x_1910 : bool = u_xlatb52;
      u_xlatb51 = (x_1909 | x_1910);
      let x_1912 : bool = u_xlatb51;
      let x_1913 : f32 = u_xlat50;
      u_xlat50 = select(x_1913, 1.0f, x_1912);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1916 : f32 = u_xlat50;
    u_xlat51 = (-(x_1916) + 1.0f);
    let x_1920 : f32 = u_xlat3.x;
    let x_1921 : f32 = u_xlat51;
    let x_1923 : f32 = u_xlat50;
    u_xlat50 = ((x_1920 * x_1921) + x_1923);
    let x_1926 : i32 = u_xlati34;
    u_xlati51 = (1i << bitcast<u32>((x_1926 & 31i)));
    let x_1929 : i32 = u_xlati51;
    let x_1932 : f32 = x_1154.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1929) & bitcast<u32>(x_1932)));
    let x_1936 : i32 = u_xlati51;
    if ((x_1936 != 0i)) {
      let x_1940 : i32 = u_xlati34;
      let x_1942 : f32 = x_1154.x_AdditionalLightsLightTypes[x_1940].el;
      u_xlati51 = i32(x_1942);
      let x_1945 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1945 != 0i));
      let x_1949 : i32 = u_xlati34;
      u_xlati11 = (x_1949 << bitcast<u32>(2i));
      let x_1951 : i32 = u_xlati52;
      if ((x_1951 != 0i)) {
        let x_1956 : vec3<f32> = vs_TEXCOORD7;
        let x_1958 : i32 = u_xlati11;
        let x_1961 : i32 = u_xlati11;
        let x_1965 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_1958 + 1i) / 4i)][((x_1961 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1956.y, x_1956.y, x_1956.y) * vec3<f32>(x_1965.x, x_1965.y, x_1965.w));
        let x_1968 : i32 = u_xlati11;
        let x_1970 : i32 = u_xlati11;
        let x_1973 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[(x_1968 / 4i)][(x_1970 % 4i)];
        let x_1975 : vec3<f32> = vs_TEXCOORD7;
        let x_1978 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1973.x, x_1973.y, x_1973.w) * vec3<f32>(x_1975.x, x_1975.x, x_1975.x)) + x_1978);
        let x_1980 : i32 = u_xlati11;
        let x_1983 : i32 = u_xlati11;
        let x_1987 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_1980 + 2i) / 4i)][((x_1983 + 2i) % 4i)];
        let x_1989 : vec3<f32> = vs_TEXCOORD7;
        let x_1992 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1987.x, x_1987.y, x_1987.w) * vec3<f32>(x_1989.z, x_1989.z, x_1989.z)) + x_1992);
        let x_1994 : vec3<f32> = u_xlat25;
        let x_1995 : i32 = u_xlati11;
        let x_1998 : i32 = u_xlati11;
        let x_2002 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_1995 + 3i) / 4i)][((x_1998 + 3i) % 4i)];
        u_xlat25 = (x_1994 + vec3<f32>(x_2002.x, x_2002.y, x_2002.w));
        let x_2005 : vec3<f32> = u_xlat25;
        let x_2007 : vec3<f32> = u_xlat25;
        let x_2009 : vec2<f32> = (vec2<f32>(x_2005.x, x_2005.y) / vec2<f32>(x_2007.z, x_2007.z));
        let x_2010 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2009.x, x_2009.y, x_2010.z);
        let x_2012 : vec3<f32> = u_xlat25;
        let x_2015 : vec2<f32> = ((vec2<f32>(x_2012.x, x_2012.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2016 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2015.x, x_2015.y, x_2016.z);
        let x_2018 : vec3<f32> = u_xlat25;
        let x_2022 : vec2<f32> = clamp(vec2<f32>(x_2018.x, x_2018.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2023 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2022.x, x_2022.y, x_2023.z);
        let x_2025 : i32 = u_xlati34;
        let x_2027 : vec4<f32> = x_1154.x_AdditionalLightsCookieAtlasUVRects[x_2025];
        let x_2029 : vec3<f32> = u_xlat25;
        let x_2032 : i32 = u_xlati34;
        let x_2034 : vec4<f32> = x_1154.x_AdditionalLightsCookieAtlasUVRects[x_2032];
        let x_2036 : vec2<f32> = ((vec2<f32>(x_2027.x, x_2027.y) * vec2<f32>(x_2029.x, x_2029.y)) + vec2<f32>(x_2034.z, x_2034.w));
        let x_2037 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2036.x, x_2036.y, x_2037.z);
      } else {
        let x_2040 : i32 = u_xlati51;
        u_xlatb51 = (x_2040 == 1i);
        let x_2042 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2042);
        let x_2044 : i32 = u_xlati51;
        if ((x_2044 != 0i)) {
          let x_2048 : vec3<f32> = vs_TEXCOORD7;
          let x_2050 : i32 = u_xlati11;
          let x_2053 : i32 = u_xlati11;
          let x_2057 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_2050 + 1i) / 4i)][((x_2053 + 1i) % 4i)];
          let x_2059 : vec2<f32> = (vec2<f32>(x_2048.y, x_2048.y) * vec2<f32>(x_2057.x, x_2057.y));
          let x_2060 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2059.x, x_2059.y, x_2060.z, x_2060.w);
          let x_2062 : i32 = u_xlati11;
          let x_2064 : i32 = u_xlati11;
          let x_2067 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[(x_2062 / 4i)][(x_2064 % 4i)];
          let x_2069 : vec3<f32> = vs_TEXCOORD7;
          let x_2072 : vec4<f32> = u_xlat12;
          let x_2074 : vec2<f32> = ((vec2<f32>(x_2067.x, x_2067.y) * vec2<f32>(x_2069.x, x_2069.x)) + vec2<f32>(x_2072.x, x_2072.y));
          let x_2075 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2074.x, x_2074.y, x_2075.z, x_2075.w);
          let x_2077 : i32 = u_xlati11;
          let x_2080 : i32 = u_xlati11;
          let x_2084 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_2077 + 2i) / 4i)][((x_2080 + 2i) % 4i)];
          let x_2086 : vec3<f32> = vs_TEXCOORD7;
          let x_2089 : vec4<f32> = u_xlat12;
          let x_2091 : vec2<f32> = ((vec2<f32>(x_2084.x, x_2084.y) * vec2<f32>(x_2086.z, x_2086.z)) + vec2<f32>(x_2089.x, x_2089.y));
          let x_2092 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2091.x, x_2091.y, x_2092.z, x_2092.w);
          let x_2094 : vec4<f32> = u_xlat12;
          let x_2096 : i32 = u_xlati11;
          let x_2099 : i32 = u_xlati11;
          let x_2103 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_2096 + 3i) / 4i)][((x_2099 + 3i) % 4i)];
          let x_2105 : vec2<f32> = (vec2<f32>(x_2094.x, x_2094.y) + vec2<f32>(x_2103.x, x_2103.y));
          let x_2106 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2105.x, x_2105.y, x_2106.z, x_2106.w);
          let x_2108 : vec4<f32> = u_xlat12;
          let x_2111 : vec2<f32> = ((vec2<f32>(x_2108.x, x_2108.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2112 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2111.x, x_2111.y, x_2112.z, x_2112.w);
          let x_2114 : vec4<f32> = u_xlat12;
          let x_2116 : vec2<f32> = fract(vec2<f32>(x_2114.x, x_2114.y));
          let x_2117 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2116.x, x_2116.y, x_2117.z, x_2117.w);
          let x_2119 : i32 = u_xlati34;
          let x_2121 : vec4<f32> = x_1154.x_AdditionalLightsCookieAtlasUVRects[x_2119];
          let x_2123 : vec4<f32> = u_xlat12;
          let x_2126 : i32 = u_xlati34;
          let x_2128 : vec4<f32> = x_1154.x_AdditionalLightsCookieAtlasUVRects[x_2126];
          let x_2130 : vec2<f32> = ((vec2<f32>(x_2121.x, x_2121.y) * vec2<f32>(x_2123.x, x_2123.y)) + vec2<f32>(x_2128.z, x_2128.w));
          let x_2131 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2130.x, x_2130.y, x_2131.z);
        } else {
          let x_2134 : vec3<f32> = vs_TEXCOORD7;
          let x_2136 : i32 = u_xlati11;
          let x_2139 : i32 = u_xlati11;
          let x_2143 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_2136 + 1i) / 4i)][((x_2139 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2134.y, x_2134.y, x_2134.y, x_2134.y) * x_2143);
          let x_2145 : i32 = u_xlati11;
          let x_2147 : i32 = u_xlati11;
          let x_2150 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[(x_2145 / 4i)][(x_2147 % 4i)];
          let x_2151 : vec3<f32> = vs_TEXCOORD7;
          let x_2154 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2150 * vec4<f32>(x_2151.x, x_2151.x, x_2151.x, x_2151.x)) + x_2154);
          let x_2156 : i32 = u_xlati11;
          let x_2159 : i32 = u_xlati11;
          let x_2163 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_2156 + 2i) / 4i)][((x_2159 + 2i) % 4i)];
          let x_2164 : vec3<f32> = vs_TEXCOORD7;
          let x_2167 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2163 * vec4<f32>(x_2164.z, x_2164.z, x_2164.z, x_2164.z)) + x_2167);
          let x_2169 : vec4<f32> = u_xlat12;
          let x_2170 : i32 = u_xlati11;
          let x_2173 : i32 = u_xlati11;
          let x_2177 : vec4<f32> = x_1154.x_AdditionalLightsWorldToLights[((x_2170 + 3i) / 4i)][((x_2173 + 3i) % 4i)];
          u_xlat12 = (x_2169 + x_2177);
          let x_2179 : vec4<f32> = u_xlat12;
          let x_2181 : vec4<f32> = u_xlat12;
          let x_2183 : vec3<f32> = (vec3<f32>(x_2179.x, x_2179.y, x_2179.z) / vec3<f32>(x_2181.w, x_2181.w, x_2181.w));
          let x_2184 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
          let x_2186 : vec4<f32> = u_xlat12;
          let x_2188 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2186.x, x_2186.y, x_2186.z), vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
          let x_2191 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2191);
          let x_2193 : f32 = u_xlat51;
          let x_2195 : vec4<f32> = u_xlat12;
          let x_2197 : vec3<f32> = (vec3<f32>(x_2193, x_2193, x_2193) * vec3<f32>(x_2195.x, x_2195.y, x_2195.z));
          let x_2198 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2198.w);
          let x_2200 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2200.x, x_2200.y, x_2200.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2205 : f32 = u_xlat51;
          u_xlat51 = max(x_2205, 0.00000099999999747524f);
          let x_2208 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2208);
          let x_2210 : f32 = u_xlat51;
          let x_2212 : vec4<f32> = u_xlat12;
          let x_2214 : vec3<f32> = (vec3<f32>(x_2210, x_2210, x_2210) * vec3<f32>(x_2212.z, x_2212.x, x_2212.y));
          let x_2215 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
          let x_2218 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2218);
          let x_2222 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2222, 0.0f, 1.0f);
          let x_2225 : vec4<f32> = u_xlat13;
          let x_2227 : vec4<bool> = (vec4<f32>(x_2225.y, x_2225.y, x_2225.y, x_2225.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2228 : vec2<bool> = vec2<bool>(x_2227.x, x_2227.w);
          let x_2229 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2228.x, x_2229.y, x_2229.z, x_2228.y);
          let x_2232 : bool = u_xlatb11.x;
          if (x_2232) {
            let x_2237 : f32 = u_xlat13.x;
            x_2233 = x_2237;
          } else {
            let x_2240 : f32 = u_xlat13.x;
            x_2233 = -(x_2240);
          }
          let x_2242 : f32 = x_2233;
          u_xlat11.x = x_2242;
          let x_2245 : bool = u_xlatb11.w;
          if (x_2245) {
            let x_2250 : f32 = u_xlat13.x;
            x_2246 = x_2250;
          } else {
            let x_2253 : f32 = u_xlat13.x;
            x_2246 = -(x_2253);
          }
          let x_2255 : f32 = x_2246;
          u_xlat11.w = x_2255;
          let x_2257 : vec4<f32> = u_xlat12;
          let x_2259 : f32 = u_xlat51;
          let x_2262 : vec4<f32> = u_xlat11;
          let x_2264 : vec2<f32> = ((vec2<f32>(x_2257.x, x_2257.y) * vec2<f32>(x_2259, x_2259)) + vec2<f32>(x_2262.x, x_2262.w));
          let x_2265 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2264.x, x_2265.y, x_2265.z, x_2264.y);
          let x_2267 : vec4<f32> = u_xlat11;
          let x_2270 : vec2<f32> = ((vec2<f32>(x_2267.x, x_2267.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2271 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2270.x, x_2271.y, x_2271.z, x_2270.y);
          let x_2273 : vec4<f32> = u_xlat11;
          let x_2277 : vec2<f32> = clamp(vec2<f32>(x_2273.x, x_2273.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2278 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2277.x, x_2278.y, x_2278.z, x_2277.y);
          let x_2280 : i32 = u_xlati34;
          let x_2282 : vec4<f32> = x_1154.x_AdditionalLightsCookieAtlasUVRects[x_2280];
          let x_2284 : vec4<f32> = u_xlat11;
          let x_2287 : i32 = u_xlati34;
          let x_2289 : vec4<f32> = x_1154.x_AdditionalLightsCookieAtlasUVRects[x_2287];
          let x_2291 : vec2<f32> = ((vec2<f32>(x_2282.x, x_2282.y) * vec2<f32>(x_2284.x, x_2284.w)) + vec2<f32>(x_2289.z, x_2289.w));
          let x_2292 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2291.x, x_2291.y, x_2292.z);
        }
      }
      let x_2299 : vec3<f32> = u_xlat25;
      let x_2301 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2299.x, x_2299.y), 0.0f);
      u_xlat11 = x_2301;
      let x_2303 : bool = u_xlatb6.y;
      if (x_2303) {
        let x_2308 : f32 = u_xlat11.w;
        x_2304 = x_2308;
      } else {
        let x_2311 : f32 = u_xlat11.x;
        x_2304 = x_2311;
      }
      let x_2312 : f32 = x_2304;
      u_xlat51 = x_2312;
      let x_2314 : bool = u_xlatb6.x;
      if (x_2314) {
        let x_2318 : vec4<f32> = u_xlat11;
        x_2315 = vec3<f32>(x_2318.x, x_2318.y, x_2318.z);
      } else {
        let x_2321 : f32 = u_xlat51;
        x_2315 = vec3<f32>(x_2321, x_2321, x_2321);
      }
      let x_2323 : vec3<f32> = x_2315;
      let x_2324 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2330 : vec4<f32> = u_xlat11;
    let x_2332 : i32 = u_xlati34;
    let x_2334 : vec4<f32> = x_1656.x_AdditionalLightsColor[x_2332];
    let x_2336 : vec3<f32> = (vec3<f32>(x_2330.x, x_2330.y, x_2330.z) * vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
    let x_2337 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2336.x, x_2336.y, x_2336.z, x_2337.w);
    let x_2339 : f32 = u_xlat48;
    let x_2340 : f32 = u_xlat50;
    u_xlat34.x = (x_2339 * x_2340);
    let x_2343 : vec4<f32> = u_xlat1;
    let x_2345 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2343.x, x_2343.y, x_2343.z), vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
    let x_2348 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2348, 0.0f, 1.0f);
    let x_2350 : f32 = u_xlat48;
    let x_2352 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2350 * x_2352);
    let x_2355 : vec2<f32> = u_xlat34;
    let x_2357 : vec4<f32> = u_xlat11;
    let x_2359 : vec3<f32> = (vec3<f32>(x_2355.x, x_2355.x, x_2355.x) * vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
    let x_2360 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
    let x_2362 : vec4<f32> = u_xlat9;
    let x_2364 : f32 = u_xlat49;
    let x_2367 : vec4<f32> = u_xlat7;
    let x_2369 : vec3<f32> = ((vec3<f32>(x_2362.x, x_2362.y, x_2362.z) * vec3<f32>(x_2364, x_2364, x_2364)) + vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
    let x_2370 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
    let x_2372 : vec4<f32> = u_xlat9;
    let x_2374 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2372.x, x_2372.y, x_2372.z), vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
    let x_2379 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_2379, 1.17549435e-38f);
    let x_2383 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_2383);
    let x_2386 : vec2<f32> = u_xlat34;
    let x_2388 : vec4<f32> = u_xlat9;
    let x_2390 : vec3<f32> = (vec3<f32>(x_2386.x, x_2386.x, x_2386.x) * vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
    let x_2391 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
    let x_2393 : vec4<f32> = u_xlat1;
    let x_2395 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2393.x, x_2393.y, x_2393.z), vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
    let x_2400 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_2400, 0.0f, 1.0f);
    let x_2403 : vec4<f32> = u_xlat10;
    let x_2405 : vec4<f32> = u_xlat9;
    u_xlat34.y = dot(vec3<f32>(x_2403.x, x_2403.y, x_2403.z), vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
    let x_2410 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_2410, 0.0f, 1.0f);
    let x_2413 : vec2<f32> = u_xlat34;
    let x_2414 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_2413 * x_2414);
    let x_2417 : f32 = u_xlat34.x;
    let x_2419 : f32 = u_xlat0.x;
    u_xlat34.x = ((x_2417 * x_2419) + 1.00001001358032226562f);
    let x_2424 : f32 = u_xlat34.x;
    let x_2426 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2424 * x_2426);
    let x_2430 : f32 = u_xlat34.y;
    u_xlat48 = max(x_2430, 0.10000000149011611938f);
    let x_2432 : f32 = u_xlat48;
    let x_2434 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2432 * x_2434);
    let x_2437 : f32 = u_xlat46;
    let x_2439 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2437 * x_2439);
    let x_2442 : f32 = u_xlat43;
    let x_2444 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2442 / x_2444);
    let x_2447 : vec4<f32> = u_xlat4;
    let x_2449 : vec2<f32> = u_xlat34;
    let x_2452 : vec3<f32> = u_xlat17;
    let x_2453 : vec3<f32> = ((vec3<f32>(x_2447.x, x_2447.y, x_2447.z) * vec3<f32>(x_2449.x, x_2449.x, x_2449.x)) + x_2452);
    let x_2454 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
    let x_2456 : vec4<f32> = u_xlat9;
    let x_2458 : vec4<f32> = u_xlat11;
    let x_2461 : vec4<f32> = u_xlat8;
    let x_2463 : vec3<f32> = ((vec3<f32>(x_2456.x, x_2456.y, x_2456.z) * vec3<f32>(x_2458.x, x_2458.y, x_2458.z)) + vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
    let x_2464 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);

    continuing {
      let x_2466 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2466 + bitcast<u32>(1i));
    }
  }
  let x_2468 : vec3<f32> = u_xlat16;
  let x_2469 : f32 = u_xlat14;
  let x_2472 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_2468 * vec3<f32>(x_2469, x_2469, x_2469)) + vec3<f32>(x_2472.x, x_2472.z, x_2472.w));
  let x_2475 : vec4<f32> = u_xlat8;
  let x_2477 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2475.x, x_2475.y, x_2475.z) + x_2477);
  let x_2479 : f32 = u_xlat42;
  let x_2481 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2479, x_2479, x_2479) * x_2481);
  let x_2484 : f32 = u_xlat2.x;
  let x_2486 : f32 = u_xlat2.x;
  u_xlat42 = (x_2484 * -(x_2486));
  let x_2489 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2489);
  let x_2493 : vec3<f32> = u_xlat0;
  let x_2494 : f32 = u_xlat42;
  let x_2496 : vec3<f32> = (x_2493 * vec3<f32>(x_2494, x_2494, x_2494));
  let x_2497 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


