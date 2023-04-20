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

@group(0) @binding(12) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(19) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(21) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(18) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(24) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat16 : f32;

var<private> u_xlatb16 : vec2<bool>;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1300 : LightCookies;

@group(0) @binding(15) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(17) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1498 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1802 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(16) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu45 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1252 : f32;
  var x_1381 : f32;
  var x_1392 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1938 : f32;
  var x_1948 : f32;
  var txVec1 : vec3<f32>;
  var x_2377 : f32;
  var x_2390 : f32;
  var x_2448 : f32;
  var x_2459 : vec3<f32>;
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
  let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_103 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_108 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_110 : vec3<f32> = ((vec3<f32>(x_103.x, x_103.w, x_103.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_108.x, x_108.w, x_108.y));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_110.z);
  let x_116 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_120 : vec2<f32> = (vec2<f32>(x_116.z, x_116.w) + vec2<f32>(-1.0f, -1.0f));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  let x_125 : vec4<f32> = u_xlat4;
  let x_129 : vec2<f32> = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.y)) + vec2<f32>(0.5f, 0.5f));
  let x_130 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat4;
  let x_135 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_137 : vec2<f32> = (vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_135.x, x_135.y));
  let x_138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_145 : vec4<f32> = u_xlat4;
  let x_148 : f32 = x_29.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat4 = x_149;
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_151, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_162 : vec4<f32> = vs_TEXCOORD1;
  let x_165 : f32 = x_29.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_162.x, x_162.y), x_165);
  u_xlat5 = x_166;
  let x_172 : vec4<f32> = vs_TEXCOORD1;
  let x_175 : f32 = x_29.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_172.z, x_172.w), x_175);
  u_xlat6 = x_176;
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  let x_186 : f32 = x_29.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_183.x, x_183.y), x_186);
  u_xlat7 = x_187;
  let x_193 : vec4<f32> = vs_TEXCOORD2;
  let x_196 : f32 = x_29.x_GlobalMipBias.x;
  let x_197 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_193.z, x_193.w), x_196);
  u_xlat8 = x_197;
  let x_201 : f32 = u_xlat5.w;
  u_xlat9.x = x_201;
  let x_204 : f32 = u_xlat6.w;
  u_xlat9.y = x_204;
  let x_208 : f32 = u_xlat7.w;
  u_xlat9.z = x_208;
  let x_212 : f32 = u_xlat8.w;
  u_xlat9.w = x_212;
  let x_215 : vec4<f32> = u_xlat9;
  let x_218 : f32 = x_59.x_Smoothness0;
  let x_221 : f32 = x_59.x_Smoothness1;
  let x_224 : f32 = x_59.x_Smoothness2;
  let x_227 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_215 * vec4<f32>(x_218, x_221, x_224, x_227));
  let x_234 : f32 = x_59.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_234);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_237) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_240 : vec4<f32> = u_xlat9;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_240 + -(x_241));
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_244 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_248 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_248, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_252 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_252 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_256);
  let x_259 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_259 + -(x_260));
  let x_265 : f32 = u_xlat12.x;
  let x_268 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_265 * x_268);
  let x_272 : f32 = u_xlat12.y;
  let x_275 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_272 * x_275);
  let x_279 : f32 = u_xlat12.z;
  let x_282 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_279 * x_282);
  let x_286 : f32 = u_xlat12.w;
  let x_289 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_286 * x_289);
  let x_292 : vec4<f32> = u_xlat11;
  let x_293 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_292 + x_293);
  let x_295 : bool = u_xlatb43;
  let x_296 : vec4<f32> = u_xlat11;
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_297, x_296, vec4<bool>(x_295, x_295, x_295, x_295));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_302, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_306 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_306);
  let x_308 : bool = u_xlatb44;
  if (((select(0i, 1i, x_308) * -1i) != 0i)) {
    discard;
  }
  let x_315 : f32 = u_xlat43;
  u_xlat43 = (x_315 + 0.00006103515625f);
  let x_318 : vec4<f32> = u_xlat4;
  let x_319 : f32 = u_xlat43;
  u_xlat4 = (x_318 / vec4<f32>(x_319, x_319, x_319, x_319));
  let x_322 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_327 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec4<f32> = u_xlat12;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec4<f32> = u_xlat11;
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_360 : vec3<f32> = (vec3<f32>(x_355.z, x_355.z, x_355.z) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : vec4<f32> = u_xlat6;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.z)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_378 : vec3<f32> = (vec3<f32>(x_373.w, x_373.w, x_373.w) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat8;
  let x_383 : vec4<f32> = u_xlat6;
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.x, x_383.y, x_383.z)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_396 : vec4<f32> = vs_TEXCOORD1;
  let x_399 : f32 = x_29.x_GlobalMipBias.x;
  let x_400 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_396.x, x_396.y), x_399);
  let x_401 : vec3<f32> = vec3<f32>(x_400.x, x_400.y, x_400.w);
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : f32 = u_xlat6.x;
  let x_407 : f32 = u_xlat6.z;
  u_xlat6.x = (x_405 * x_407);
  let x_410 : vec4<f32> = u_xlat6;
  let x_415 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_418.x, x_418.y), vec2<f32>(x_420.x, x_420.y));
  let x_423 : f32 = u_xlat43;
  u_xlat43 = min(x_423, 1.0f);
  let x_425 : f32 = u_xlat43;
  u_xlat43 = (-(x_425) + 1.0f);
  let x_428 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_428);
  let x_430 : f32 = u_xlat43;
  u_xlat7.z = max(x_430, 0.0000000000000001f);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : f32 = x_59.x_NormalScale0;
  let x_439 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_437, x_437));
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_446 : vec4<f32> = vs_TEXCOORD1;
  let x_449 : f32 = x_29.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_446.z, x_446.w), x_449);
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = u_xlat6.x;
  let x_457 : f32 = u_xlat6.z;
  u_xlat6.x = (x_455 * x_457);
  let x_460 : vec4<f32> = u_xlat6;
  let x_463 : vec2<f32> = ((vec2<f32>(x_460.x, x_460.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat6;
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_466.x, x_466.y), vec2<f32>(x_468.x, x_468.y));
  let x_471 : f32 = u_xlat43;
  u_xlat43 = min(x_471, 1.0f);
  let x_473 : f32 = u_xlat43;
  u_xlat43 = (-(x_473) + 1.0f);
  let x_476 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_476);
  let x_478 : f32 = u_xlat43;
  u_xlat8.z = max(x_478, 0.0000000000000001f);
  let x_481 : vec4<f32> = u_xlat6;
  let x_484 : f32 = x_59.x_NormalScale1;
  let x_486 : f32 = x_59.x_NormalScale1;
  let x_487 : vec2<f32> = vec2<f32>(x_484, x_486);
  let x_491 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_487.x, x_487.y));
  let x_492 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec4<f32> = u_xlat8;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.y, x_494.y, x_494.y) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec4<f32> = u_xlat6;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.x, x_501.x) * vec3<f32>(x_503.x, x_503.y, x_503.z)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_515 : vec4<f32> = vs_TEXCOORD2;
  let x_518 : f32 = x_29.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_515.x, x_515.y), x_518);
  let x_520 : vec3<f32> = vec3<f32>(x_519.x, x_519.y, x_519.w);
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = u_xlat7.x;
  let x_526 : f32 = u_xlat7.z;
  u_xlat7.x = (x_524 * x_526);
  let x_529 : vec4<f32> = u_xlat7;
  let x_532 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_533 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat7;
  let x_537 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_535.x, x_535.y), vec2<f32>(x_537.x, x_537.y));
  let x_540 : f32 = u_xlat43;
  u_xlat43 = min(x_540, 1.0f);
  let x_542 : f32 = u_xlat43;
  u_xlat43 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_545);
  let x_547 : f32 = u_xlat43;
  u_xlat8.z = max(x_547, 0.0000000000000001f);
  let x_550 : vec4<f32> = u_xlat7;
  let x_554 : f32 = x_59.x_NormalScale2;
  let x_556 : f32 = x_59.x_NormalScale2;
  let x_557 : vec2<f32> = vec2<f32>(x_554, x_556);
  let x_561 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_557.x, x_557.y));
  let x_562 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = u_xlat8;
  let x_569 : vec4<f32> = u_xlat6;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.z, x_564.z, x_564.z) * vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_578 : vec4<f32> = vs_TEXCOORD2;
  let x_581 : f32 = x_29.x_GlobalMipBias.x;
  let x_582 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_578.z, x_578.w), x_581);
  let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.w);
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : f32 = u_xlat7.x;
  let x_589 : f32 = u_xlat7.z;
  u_xlat7.x = (x_587 * x_589);
  let x_592 : vec4<f32> = u_xlat7;
  let x_595 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_596 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_598.x, x_598.y), vec2<f32>(x_600.x, x_600.y));
  let x_603 : f32 = u_xlat43;
  u_xlat43 = min(x_603, 1.0f);
  let x_605 : f32 = u_xlat43;
  u_xlat43 = (-(x_605) + 1.0f);
  let x_608 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_608);
  let x_610 : f32 = u_xlat43;
  u_xlat8.z = max(x_610, 0.0000000000000001f);
  let x_613 : vec4<f32> = u_xlat7;
  let x_617 : f32 = x_59.x_NormalScale3;
  let x_619 : f32 = x_59.x_NormalScale3;
  let x_620 : vec2<f32> = vec2<f32>(x_617, x_619);
  let x_624 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_620.x, x_620.y));
  let x_625 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat4;
  let x_629 : vec4<f32> = u_xlat8;
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.w, x_627.w, x_627.w) * vec3<f32>(x_629.x, x_629.y, x_629.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_638 : f32 = u_xlat6.z;
  u_xlat6.w = (x_638 + 0.00000999999974737875f);
  let x_642 : vec4<f32> = u_xlat6;
  let x_644 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_642.x, x_642.y, x_642.w), vec3<f32>(x_644.x, x_644.y, x_644.w));
  let x_647 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_647);
  let x_649 : f32 = u_xlat43;
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec3<f32> = (vec3<f32>(x_649, x_649, x_649) * vec3<f32>(x_651.x, x_651.y, x_651.w));
  let x_654 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_657;
  let x_660 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_660;
  let x_663 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_663;
  let x_666 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_666;
  let x_669 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_669;
  let x_672 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_672;
  let x_675 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_675;
  let x_678 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_678;
  let x_680 : vec4<f32> = u_xlat7;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_680 + x_681);
  let x_684 : f32 = u_xlat0.z;
  u_xlat8.x = x_684;
  let x_687 : f32 = u_xlat1.z;
  u_xlat8.y = x_687;
  let x_690 : f32 = u_xlat2.z;
  u_xlat8.z = x_690;
  let x_693 : f32 = u_xlat3.y;
  u_xlat8.w = x_693;
  let x_695 : vec4<f32> = u_xlat9;
  let x_698 : f32 = x_59.x_Smoothness0;
  let x_700 : f32 = x_59.x_Smoothness1;
  let x_702 : f32 = x_59.x_Smoothness2;
  let x_704 : f32 = x_59.x_Smoothness3;
  let x_707 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_695) * vec4<f32>(x_698, x_700, x_702, x_704)) + x_707);
  let x_711 : f32 = x_59.x_LayerHasMask0;
  let x_714 : f32 = x_59.x_LayerHasMask1;
  let x_717 : f32 = x_59.x_LayerHasMask2;
  let x_720 : f32 = x_59.x_LayerHasMask3;
  let x_722 : vec4<f32> = u_xlat8;
  let x_724 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_711, x_714, x_717, x_720) * x_722) + x_724);
  let x_727 : vec4<f32> = u_xlat4;
  let x_728 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_727, x_728);
  let x_731 : f32 = u_xlat0.x;
  u_xlat8.x = x_731;
  let x_734 : f32 = u_xlat1.x;
  u_xlat8.y = x_734;
  let x_737 : f32 = u_xlat2.x;
  u_xlat8.z = x_737;
  let x_740 : f32 = u_xlat3.x;
  u_xlat8.w = x_740;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_59.x_Metallic0;
  let x_748 : f32 = x_59.x_Metallic1;
  let x_751 : f32 = x_59.x_Metallic2;
  let x_754 : f32 = x_59.x_Metallic3;
  u_xlat8 = (x_742 + -(vec4<f32>(x_745, x_748, x_751, x_754)));
  let x_759 : f32 = x_59.x_LayerHasMask0;
  let x_761 : f32 = x_59.x_LayerHasMask1;
  let x_763 : f32 = x_59.x_LayerHasMask2;
  let x_765 : f32 = x_59.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat8;
  let x_770 : f32 = x_59.x_Metallic0;
  let x_772 : f32 = x_59.x_Metallic1;
  let x_774 : f32 = x_59.x_Metallic2;
  let x_776 : f32 = x_59.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + vec4<f32>(x_770, x_772, x_774, x_776));
  let x_779 : vec4<f32> = u_xlat4;
  let x_780 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_779, x_780);
  let x_784 : f32 = u_xlat0.y;
  u_xlat3.x = x_784;
  let x_787 : f32 = u_xlat1.y;
  u_xlat3.y = x_787;
  let x_790 : f32 = u_xlat2.y;
  u_xlat3.z = x_790;
  let x_792 : vec4<f32> = u_xlat7;
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_792) + x_794);
  let x_797 : f32 = x_59.x_LayerHasMask0;
  let x_799 : f32 = x_59.x_LayerHasMask1;
  let x_801 : f32 = x_59.x_LayerHasMask2;
  let x_803 : f32 = x_59.x_LayerHasMask3;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_797, x_799, x_801, x_803) * x_805) + x_807);
  let x_810 : vec4<f32> = u_xlat4;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_810, x_811);
  let x_813 : vec4<f32> = u_xlat6;
  let x_816 : vec4<f32> = vs_TEXCOORD5;
  let x_818 : vec3<f32> = (vec3<f32>(x_813.y, x_813.y, x_813.y) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : vec4<f32> = vs_TEXCOORD4;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.x, x_821.x) * -(vec3<f32>(x_824.x, x_824.y, x_824.z))) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat6;
  let x_836 : vec4<f32> = vs_TEXCOORD3;
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec3<f32> = ((vec3<f32>(x_833.z, x_833.z, x_833.z) * vec3<f32>(x_836.x, x_836.y, x_836.z)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_844.x, x_844.y, x_844.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_849);
  let x_851 : f32 = u_xlat43;
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = (vec3<f32>(x_851, x_851, x_851) * vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_860 : vec3<f32> = vs_TEXCOORD7;
  let x_870 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres0;
  let x_873 : vec3<f32> = (x_860 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = vs_TEXCOORD7;
  let x_878 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres1;
  let x_881 : vec3<f32> = (x_876 + -(vec3<f32>(x_878.x, x_878.y, x_878.z)));
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = vs_TEXCOORD7;
  let x_886 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres2;
  let x_889 : vec3<f32> = (x_884 + -(vec3<f32>(x_886.x, x_886.y, x_886.z)));
  let x_890 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = vs_TEXCOORD7;
  let x_894 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres3;
  let x_897 : vec3<f32> = (x_892 + -(vec3<f32>(x_894.x, x_894.y, x_894.z)));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_906 : vec4<f32> = u_xlat3;
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_912 : vec4<f32> = u_xlat4;
  let x_914 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_918 : vec4<f32> = u_xlat6;
  let x_920 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_926 : vec4<f32> = u_xlat2;
  let x_928 : vec4<f32> = x_868.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_926 < x_928);
  let x_931 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_931);
  let x_935 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_935);
  let x_939 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_939);
  let x_943 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_943);
  let x_947 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_947);
  let x_952 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_952);
  let x_956 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_956);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec4<f32> = u_xlat3;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) + vec3<f32>(x_961.y, x_961.z, x_961.w));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_969 : vec3<f32> = max(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_970 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_970.x, x_969.x, x_969.y, x_969.z);
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_976 : f32 = u_xlat43;
  u_xlat43 = (-(x_976) + 4.0f);
  let x_981 : f32 = u_xlat43;
  u_xlatu43 = u32(x_981);
  let x_985 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_985) << bitcast<u32>(2i));
  let x_988 : vec3<f32> = vs_TEXCOORD7;
  let x_990 : i32 = u_xlati43;
  let x_993 : i32 = u_xlati43;
  let x_997 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_990 + 1i) / 4i)][((x_993 + 1i) % 4i)];
  let x_999 : vec3<f32> = (vec3<f32>(x_988.y, x_988.y, x_988.y) * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : i32 = u_xlati43;
  let x_1004 : i32 = u_xlati43;
  let x_1007 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1002 / 4i)][(x_1004 % 4i)];
  let x_1009 : vec3<f32> = vs_TEXCOORD7;
  let x_1012 : vec4<f32> = u_xlat2;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009.x, x_1009.x, x_1009.x)) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : i32 = u_xlati43;
  let x_1020 : i32 = u_xlati43;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec4<f32> = u_xlat2;
  let x_1031 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec4<f32> = u_xlat2;
  let x_1036 : i32 = u_xlati43;
  let x_1039 : i32 = u_xlati43;
  let x_1043 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1036 + 3i) / 4i)][((x_1039 + 3i) % 4i)];
  let x_1045 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1050 : f32 = vs_TEXCOORD7.y;
  let x_1052 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat43 = (x_1050 * x_1052);
  let x_1055 : f32 = x_29.unity_MatrixV[0i].z;
  let x_1057 : f32 = vs_TEXCOORD7.x;
  let x_1059 : f32 = u_xlat43;
  u_xlat43 = ((x_1055 * x_1057) + x_1059);
  let x_1062 : f32 = x_29.unity_MatrixV[2i].z;
  let x_1064 : f32 = vs_TEXCOORD7.z;
  let x_1066 : f32 = u_xlat43;
  u_xlat43 = ((x_1062 * x_1064) + x_1066);
  let x_1068 : f32 = u_xlat43;
  let x_1070 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat43 = (x_1068 + x_1070);
  let x_1072 : f32 = u_xlat43;
  let x_1075 : f32 = x_29.x_ProjectionParams.y;
  u_xlat43 = (-(x_1072) + -(x_1075));
  let x_1078 : f32 = u_xlat43;
  u_xlat43 = max(x_1078, 0.0f);
  let x_1080 : f32 = u_xlat43;
  let x_1082 : f32 = x_29.unity_FogParams.x;
  u_xlat43 = (x_1080 * x_1082);
  let x_1089 : vec4<f32> = vs_TEXCOORD0;
  let x_1092 : f32 = x_29.x_GlobalMipBias.x;
  let x_1093 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1089.z, x_1089.w), x_1092);
  u_xlat3 = x_1093;
  let x_1098 : vec4<f32> = vs_TEXCOORD0;
  let x_1101 : f32 = x_29.x_GlobalMipBias.x;
  let x_1102 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1098.z, x_1098.w), x_1101);
  let x_1103 : vec3<f32> = vec3<f32>(x_1102.x, x_1102.y, x_1102.z);
  let x_1104 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : vec4<f32> = u_xlat3;
  let x_1110 : vec3<f32> = (vec3<f32>(x_1106.x, x_1106.y, x_1106.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1114 : vec4<f32> = u_xlat1;
  let x_1116 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(vec3<f32>(x_1114.x, x_1114.y, x_1114.z), vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : f32 = u_xlat44;
  u_xlat44 = (x_1119 + 0.5f);
  let x_1121 : f32 = u_xlat44;
  let x_1123 : vec4<f32> = u_xlat4;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1121, x_1121, x_1121) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1129 : f32 = u_xlat3.w;
  u_xlat44 = max(x_1129, 0.00009999999747378752f);
  let x_1132 : vec4<f32> = u_xlat3;
  let x_1134 : f32 = u_xlat44;
  let x_1136 : vec3<f32> = (vec3<f32>(x_1132.x, x_1132.y, x_1132.z) / vec3<f32>(x_1134, x_1134, x_1134));
  let x_1137 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1140 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1140) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1146 : f32 = u_xlat28;
  let x_1147 : f32 = u_xlat44;
  u_xlat45 = (x_1146 + -(x_1147));
  let x_1150 : f32 = u_xlat44;
  let x_1152 : vec4<f32> = u_xlat5;
  let x_1154 : vec3<f32> = (vec3<f32>(x_1150, x_1150, x_1150) * vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec4<f32> = u_xlat5;
  let x_1161 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1162 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec3<f32> = u_xlat0;
  let x_1166 : vec4<f32> = u_xlat5;
  let x_1171 : vec3<f32> = ((vec3<f32>(x_1164.x, x_1164.x, x_1164.x) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1172 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1174) + 1.0f);
  let x_1179 : f32 = u_xlat0.x;
  let x_1181 : f32 = u_xlat0.x;
  u_xlat28 = (x_1179 * x_1181);
  let x_1183 : f32 = u_xlat28;
  u_xlat28 = max(x_1183, 0.0078125f);
  let x_1186 : f32 = u_xlat28;
  let x_1187 : f32 = u_xlat28;
  u_xlat44 = (x_1186 * x_1187);
  let x_1189 : f32 = u_xlat45;
  u_xlat45 = (x_1189 + 1.0f);
  let x_1191 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1191, 0.0f, 1.0f);
  let x_1194 : f32 = u_xlat28;
  u_xlat46 = ((x_1194 * 4.0f) + 2.0f);
  let x_1197 : f32 = u_xlat14;
  u_xlat14 = min(x_1197, 1.0f);
  let x_1201 : vec4<f32> = u_xlat2;
  let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
  let x_1204 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
  let x_1216 : vec3<f32> = txVec0;
  let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
  u_xlat2.x = x_1218;
  let x_1222 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1222) + 1.0f);
  let x_1226 : f32 = u_xlat2.x;
  let x_1228 : f32 = x_868.x_MainLightShadowParams.x;
  let x_1230 : f32 = u_xlat16;
  u_xlat2.x = ((x_1226 * x_1228) + x_1230);
  let x_1237 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_1237);
  let x_1242 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1242 >= 1.0f);
  let x_1244 : bool = u_xlatb30;
  let x_1246 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_1244 | x_1246);
  let x_1250 : bool = u_xlatb16.x;
  if (x_1250) {
    x_1252 = 1.0f;
  } else {
    let x_1257 : f32 = u_xlat2.x;
    x_1252 = x_1257;
  }
  let x_1258 : f32 = x_1252;
  u_xlat2.x = x_1258;
  let x_1260 : vec3<f32> = vs_TEXCOORD7;
  let x_1263 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1265 : vec3<f32> = (x_1260 + -(x_1263));
  let x_1266 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  let x_1268 : vec4<f32> = u_xlat6;
  let x_1270 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_1268.x, x_1268.y, x_1268.z), vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
  let x_1274 : f32 = u_xlat16;
  let x_1276 : f32 = x_868.x_MainLightShadowParams.z;
  let x_1279 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1274 * x_1276) + x_1279);
  let x_1281 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1281, 0.0f, 1.0f);
  let x_1285 : f32 = u_xlat2.x;
  u_xlat47 = (-(x_1285) + 1.0f);
  let x_1288 : f32 = u_xlat30;
  let x_1289 : f32 = u_xlat47;
  let x_1292 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1288 * x_1289) + x_1292);
  let x_1302 : f32 = x_1300.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_1302 == -1.0f));
  let x_1304 : bool = u_xlatb30;
  if (x_1304) {
    let x_1307 : vec3<f32> = vs_TEXCOORD7;
    let x_1310 : vec4<f32> = x_1300.x_MainLightWorldToLight[1i];
    let x_1312 : vec2<f32> = (vec2<f32>(x_1307.y, x_1307.y) * vec2<f32>(x_1310.x, x_1310.y));
    let x_1313 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
    let x_1316 : vec4<f32> = x_1300.x_MainLightWorldToLight[0i];
    let x_1318 : vec3<f32> = vs_TEXCOORD7;
    let x_1321 : vec4<f32> = u_xlat6;
    let x_1323 : vec2<f32> = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1318.x, x_1318.x)) + vec2<f32>(x_1321.x, x_1321.y));
    let x_1324 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
    let x_1327 : vec4<f32> = x_1300.x_MainLightWorldToLight[2i];
    let x_1329 : vec3<f32> = vs_TEXCOORD7;
    let x_1332 : vec4<f32> = u_xlat6;
    let x_1334 : vec2<f32> = ((vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(x_1329.z, x_1329.z)) + vec2<f32>(x_1332.x, x_1332.y));
    let x_1335 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1334.x, x_1334.y, x_1335.z, x_1335.w);
    let x_1337 : vec4<f32> = u_xlat6;
    let x_1340 : vec4<f32> = x_1300.x_MainLightWorldToLight[3i];
    let x_1342 : vec2<f32> = (vec2<f32>(x_1337.x, x_1337.y) + vec2<f32>(x_1340.x, x_1340.y));
    let x_1343 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
    let x_1345 : vec4<f32> = u_xlat6;
    let x_1348 : vec2<f32> = ((vec2<f32>(x_1345.x, x_1345.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1349 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
    let x_1356 : vec4<f32> = u_xlat6;
    let x_1359 : f32 = x_29.x_GlobalMipBias.x;
    let x_1360 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1356.x, x_1356.y), x_1359);
    u_xlat6 = x_1360;
    let x_1363 : f32 = x_1300.x_MainLightCookieTextureFormat;
    let x_1365 : f32 = x_1300.x_MainLightCookieTextureFormat;
    let x_1367 : f32 = x_1300.x_MainLightCookieTextureFormat;
    let x_1369 : f32 = x_1300.x_MainLightCookieTextureFormat;
    let x_1370 : vec4<f32> = vec4<f32>(x_1363, x_1365, x_1367, x_1369);
    let x_1377 : vec4<bool> = (vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1370.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1377.x, x_1377.y);
    let x_1380 : bool = u_xlatb7.y;
    if (x_1380) {
      let x_1385 : f32 = u_xlat6.w;
      x_1381 = x_1385;
    } else {
      let x_1388 : f32 = u_xlat6.x;
      x_1381 = x_1388;
    }
    let x_1389 : f32 = x_1381;
    u_xlat30 = x_1389;
    let x_1391 : bool = u_xlatb7.x;
    if (x_1391) {
      let x_1395 : vec4<f32> = u_xlat6;
      x_1392 = vec3<f32>(x_1395.x, x_1395.y, x_1395.z);
    } else {
      let x_1398 : f32 = u_xlat30;
      x_1392 = vec3<f32>(x_1398, x_1398, x_1398);
    }
    let x_1400 : vec3<f32> = x_1392;
    let x_1401 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1407 : vec4<f32> = u_xlat6;
  let x_1410 : vec4<f32> = x_29.x_MainLightColor;
  let x_1412 : vec3<f32> = (vec3<f32>(x_1407.x, x_1407.y, x_1407.z) * vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
  let x_1413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
  let x_1416 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1416;
  let x_1419 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1419;
  let x_1422 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1422;
  let x_1424 : vec4<f32> = u_xlat7;
  let x_1427 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1424.x, x_1424.y, x_1424.z)), vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : f32 = u_xlat30;
  let x_1431 : f32 = u_xlat30;
  u_xlat30 = (x_1430 + x_1431);
  let x_1433 : vec4<f32> = u_xlat1;
  let x_1435 : f32 = u_xlat30;
  let x_1439 : vec4<f32> = u_xlat7;
  let x_1442 : vec3<f32> = ((vec3<f32>(x_1433.x, x_1433.y, x_1433.z) * -(vec3<f32>(x_1435, x_1435, x_1435))) + -(vec3<f32>(x_1439.x, x_1439.y, x_1439.z)));
  let x_1443 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
  let x_1445 : vec4<f32> = u_xlat1;
  let x_1447 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1445.x, x_1445.y, x_1445.z), vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
  let x_1450 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1450, 0.0f, 1.0f);
  let x_1452 : f32 = u_xlat30;
  u_xlat30 = (-(x_1452) + 1.0f);
  let x_1455 : f32 = u_xlat30;
  let x_1456 : f32 = u_xlat30;
  u_xlat30 = (x_1455 * x_1456);
  let x_1458 : f32 = u_xlat30;
  let x_1459 : f32 = u_xlat30;
  u_xlat30 = (x_1458 * x_1459);
  let x_1462 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1462) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1469 : f32 = u_xlat0.x;
  let x_1470 : f32 = u_xlat47;
  u_xlat0.x = (x_1469 * x_1470);
  let x_1474 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1474 * 6.0f);
  let x_1486 : vec4<f32> = u_xlat8;
  let x_1489 : f32 = u_xlat0.x;
  let x_1490 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1486.x, x_1486.y, x_1486.z), x_1489);
  u_xlat8 = x_1490;
  let x_1492 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1492 + -1.0f);
  let x_1500 : f32 = x_1498.unity_SpecCube0_HDR.w;
  let x_1502 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1500 * x_1502) + 1.0f);
  let x_1507 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1507, 0.0f);
  let x_1511 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1511);
  let x_1515 : f32 = u_xlat0.x;
  let x_1517 : f32 = x_1498.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1515 * x_1517);
  let x_1521 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1521);
  let x_1525 : f32 = u_xlat0.x;
  let x_1527 : f32 = x_1498.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1525 * x_1527);
  let x_1530 : vec4<f32> = u_xlat8;
  let x_1532 : vec3<f32> = u_xlat0;
  let x_1534 : vec3<f32> = (vec3<f32>(x_1530.x, x_1530.y, x_1530.z) * vec3<f32>(x_1532.x, x_1532.x, x_1532.x));
  let x_1535 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
  let x_1537 : f32 = u_xlat28;
  let x_1539 : f32 = u_xlat28;
  let x_1543 : vec2<f32> = ((vec2<f32>(x_1537, x_1537) * vec2<f32>(x_1539, x_1539)) + vec2<f32>(-1.0f, 1.0f));
  let x_1544 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1543.x, x_1544.y, x_1543.y);
  let x_1547 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1547);
  let x_1549 : vec4<f32> = u_xlat5;
  let x_1552 : f32 = u_xlat45;
  let x_1554 : vec3<f32> = (-(vec3<f32>(x_1549.x, x_1549.y, x_1549.z)) + vec3<f32>(x_1552, x_1552, x_1552));
  let x_1555 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1555.w);
  let x_1557 : f32 = u_xlat30;
  let x_1559 : vec4<f32> = u_xlat9;
  let x_1562 : vec4<f32> = u_xlat5;
  let x_1564 : vec3<f32> = ((vec3<f32>(x_1557, x_1557, x_1557) * vec3<f32>(x_1559.x, x_1559.y, x_1559.z)) + vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
  let x_1565 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
  let x_1567 : f32 = u_xlat28;
  let x_1569 : vec4<f32> = u_xlat9;
  let x_1571 : vec3<f32> = (vec3<f32>(x_1567, x_1567, x_1567) * vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
  let x_1572 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
  let x_1574 : vec4<f32> = u_xlat8;
  let x_1576 : vec4<f32> = u_xlat9;
  let x_1578 : vec3<f32> = (vec3<f32>(x_1574.x, x_1574.y, x_1574.z) * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
  let x_1579 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
  let x_1581 : vec4<f32> = u_xlat3;
  let x_1583 : vec4<f32> = u_xlat4;
  let x_1586 : vec4<f32> = u_xlat8;
  let x_1588 : vec3<f32> = ((vec3<f32>(x_1581.x, x_1581.y, x_1581.z) * vec3<f32>(x_1583.x, x_1583.y, x_1583.z)) + vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
  let x_1589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1589.w);
  let x_1592 : f32 = u_xlat2.x;
  let x_1594 : f32 = x_1498.unity_LightData.z;
  u_xlat28 = (x_1592 * x_1594);
  let x_1596 : vec4<f32> = u_xlat1;
  let x_1599 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
  let x_1604 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1604, 0.0f, 1.0f);
  let x_1607 : f32 = u_xlat28;
  let x_1609 : f32 = u_xlat2.x;
  u_xlat28 = (x_1607 * x_1609);
  let x_1611 : f32 = u_xlat28;
  let x_1613 : vec4<f32> = u_xlat6;
  let x_1615 : vec3<f32> = (vec3<f32>(x_1611, x_1611, x_1611) * vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1618 : vec4<f32> = u_xlat7;
  let x_1621 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1623 : vec3<f32> = (vec3<f32>(x_1618.x, x_1618.y, x_1618.z) + vec3<f32>(x_1621.x, x_1621.y, x_1621.z));
  let x_1624 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1624.w);
  let x_1626 : vec4<f32> = u_xlat8;
  let x_1628 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1626.x, x_1626.y, x_1626.z), vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
  let x_1631 : f32 = u_xlat28;
  u_xlat28 = max(x_1631, 1.17549435e-38f);
  let x_1634 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1634);
  let x_1636 : f32 = u_xlat28;
  let x_1638 : vec4<f32> = u_xlat8;
  let x_1640 : vec3<f32> = (vec3<f32>(x_1636, x_1636, x_1636) * vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
  let x_1641 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  let x_1643 : vec4<f32> = u_xlat1;
  let x_1645 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1643.x, x_1643.y, x_1643.z), vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
  let x_1648 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1648, 0.0f, 1.0f);
  let x_1651 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1653 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_1651.x, x_1651.y, x_1651.z), vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1658 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1658, 0.0f, 1.0f);
  let x_1661 : f32 = u_xlat28;
  let x_1662 : f32 = u_xlat28;
  u_xlat28 = (x_1661 * x_1662);
  let x_1664 : f32 = u_xlat28;
  let x_1666 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1664 * x_1666) + 1.00001001358032226562f);
  let x_1671 : f32 = u_xlat2.x;
  let x_1673 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1671 * x_1673);
  let x_1676 : f32 = u_xlat28;
  let x_1677 : f32 = u_xlat28;
  u_xlat28 = (x_1676 * x_1677);
  let x_1680 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1680, 0.10000000149011611938f);
  let x_1684 : f32 = u_xlat28;
  let x_1686 : f32 = u_xlat2.x;
  u_xlat28 = (x_1684 * x_1686);
  let x_1688 : f32 = u_xlat46;
  let x_1689 : f32 = u_xlat28;
  u_xlat28 = (x_1688 * x_1689);
  let x_1691 : f32 = u_xlat44;
  let x_1692 : f32 = u_xlat28;
  u_xlat28 = (x_1691 / x_1692);
  let x_1694 : vec4<f32> = u_xlat5;
  let x_1696 : f32 = u_xlat28;
  let x_1699 : vec4<f32> = u_xlat4;
  let x_1701 : vec3<f32> = ((vec3<f32>(x_1694.x, x_1694.y, x_1694.z) * vec3<f32>(x_1696, x_1696, x_1696)) + vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : vec4<f32> = u_xlat6;
  let x_1706 : vec4<f32> = u_xlat8;
  let x_1708 : vec3<f32> = (vec3<f32>(x_1704.x, x_1704.y, x_1704.z) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
  let x_1712 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1714 : f32 = x_1498.unity_LightData.y;
  u_xlat28 = min(x_1712, x_1714);
  let x_1717 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1717));
  let x_1720 : f32 = u_xlat16;
  let x_1722 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_1725 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1720 * x_1722) + x_1725);
  let x_1729 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1729, 0.0f, 1.0f);
  let x_1733 : f32 = x_1300.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1735 : f32 = x_1300.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1737 : f32 = x_1300.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1739 : f32 = x_1300.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1740 : vec4<f32> = vec4<f32>(x_1733, x_1735, x_1737, x_1739);
  let x_1746 : vec4<bool> = (vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1740.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb16 = vec2<bool>(x_1746.x, x_1746.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1758 : u32 = u_xlatu_loop_1;
    let x_1759 : u32 = u_xlatu28;
    if ((x_1758 < x_1759)) {
    } else {
      break;
    }
    let x_1762 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1762 >> 2u);
    let x_1765 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1765 & 3u));
    let x_1768 : u32 = u_xlatu47;
    let x_1771 : vec4<f32> = x_1498.unity_LightIndices[bitcast<i32>(x_1768)];
    let x_1781 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1786 : vec4<u32> = indexable[x_1781];
    u_xlat47 = dot(x_1771, bitcast<vec4<f32>>(x_1786));
    let x_1790 : f32 = u_xlat47;
    u_xlati47 = i32(x_1790);
    let x_1792 : vec3<f32> = vs_TEXCOORD7;
    let x_1803 : i32 = u_xlati47;
    let x_1805 : vec4<f32> = x_1802.x_AdditionalLightsPosition[x_1803];
    let x_1808 : i32 = u_xlati47;
    let x_1810 : vec4<f32> = x_1802.x_AdditionalLightsPosition[x_1808];
    let x_1812 : vec3<f32> = ((-(x_1792) * vec3<f32>(x_1805.w, x_1805.w, x_1805.w)) + vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
    let x_1813 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
    let x_1816 : vec4<f32> = u_xlat9;
    let x_1818 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1816.x, x_1816.y, x_1816.z), vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : f32 = u_xlat48;
    u_xlat48 = max(x_1821, 0.00006103515625f);
    let x_1824 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1824);
    let x_1826 : f32 = u_xlat49;
    let x_1828 : vec4<f32> = u_xlat9;
    let x_1830 : vec3<f32> = (vec3<f32>(x_1826, x_1826, x_1826) * vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
    let x_1831 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1830.x, x_1830.y, x_1830.z, x_1831.w);
    let x_1834 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1834);
    let x_1836 : f32 = u_xlat48;
    let x_1837 : i32 = u_xlati47;
    let x_1839 : f32 = x_1802.x_AdditionalLightsAttenuation[x_1837].x;
    u_xlat48 = (x_1836 * x_1839);
    let x_1841 : f32 = u_xlat48;
    let x_1843 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1841) * x_1843) + 1.0f);
    let x_1846 : f32 = u_xlat48;
    u_xlat48 = max(x_1846, 0.0f);
    let x_1848 : f32 = u_xlat48;
    let x_1849 : f32 = u_xlat48;
    u_xlat48 = (x_1848 * x_1849);
    let x_1851 : f32 = u_xlat48;
    let x_1852 : f32 = u_xlat50;
    u_xlat48 = (x_1851 * x_1852);
    let x_1854 : i32 = u_xlati47;
    let x_1856 : vec4<f32> = x_1802.x_AdditionalLightsSpotDir[x_1854];
    let x_1858 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1856.x, x_1856.y, x_1856.z), vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
    let x_1861 : f32 = u_xlat50;
    let x_1862 : i32 = u_xlati47;
    let x_1864 : f32 = x_1802.x_AdditionalLightsAttenuation[x_1862].z;
    let x_1866 : i32 = u_xlati47;
    let x_1868 : f32 = x_1802.x_AdditionalLightsAttenuation[x_1866].w;
    u_xlat50 = ((x_1861 * x_1864) + x_1868);
    let x_1870 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1870, 0.0f, 1.0f);
    let x_1872 : f32 = u_xlat50;
    let x_1873 : f32 = u_xlat50;
    u_xlat50 = (x_1872 * x_1873);
    let x_1875 : f32 = u_xlat48;
    let x_1876 : f32 = u_xlat50;
    u_xlat48 = (x_1875 * x_1876);
    let x_1879 : i32 = u_xlati47;
    let x_1881 : f32 = x_868.x_AdditionalShadowParams[x_1879].w;
    u_xlati50 = i32(x_1881);
    let x_1884 : i32 = u_xlati50;
    u_xlatb51 = (x_1884 >= 0i);
    let x_1886 : bool = u_xlatb51;
    if (x_1886) {
      let x_1890 : i32 = u_xlati47;
      let x_1892 : f32 = x_868.x_AdditionalShadowParams[x_1890].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1892, x_1892, x_1892, x_1892))));
      let x_1896 : bool = u_xlatb51;
      if (x_1896) {
        let x_1900 : vec4<f32> = u_xlat10;
        let x_1903 : vec4<f32> = u_xlat10;
        let x_1906 : vec4<bool> = (abs(vec4<f32>(x_1900.z, x_1900.z, x_1900.y, x_1900.z)) >= abs(vec4<f32>(x_1903.x, x_1903.y, x_1903.x, x_1903.x)));
        let x_1908 : vec3<bool> = vec3<bool>(x_1906.x, x_1906.y, x_1906.z);
        let x_1909 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
        let x_1912 : bool = u_xlatb11.y;
        let x_1914 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1912 & x_1914);
        let x_1916 : vec4<f32> = u_xlat10;
        let x_1919 : vec4<bool> = (-(vec4<f32>(x_1916.z, x_1916.y, x_1916.z, x_1916.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1920 : vec3<bool> = vec3<bool>(x_1919.x, x_1919.y, x_1919.w);
        let x_1921 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1920.x, x_1920.y, x_1921.z, x_1920.z);
        let x_1924 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1924);
        let x_1929 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1929);
        let x_1934 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1934);
        let x_1937 : bool = u_xlatb11.z;
        if (x_1937) {
          let x_1942 : f32 = u_xlat11.y;
          x_1938 = x_1942;
        } else {
          let x_1944 : f32 = u_xlat52;
          x_1938 = x_1944;
        }
        let x_1945 : f32 = x_1938;
        u_xlat52 = x_1945;
        let x_1947 : bool = u_xlatb51;
        if (x_1947) {
          let x_1952 : f32 = u_xlat11.x;
          x_1948 = x_1952;
        } else {
          let x_1954 : f32 = u_xlat52;
          x_1948 = x_1954;
        }
        let x_1955 : f32 = x_1948;
        u_xlat51 = x_1955;
        let x_1956 : i32 = u_xlati47;
        let x_1958 : f32 = x_868.x_AdditionalShadowParams[x_1956].w;
        u_xlat52 = trunc(x_1958);
        let x_1960 : f32 = u_xlat51;
        let x_1961 : f32 = u_xlat52;
        u_xlat51 = (x_1960 + x_1961);
        let x_1963 : f32 = u_xlat51;
        u_xlati50 = i32(x_1963);
      }
      let x_1965 : i32 = u_xlati50;
      u_xlati50 = (x_1965 << bitcast<u32>(2i));
      let x_1967 : vec3<f32> = vs_TEXCOORD7;
      let x_1969 : i32 = u_xlati50;
      let x_1972 : i32 = u_xlati50;
      let x_1976 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1969 + 1i) / 4i)][((x_1972 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1967.y, x_1967.y, x_1967.y, x_1967.y) * x_1976);
      let x_1978 : i32 = u_xlati50;
      let x_1980 : i32 = u_xlati50;
      let x_1983 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_1978 / 4i)][(x_1980 % 4i)];
      let x_1984 : vec3<f32> = vs_TEXCOORD7;
      let x_1987 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1983 * vec4<f32>(x_1984.x, x_1984.x, x_1984.x, x_1984.x)) + x_1987);
      let x_1989 : i32 = u_xlati50;
      let x_1992 : i32 = u_xlati50;
      let x_1996 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1989 + 2i) / 4i)][((x_1992 + 2i) % 4i)];
      let x_1997 : vec3<f32> = vs_TEXCOORD7;
      let x_2000 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1996 * vec4<f32>(x_1997.z, x_1997.z, x_1997.z, x_1997.z)) + x_2000);
      let x_2002 : vec4<f32> = u_xlat11;
      let x_2003 : i32 = u_xlati50;
      let x_2006 : i32 = u_xlati50;
      let x_2010 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_2003 + 3i) / 4i)][((x_2006 + 3i) % 4i)];
      u_xlat11 = (x_2002 + x_2010);
      let x_2012 : vec4<f32> = u_xlat11;
      let x_2014 : vec4<f32> = u_xlat11;
      let x_2016 : vec3<f32> = (vec3<f32>(x_2012.x, x_2012.y, x_2012.z) / vec3<f32>(x_2014.w, x_2014.w, x_2014.w));
      let x_2017 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2016.x, x_2016.y, x_2016.z, x_2017.w);
      let x_2020 : vec4<f32> = u_xlat11;
      let x_2021 : vec2<f32> = vec2<f32>(x_2020.x, x_2020.y);
      let x_2023 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
      let x_2031 : vec3<f32> = txVec1;
      let x_2033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2031.xy, x_2031.z);
      u_xlat50 = x_2033;
      let x_2034 : i32 = u_xlati47;
      let x_2036 : f32 = x_868.x_AdditionalShadowParams[x_2034].x;
      u_xlat51 = (1.0f + -(x_2036));
      let x_2039 : f32 = u_xlat50;
      let x_2040 : i32 = u_xlati47;
      let x_2042 : f32 = x_868.x_AdditionalShadowParams[x_2040].x;
      let x_2044 : f32 = u_xlat51;
      u_xlat50 = ((x_2039 * x_2042) + x_2044);
      let x_2047 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_2047);
      let x_2051 : f32 = u_xlat11.z;
      u_xlatb52 = (x_2051 >= 1.0f);
      let x_2053 : bool = u_xlatb51;
      let x_2054 : bool = u_xlatb52;
      u_xlatb51 = (x_2053 | x_2054);
      let x_2056 : bool = u_xlatb51;
      let x_2057 : f32 = u_xlat50;
      u_xlat50 = select(x_2057, 1.0f, x_2056);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_2060 : f32 = u_xlat50;
    u_xlat51 = (-(x_2060) + 1.0f);
    let x_2064 : f32 = u_xlat2.x;
    let x_2065 : f32 = u_xlat51;
    let x_2067 : f32 = u_xlat50;
    u_xlat50 = ((x_2064 * x_2065) + x_2067);
    let x_2070 : i32 = u_xlati47;
    u_xlati51 = (1i << bitcast<u32>((x_2070 & 31i)));
    let x_2073 : i32 = u_xlati51;
    let x_2076 : f32 = x_1300.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_2073) & bitcast<u32>(x_2076)));
    let x_2080 : i32 = u_xlati51;
    if ((x_2080 != 0i)) {
      let x_2084 : i32 = u_xlati47;
      let x_2086 : f32 = x_1300.x_AdditionalLightsLightTypes[x_2084].el;
      u_xlati51 = i32(x_2086);
      let x_2089 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_2089 != 0i));
      let x_2093 : i32 = u_xlati47;
      u_xlati11 = (x_2093 << bitcast<u32>(2i));
      let x_2095 : i32 = u_xlati52;
      if ((x_2095 != 0i)) {
        let x_2100 : vec3<f32> = vs_TEXCOORD7;
        let x_2102 : i32 = u_xlati11;
        let x_2105 : i32 = u_xlati11;
        let x_2109 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2102 + 1i) / 4i)][((x_2105 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_2100.y, x_2100.y, x_2100.y) * vec3<f32>(x_2109.x, x_2109.y, x_2109.w));
        let x_2112 : i32 = u_xlati11;
        let x_2114 : i32 = u_xlati11;
        let x_2117 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[(x_2112 / 4i)][(x_2114 % 4i)];
        let x_2119 : vec3<f32> = vs_TEXCOORD7;
        let x_2122 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2117.x, x_2117.y, x_2117.w) * vec3<f32>(x_2119.x, x_2119.x, x_2119.x)) + x_2122);
        let x_2124 : i32 = u_xlati11;
        let x_2127 : i32 = u_xlati11;
        let x_2131 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2124 + 2i) / 4i)][((x_2127 + 2i) % 4i)];
        let x_2133 : vec3<f32> = vs_TEXCOORD7;
        let x_2136 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2131.x, x_2131.y, x_2131.w) * vec3<f32>(x_2133.z, x_2133.z, x_2133.z)) + x_2136);
        let x_2138 : vec3<f32> = u_xlat25;
        let x_2139 : i32 = u_xlati11;
        let x_2142 : i32 = u_xlati11;
        let x_2146 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2139 + 3i) / 4i)][((x_2142 + 3i) % 4i)];
        u_xlat25 = (x_2138 + vec3<f32>(x_2146.x, x_2146.y, x_2146.w));
        let x_2149 : vec3<f32> = u_xlat25;
        let x_2151 : vec3<f32> = u_xlat25;
        let x_2153 : vec2<f32> = (vec2<f32>(x_2149.x, x_2149.y) / vec2<f32>(x_2151.z, x_2151.z));
        let x_2154 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2153.x, x_2153.y, x_2154.z);
        let x_2156 : vec3<f32> = u_xlat25;
        let x_2159 : vec2<f32> = ((vec2<f32>(x_2156.x, x_2156.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2160 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2159.x, x_2159.y, x_2160.z);
        let x_2162 : vec3<f32> = u_xlat25;
        let x_2166 : vec2<f32> = clamp(vec2<f32>(x_2162.x, x_2162.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2167 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2166.x, x_2166.y, x_2167.z);
        let x_2169 : i32 = u_xlati47;
        let x_2171 : vec4<f32> = x_1300.x_AdditionalLightsCookieAtlasUVRects[x_2169];
        let x_2173 : vec3<f32> = u_xlat25;
        let x_2176 : i32 = u_xlati47;
        let x_2178 : vec4<f32> = x_1300.x_AdditionalLightsCookieAtlasUVRects[x_2176];
        let x_2180 : vec2<f32> = ((vec2<f32>(x_2171.x, x_2171.y) * vec2<f32>(x_2173.x, x_2173.y)) + vec2<f32>(x_2178.z, x_2178.w));
        let x_2181 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2180.x, x_2180.y, x_2181.z);
      } else {
        let x_2184 : i32 = u_xlati51;
        u_xlatb51 = (x_2184 == 1i);
        let x_2186 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2186);
        let x_2188 : i32 = u_xlati51;
        if ((x_2188 != 0i)) {
          let x_2192 : vec3<f32> = vs_TEXCOORD7;
          let x_2194 : i32 = u_xlati11;
          let x_2197 : i32 = u_xlati11;
          let x_2201 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2194 + 1i) / 4i)][((x_2197 + 1i) % 4i)];
          let x_2203 : vec2<f32> = (vec2<f32>(x_2192.y, x_2192.y) * vec2<f32>(x_2201.x, x_2201.y));
          let x_2204 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2203.x, x_2203.y, x_2204.z, x_2204.w);
          let x_2206 : i32 = u_xlati11;
          let x_2208 : i32 = u_xlati11;
          let x_2211 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[(x_2206 / 4i)][(x_2208 % 4i)];
          let x_2213 : vec3<f32> = vs_TEXCOORD7;
          let x_2216 : vec4<f32> = u_xlat12;
          let x_2218 : vec2<f32> = ((vec2<f32>(x_2211.x, x_2211.y) * vec2<f32>(x_2213.x, x_2213.x)) + vec2<f32>(x_2216.x, x_2216.y));
          let x_2219 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2218.x, x_2218.y, x_2219.z, x_2219.w);
          let x_2221 : i32 = u_xlati11;
          let x_2224 : i32 = u_xlati11;
          let x_2228 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2221 + 2i) / 4i)][((x_2224 + 2i) % 4i)];
          let x_2230 : vec3<f32> = vs_TEXCOORD7;
          let x_2233 : vec4<f32> = u_xlat12;
          let x_2235 : vec2<f32> = ((vec2<f32>(x_2228.x, x_2228.y) * vec2<f32>(x_2230.z, x_2230.z)) + vec2<f32>(x_2233.x, x_2233.y));
          let x_2236 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
          let x_2238 : vec4<f32> = u_xlat12;
          let x_2240 : i32 = u_xlati11;
          let x_2243 : i32 = u_xlati11;
          let x_2247 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2240 + 3i) / 4i)][((x_2243 + 3i) % 4i)];
          let x_2249 : vec2<f32> = (vec2<f32>(x_2238.x, x_2238.y) + vec2<f32>(x_2247.x, x_2247.y));
          let x_2250 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2249.x, x_2249.y, x_2250.z, x_2250.w);
          let x_2252 : vec4<f32> = u_xlat12;
          let x_2255 : vec2<f32> = ((vec2<f32>(x_2252.x, x_2252.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2256 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2255.x, x_2255.y, x_2256.z, x_2256.w);
          let x_2258 : vec4<f32> = u_xlat12;
          let x_2260 : vec2<f32> = fract(vec2<f32>(x_2258.x, x_2258.y));
          let x_2261 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2260.x, x_2260.y, x_2261.z, x_2261.w);
          let x_2263 : i32 = u_xlati47;
          let x_2265 : vec4<f32> = x_1300.x_AdditionalLightsCookieAtlasUVRects[x_2263];
          let x_2267 : vec4<f32> = u_xlat12;
          let x_2270 : i32 = u_xlati47;
          let x_2272 : vec4<f32> = x_1300.x_AdditionalLightsCookieAtlasUVRects[x_2270];
          let x_2274 : vec2<f32> = ((vec2<f32>(x_2265.x, x_2265.y) * vec2<f32>(x_2267.x, x_2267.y)) + vec2<f32>(x_2272.z, x_2272.w));
          let x_2275 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2274.x, x_2274.y, x_2275.z);
        } else {
          let x_2278 : vec3<f32> = vs_TEXCOORD7;
          let x_2280 : i32 = u_xlati11;
          let x_2283 : i32 = u_xlati11;
          let x_2287 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2280 + 1i) / 4i)][((x_2283 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2278.y, x_2278.y, x_2278.y, x_2278.y) * x_2287);
          let x_2289 : i32 = u_xlati11;
          let x_2291 : i32 = u_xlati11;
          let x_2294 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[(x_2289 / 4i)][(x_2291 % 4i)];
          let x_2295 : vec3<f32> = vs_TEXCOORD7;
          let x_2298 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2294 * vec4<f32>(x_2295.x, x_2295.x, x_2295.x, x_2295.x)) + x_2298);
          let x_2300 : i32 = u_xlati11;
          let x_2303 : i32 = u_xlati11;
          let x_2307 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2300 + 2i) / 4i)][((x_2303 + 2i) % 4i)];
          let x_2308 : vec3<f32> = vs_TEXCOORD7;
          let x_2311 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2307 * vec4<f32>(x_2308.z, x_2308.z, x_2308.z, x_2308.z)) + x_2311);
          let x_2313 : vec4<f32> = u_xlat12;
          let x_2314 : i32 = u_xlati11;
          let x_2317 : i32 = u_xlati11;
          let x_2321 : vec4<f32> = x_1300.x_AdditionalLightsWorldToLights[((x_2314 + 3i) / 4i)][((x_2317 + 3i) % 4i)];
          u_xlat12 = (x_2313 + x_2321);
          let x_2323 : vec4<f32> = u_xlat12;
          let x_2325 : vec4<f32> = u_xlat12;
          let x_2327 : vec3<f32> = (vec3<f32>(x_2323.x, x_2323.y, x_2323.z) / vec3<f32>(x_2325.w, x_2325.w, x_2325.w));
          let x_2328 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
          let x_2330 : vec4<f32> = u_xlat12;
          let x_2332 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2330.x, x_2330.y, x_2330.z), vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
          let x_2335 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2335);
          let x_2337 : f32 = u_xlat51;
          let x_2339 : vec4<f32> = u_xlat12;
          let x_2341 : vec3<f32> = (vec3<f32>(x_2337, x_2337, x_2337) * vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
          let x_2342 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
          let x_2344 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2344.x, x_2344.y, x_2344.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2349 : f32 = u_xlat51;
          u_xlat51 = max(x_2349, 0.00000099999999747524f);
          let x_2352 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2352);
          let x_2354 : f32 = u_xlat51;
          let x_2356 : vec4<f32> = u_xlat12;
          let x_2358 : vec3<f32> = (vec3<f32>(x_2354, x_2354, x_2354) * vec3<f32>(x_2356.z, x_2356.x, x_2356.y));
          let x_2359 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
          let x_2362 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2362);
          let x_2366 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2366, 0.0f, 1.0f);
          let x_2369 : vec4<f32> = u_xlat13;
          let x_2371 : vec4<bool> = (vec4<f32>(x_2369.y, x_2369.y, x_2369.y, x_2369.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2372 : vec2<bool> = vec2<bool>(x_2371.x, x_2371.w);
          let x_2373 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2372.x, x_2373.y, x_2373.z, x_2372.y);
          let x_2376 : bool = u_xlatb11.x;
          if (x_2376) {
            let x_2381 : f32 = u_xlat13.x;
            x_2377 = x_2381;
          } else {
            let x_2384 : f32 = u_xlat13.x;
            x_2377 = -(x_2384);
          }
          let x_2386 : f32 = x_2377;
          u_xlat11.x = x_2386;
          let x_2389 : bool = u_xlatb11.w;
          if (x_2389) {
            let x_2394 : f32 = u_xlat13.x;
            x_2390 = x_2394;
          } else {
            let x_2397 : f32 = u_xlat13.x;
            x_2390 = -(x_2397);
          }
          let x_2399 : f32 = x_2390;
          u_xlat11.w = x_2399;
          let x_2401 : vec4<f32> = u_xlat12;
          let x_2403 : f32 = u_xlat51;
          let x_2406 : vec4<f32> = u_xlat11;
          let x_2408 : vec2<f32> = ((vec2<f32>(x_2401.x, x_2401.y) * vec2<f32>(x_2403, x_2403)) + vec2<f32>(x_2406.x, x_2406.w));
          let x_2409 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2408.x, x_2409.y, x_2409.z, x_2408.y);
          let x_2411 : vec4<f32> = u_xlat11;
          let x_2414 : vec2<f32> = ((vec2<f32>(x_2411.x, x_2411.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2415 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2414.x, x_2415.y, x_2415.z, x_2414.y);
          let x_2417 : vec4<f32> = u_xlat11;
          let x_2421 : vec2<f32> = clamp(vec2<f32>(x_2417.x, x_2417.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2422 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2421.x, x_2422.y, x_2422.z, x_2421.y);
          let x_2424 : i32 = u_xlati47;
          let x_2426 : vec4<f32> = x_1300.x_AdditionalLightsCookieAtlasUVRects[x_2424];
          let x_2428 : vec4<f32> = u_xlat11;
          let x_2431 : i32 = u_xlati47;
          let x_2433 : vec4<f32> = x_1300.x_AdditionalLightsCookieAtlasUVRects[x_2431];
          let x_2435 : vec2<f32> = ((vec2<f32>(x_2426.x, x_2426.y) * vec2<f32>(x_2428.x, x_2428.w)) + vec2<f32>(x_2433.z, x_2433.w));
          let x_2436 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2435.x, x_2435.y, x_2436.z);
        }
      }
      let x_2443 : vec3<f32> = u_xlat25;
      let x_2445 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2443.x, x_2443.y), 0.0f);
      u_xlat11 = x_2445;
      let x_2447 : bool = u_xlatb16.y;
      if (x_2447) {
        let x_2452 : f32 = u_xlat11.w;
        x_2448 = x_2452;
      } else {
        let x_2455 : f32 = u_xlat11.x;
        x_2448 = x_2455;
      }
      let x_2456 : f32 = x_2448;
      u_xlat51 = x_2456;
      let x_2458 : bool = u_xlatb16.x;
      if (x_2458) {
        let x_2462 : vec4<f32> = u_xlat11;
        x_2459 = vec3<f32>(x_2462.x, x_2462.y, x_2462.z);
      } else {
        let x_2465 : f32 = u_xlat51;
        x_2459 = vec3<f32>(x_2465, x_2465, x_2465);
      }
      let x_2467 : vec3<f32> = x_2459;
      let x_2468 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2468.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2474 : vec4<f32> = u_xlat11;
    let x_2476 : i32 = u_xlati47;
    let x_2478 : vec4<f32> = x_1802.x_AdditionalLightsColor[x_2476];
    let x_2480 : vec3<f32> = (vec3<f32>(x_2474.x, x_2474.y, x_2474.z) * vec3<f32>(x_2478.x, x_2478.y, x_2478.z));
    let x_2481 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
    let x_2483 : f32 = u_xlat48;
    let x_2484 : f32 = u_xlat50;
    u_xlat47 = (x_2483 * x_2484);
    let x_2486 : vec4<f32> = u_xlat1;
    let x_2488 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2486.x, x_2486.y, x_2486.z), vec3<f32>(x_2488.x, x_2488.y, x_2488.z));
    let x_2491 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2491, 0.0f, 1.0f);
    let x_2493 : f32 = u_xlat47;
    let x_2494 : f32 = u_xlat48;
    u_xlat47 = (x_2493 * x_2494);
    let x_2496 : f32 = u_xlat47;
    let x_2498 : vec4<f32> = u_xlat11;
    let x_2500 : vec3<f32> = (vec3<f32>(x_2496, x_2496, x_2496) * vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
    let x_2501 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
    let x_2503 : vec4<f32> = u_xlat9;
    let x_2505 : f32 = u_xlat49;
    let x_2508 : vec4<f32> = u_xlat7;
    let x_2510 : vec3<f32> = ((vec3<f32>(x_2503.x, x_2503.y, x_2503.z) * vec3<f32>(x_2505, x_2505, x_2505)) + vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
    let x_2511 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
    let x_2513 : vec4<f32> = u_xlat9;
    let x_2515 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2513.x, x_2513.y, x_2513.z), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
    let x_2518 : f32 = u_xlat47;
    u_xlat47 = max(x_2518, 1.17549435e-38f);
    let x_2520 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2520);
    let x_2522 : f32 = u_xlat47;
    let x_2524 : vec4<f32> = u_xlat9;
    let x_2526 : vec3<f32> = (vec3<f32>(x_2522, x_2522, x_2522) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
    let x_2527 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
    let x_2529 : vec4<f32> = u_xlat1;
    let x_2531 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2529.x, x_2529.y, x_2529.z), vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
    let x_2534 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2534, 0.0f, 1.0f);
    let x_2536 : vec4<f32> = u_xlat10;
    let x_2538 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2536.x, x_2536.y, x_2536.z), vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
    let x_2541 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2541, 0.0f, 1.0f);
    let x_2543 : f32 = u_xlat47;
    let x_2544 : f32 = u_xlat47;
    u_xlat47 = (x_2543 * x_2544);
    let x_2546 : f32 = u_xlat47;
    let x_2548 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2546 * x_2548) + 1.00001001358032226562f);
    let x_2551 : f32 = u_xlat48;
    let x_2552 : f32 = u_xlat48;
    u_xlat48 = (x_2551 * x_2552);
    let x_2554 : f32 = u_xlat47;
    let x_2555 : f32 = u_xlat47;
    u_xlat47 = (x_2554 * x_2555);
    let x_2557 : f32 = u_xlat48;
    u_xlat48 = max(x_2557, 0.10000000149011611938f);
    let x_2559 : f32 = u_xlat47;
    let x_2560 : f32 = u_xlat48;
    u_xlat47 = (x_2559 * x_2560);
    let x_2562 : f32 = u_xlat46;
    let x_2563 : f32 = u_xlat47;
    u_xlat47 = (x_2562 * x_2563);
    let x_2565 : f32 = u_xlat44;
    let x_2566 : f32 = u_xlat47;
    u_xlat47 = (x_2565 / x_2566);
    let x_2568 : vec4<f32> = u_xlat5;
    let x_2570 : f32 = u_xlat47;
    let x_2573 : vec4<f32> = u_xlat4;
    let x_2575 : vec3<f32> = ((vec3<f32>(x_2568.x, x_2568.y, x_2568.z) * vec3<f32>(x_2570, x_2570, x_2570)) + vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
    let x_2576 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
    let x_2578 : vec4<f32> = u_xlat9;
    let x_2580 : vec4<f32> = u_xlat11;
    let x_2583 : vec4<f32> = u_xlat8;
    let x_2585 : vec3<f32> = ((vec3<f32>(x_2578.x, x_2578.y, x_2578.z) * vec3<f32>(x_2580.x, x_2580.y, x_2580.z)) + vec3<f32>(x_2583.x, x_2583.y, x_2583.z));
    let x_2586 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);

    continuing {
      let x_2588 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2588 + bitcast<u32>(1i));
    }
  }
  let x_2590 : vec4<f32> = u_xlat3;
  let x_2592 : f32 = u_xlat14;
  let x_2595 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2590.x, x_2590.y, x_2590.z) * vec3<f32>(x_2592, x_2592, x_2592)) + vec3<f32>(x_2595.x, x_2595.y, x_2595.z));
  let x_2598 : vec4<f32> = u_xlat8;
  let x_2600 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2598.x, x_2598.y, x_2598.z) + x_2600);
  let x_2602 : f32 = u_xlat42;
  let x_2604 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2602, x_2602, x_2602) * x_2604);
  let x_2606 : f32 = u_xlat43;
  let x_2607 : f32 = u_xlat43;
  u_xlat42 = (x_2606 * -(x_2607));
  let x_2610 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2610);
  let x_2614 : vec3<f32> = u_xlat0;
  let x_2615 : f32 = u_xlat42;
  let x_2617 : vec3<f32> = (x_2614 * vec3<f32>(x_2615, x_2615, x_2615));
  let x_2618 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


