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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(10) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_Splat0 : sampler;

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

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_648 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_812 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : bool;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat21 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1224 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_585 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1366 : f32;
  var x_1377 : f32;
  var txVec1 : vec3<f32>;
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
  let x_392 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_392;
  let x_395 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_395;
  let x_398 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_398;
  let x_401 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_401;
  let x_404 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_404;
  let x_407 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_407;
  let x_410 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_410;
  let x_413 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_413;
  let x_415 : vec4<f32> = u_xlat6;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_415 + x_416);
  let x_419 : f32 = u_xlat0.z;
  u_xlat7.x = x_419;
  let x_422 : f32 = u_xlat1.z;
  u_xlat7.y = x_422;
  let x_425 : f32 = u_xlat2.z;
  u_xlat7.z = x_425;
  let x_428 : f32 = u_xlat3.y;
  u_xlat7.w = x_428;
  let x_430 : vec4<f32> = u_xlat9;
  let x_433 : f32 = x_59.x_Smoothness0;
  let x_435 : f32 = x_59.x_Smoothness1;
  let x_437 : f32 = x_59.x_Smoothness2;
  let x_439 : f32 = x_59.x_Smoothness3;
  let x_442 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_430) * vec4<f32>(x_433, x_435, x_437, x_439)) + x_442);
  let x_446 : f32 = x_59.x_LayerHasMask0;
  let x_449 : f32 = x_59.x_LayerHasMask1;
  let x_452 : f32 = x_59.x_LayerHasMask2;
  let x_455 : f32 = x_59.x_LayerHasMask3;
  let x_457 : vec4<f32> = u_xlat7;
  let x_459 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_446, x_449, x_452, x_455) * x_457) + x_459);
  let x_462 : vec4<f32> = u_xlat4;
  let x_463 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_462, x_463);
  let x_466 : f32 = u_xlat0.x;
  u_xlat7.x = x_466;
  let x_469 : f32 = u_xlat1.x;
  u_xlat7.y = x_469;
  let x_472 : f32 = u_xlat2.x;
  u_xlat7.z = x_472;
  let x_475 : f32 = u_xlat3.x;
  u_xlat7.w = x_475;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_59.x_Metallic0;
  let x_483 : f32 = x_59.x_Metallic1;
  let x_486 : f32 = x_59.x_Metallic2;
  let x_489 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_477 + -(vec4<f32>(x_480, x_483, x_486, x_489)));
  let x_494 : f32 = x_59.x_LayerHasMask0;
  let x_496 : f32 = x_59.x_LayerHasMask1;
  let x_498 : f32 = x_59.x_LayerHasMask2;
  let x_500 : f32 = x_59.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : f32 = x_59.x_Metallic0;
  let x_507 : f32 = x_59.x_Metallic1;
  let x_509 : f32 = x_59.x_Metallic2;
  let x_511 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + vec4<f32>(x_505, x_507, x_509, x_511));
  let x_514 : vec4<f32> = u_xlat4;
  let x_515 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_514, x_515);
  let x_519 : f32 = u_xlat0.y;
  u_xlat3.x = x_519;
  let x_522 : f32 = u_xlat1.y;
  u_xlat3.y = x_522;
  let x_525 : f32 = u_xlat2.y;
  u_xlat3.z = x_525;
  let x_527 : vec4<f32> = u_xlat6;
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_527) + x_529);
  let x_532 : f32 = x_59.x_LayerHasMask0;
  let x_534 : f32 = x_59.x_LayerHasMask1;
  let x_536 : f32 = x_59.x_LayerHasMask2;
  let x_538 : f32 = x_59.x_LayerHasMask3;
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_532, x_534, x_536, x_538) * x_540) + x_542);
  let x_545 : vec4<f32> = u_xlat4;
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_545, x_546);
  let x_550 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_550 == 0.0f);
  let x_555 : vec3<f32> = vs_TEXCOORD7;
  let x_559 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_555) + x_559);
  let x_561 : vec3<f32> = u_xlat15;
  let x_562 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_561, x_562);
  let x_566 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_566);
  let x_569 : vec3<f32> = u_xlat15;
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_569 * vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_574;
  let x_577 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_577;
  let x_581 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : vec3<f32> = u_xlat15;
    x_585 = x_588;
  } else {
    let x_590 : vec4<f32> = u_xlat2;
    x_585 = vec3<f32>(x_590.x, x_590.y, x_590.z);
  }
  let x_592 : vec3<f32> = x_585;
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  let x_597 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_596, x_597);
  let x_599 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_599);
  let x_601 : f32 = u_xlat43;
  let x_603 : vec3<f32> = vs_TEXCOORD3;
  let x_604 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * x_603);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_609 : f32 = vs_TEXCOORD7.y;
  let x_611 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat43 = (x_609 * x_611);
  let x_614 : f32 = x_29.unity_MatrixV[0i].z;
  let x_616 : f32 = vs_TEXCOORD7.x;
  let x_618 : f32 = u_xlat43;
  u_xlat43 = ((x_614 * x_616) + x_618);
  let x_621 : f32 = x_29.unity_MatrixV[2i].z;
  let x_623 : f32 = vs_TEXCOORD7.z;
  let x_625 : f32 = u_xlat43;
  u_xlat43 = ((x_621 * x_623) + x_625);
  let x_627 : f32 = u_xlat43;
  let x_630 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat43 = (x_627 + x_630);
  let x_632 : f32 = u_xlat43;
  let x_635 : f32 = x_29.x_ProjectionParams.y;
  u_xlat43 = (-(x_632) + -(x_635));
  let x_638 : f32 = u_xlat43;
  u_xlat43 = max(x_638, 0.0f);
  let x_640 : f32 = u_xlat43;
  let x_642 : f32 = x_29.unity_FogParams.x;
  u_xlat43 = (x_640 * x_642);
  u_xlat2.w = 1.0f;
  let x_650 : vec4<f32> = x_648.unity_SHAr;
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_650, x_651);
  let x_655 : vec4<f32> = x_648.unity_SHAg;
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_655, x_656);
  let x_660 : vec4<f32> = x_648.unity_SHAb;
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_660, x_661);
  let x_664 : vec4<f32> = u_xlat2;
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_664.y, x_664.z, x_664.z, x_664.x) * vec4<f32>(x_666.x, x_666.y, x_666.z, x_666.z));
  let x_670 : vec4<f32> = x_648.unity_SHBr;
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_670, x_671);
  let x_675 : vec4<f32> = x_648.unity_SHBg;
  let x_676 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_675, x_676);
  let x_680 : vec4<f32> = x_648.unity_SHBb;
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_680, x_681);
  let x_686 : f32 = u_xlat2.y;
  let x_688 : f32 = u_xlat2.y;
  u_xlat44 = (x_686 * x_688);
  let x_691 : f32 = u_xlat2.x;
  let x_693 : f32 = u_xlat2.x;
  let x_695 : f32 = u_xlat44;
  u_xlat44 = ((x_691 * x_693) + -(x_695));
  let x_700 : vec4<f32> = x_648.unity_SHC;
  let x_702 : f32 = u_xlat44;
  let x_705 : vec4<f32> = u_xlat6;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_702, x_702, x_702)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat3;
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat3;
  let x_720 : vec3<f32> = max(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_724) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_730 : f32 = u_xlat28;
  let x_731 : f32 = u_xlat44;
  u_xlat45 = (x_730 + -(x_731));
  let x_734 : f32 = u_xlat44;
  let x_736 : vec4<f32> = u_xlat5;
  let x_738 : vec3<f32> = (vec3<f32>(x_734, x_734, x_734) * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat5;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_746 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec3<f32> = u_xlat0;
  let x_750 : vec4<f32> = u_xlat5;
  let x_755 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.x, x_748.x) * vec3<f32>(x_750.x, x_750.y, x_750.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_756 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : f32 = u_xlat28;
  u_xlat0.x = (-(x_758) + 1.0f);
  let x_763 : f32 = u_xlat0.x;
  let x_765 : f32 = u_xlat0.x;
  u_xlat28 = (x_763 * x_765);
  let x_767 : f32 = u_xlat28;
  u_xlat28 = max(x_767, 0.0078125f);
  let x_770 : f32 = u_xlat28;
  let x_771 : f32 = u_xlat28;
  u_xlat44 = (x_770 * x_771);
  let x_773 : f32 = u_xlat45;
  u_xlat45 = (x_773 + 1.0f);
  let x_775 : f32 = u_xlat45;
  u_xlat45 = clamp(x_775, 0.0f, 1.0f);
  let x_778 : f32 = u_xlat28;
  u_xlat46 = ((x_778 * 4.0f) + 2.0f);
  let x_782 : f32 = u_xlat14;
  u_xlat14 = min(x_782, 1.0f);
  let x_786 : vec4<f32> = vs_TEXCOORD8;
  let x_787 : vec2<f32> = vec2<f32>(x_786.x, x_786.y);
  let x_789 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_787.x, x_787.y, x_789);
  let x_802 : vec3<f32> = txVec0;
  let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
  u_xlat47 = x_804;
  let x_814 : f32 = x_812.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_814) + 1.0f);
  let x_818 : f32 = u_xlat47;
  let x_820 : f32 = x_812.x_MainLightShadowParams.x;
  let x_823 : f32 = u_xlat6.x;
  u_xlat47 = ((x_818 * x_820) + x_823);
  let x_827 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_827);
  let x_831 : f32 = vs_TEXCOORD8.z;
  u_xlatb20 = (x_831 >= 1.0f);
  let x_833 : bool = u_xlatb20;
  let x_834 : bool = u_xlatb6;
  u_xlatb6 = (x_833 | x_834);
  let x_836 : bool = u_xlatb6;
  let x_837 : f32 = u_xlat47;
  u_xlat47 = select(x_837, 1.0f, x_836);
  let x_839 : vec3<f32> = vs_TEXCOORD7;
  let x_841 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_843 : vec3<f32> = (x_839 + -(x_841));
  let x_844 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat6;
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_854 : f32 = u_xlat6.x;
  let x_856 : f32 = x_812.x_MainLightShadowParams.z;
  let x_859 : f32 = x_812.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_854 * x_856) + x_859);
  let x_863 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_863, 0.0f, 1.0f);
  let x_867 : f32 = u_xlat47;
  u_xlat34 = (-(x_867) + 1.0f);
  let x_871 : f32 = u_xlat20.x;
  let x_872 : f32 = u_xlat34;
  let x_874 : f32 = u_xlat47;
  u_xlat47 = ((x_871 * x_872) + x_874);
  let x_876 : vec4<f32> = u_xlat1;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat20.x = dot(-(vec3<f32>(x_876.x, x_876.y, x_876.z)), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_884 : f32 = u_xlat20.x;
  let x_886 : f32 = u_xlat20.x;
  u_xlat20.x = (x_884 + x_886);
  let x_889 : vec4<f32> = u_xlat2;
  let x_891 : vec3<f32> = u_xlat20;
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat20 = ((vec3<f32>(x_889.x, x_889.y, x_889.z) * -(vec3<f32>(x_891.x, x_891.x, x_891.x))) + -(vec3<f32>(x_895.x, x_895.y, x_895.z)));
  let x_899 : vec4<f32> = u_xlat2;
  let x_901 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec3<f32>(x_899.x, x_899.y, x_899.z), vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_906 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_906, 0.0f, 1.0f);
  let x_910 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_910) + 1.0f);
  let x_915 : f32 = u_xlat7.x;
  let x_917 : f32 = u_xlat7.x;
  u_xlat7.x = (x_915 * x_917);
  let x_921 : f32 = u_xlat7.x;
  let x_923 : f32 = u_xlat7.x;
  u_xlat7.x = (x_921 * x_923);
  let x_928 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_928) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_936 : f32 = u_xlat0.x;
  let x_938 : f32 = u_xlat21.x;
  u_xlat0.x = (x_936 * x_938);
  let x_942 : f32 = u_xlat0.x;
  u_xlat0.x = (x_942 * 6.0f);
  let x_954 : vec3<f32> = u_xlat20;
  let x_956 : f32 = u_xlat0.x;
  let x_957 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_954, x_956);
  u_xlat8 = x_957;
  let x_959 : f32 = u_xlat8.w;
  u_xlat0.x = (x_959 + -1.0f);
  let x_963 : f32 = x_648.unity_SpecCube0_HDR.w;
  let x_965 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_963 * x_965) + 1.0f);
  let x_970 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_970, 0.0f);
  let x_974 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_974);
  let x_978 : f32 = u_xlat0.x;
  let x_980 : f32 = x_648.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_978 * x_980);
  let x_984 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_984);
  let x_988 : f32 = u_xlat0.x;
  let x_990 : f32 = x_648.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_988 * x_990);
  let x_993 : vec4<f32> = u_xlat8;
  let x_995 : vec3<f32> = u_xlat0;
  u_xlat20 = (vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_995.x, x_995.x, x_995.x));
  let x_998 : f32 = u_xlat28;
  let x_1000 : f32 = u_xlat28;
  let x_1004 : vec2<f32> = ((vec2<f32>(x_998, x_998) * vec2<f32>(x_1000, x_1000)) + vec2<f32>(-1.0f, 1.0f));
  let x_1005 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1004.x, x_1005.y, x_1004.y);
  let x_1008 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1008);
  let x_1010 : vec4<f32> = u_xlat5;
  let x_1013 : f32 = u_xlat45;
  u_xlat21 = (-(vec3<f32>(x_1010.x, x_1010.y, x_1010.z)) + vec3<f32>(x_1013, x_1013, x_1013));
  let x_1016 : vec4<f32> = u_xlat7;
  let x_1018 : vec3<f32> = u_xlat21;
  let x_1020 : vec4<f32> = u_xlat5;
  let x_1022 : vec3<f32> = ((vec3<f32>(x_1016.x, x_1016.x, x_1016.x) * x_1018) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : f32 = u_xlat28;
  let x_1027 : vec4<f32> = u_xlat7;
  let x_1029 : vec3<f32> = (vec3<f32>(x_1025, x_1025, x_1025) * vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec3<f32> = u_xlat20;
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1032 * vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : vec4<f32> = u_xlat3;
  let x_1038 : vec4<f32> = u_xlat4;
  let x_1041 : vec3<f32> = u_xlat20;
  let x_1042 : vec3<f32> = ((vec3<f32>(x_1036.x, x_1036.y, x_1036.z) * vec3<f32>(x_1038.x, x_1038.y, x_1038.z)) + x_1041);
  let x_1043 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : f32 = u_xlat47;
  let x_1047 : f32 = x_648.unity_LightData.z;
  u_xlat28 = (x_1045 * x_1047);
  let x_1049 : vec4<f32> = u_xlat2;
  let x_1052 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1049.x, x_1049.y, x_1049.z), vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1055, 0.0f, 1.0f);
  let x_1057 : f32 = u_xlat28;
  let x_1058 : f32 = u_xlat45;
  u_xlat28 = (x_1057 * x_1058);
  let x_1060 : f32 = u_xlat28;
  let x_1063 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat20 = (vec3<f32>(x_1060, x_1060, x_1060) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat1;
  let x_1069 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1071 : vec3<f32> = (vec3<f32>(x_1066.x, x_1066.y, x_1066.z) + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec4<f32> = u_xlat7;
  let x_1076 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : f32 = u_xlat28;
  u_xlat28 = max(x_1079, 1.17549435e-38f);
  let x_1082 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1082);
  let x_1084 : f32 = u_xlat28;
  let x_1086 : vec4<f32> = u_xlat7;
  let x_1088 : vec3<f32> = (vec3<f32>(x_1084, x_1084, x_1084) * vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1091 : vec4<f32> = u_xlat2;
  let x_1093 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1096, 0.0f, 1.0f);
  let x_1099 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1101 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1099.x, x_1099.y, x_1099.z), vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1104 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1104, 0.0f, 1.0f);
  let x_1106 : f32 = u_xlat28;
  let x_1107 : f32 = u_xlat28;
  u_xlat28 = (x_1106 * x_1107);
  let x_1109 : f32 = u_xlat28;
  let x_1111 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1109 * x_1111) + 1.00001001358032226562f);
  let x_1115 : f32 = u_xlat45;
  let x_1116 : f32 = u_xlat45;
  u_xlat45 = (x_1115 * x_1116);
  let x_1118 : f32 = u_xlat28;
  let x_1119 : f32 = u_xlat28;
  u_xlat28 = (x_1118 * x_1119);
  let x_1121 : f32 = u_xlat45;
  u_xlat45 = max(x_1121, 0.10000000149011611938f);
  let x_1124 : f32 = u_xlat28;
  let x_1125 : f32 = u_xlat45;
  u_xlat28 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat46;
  let x_1128 : f32 = u_xlat28;
  u_xlat28 = (x_1127 * x_1128);
  let x_1130 : f32 = u_xlat44;
  let x_1131 : f32 = u_xlat28;
  u_xlat28 = (x_1130 / x_1131);
  let x_1133 : vec4<f32> = u_xlat5;
  let x_1135 : f32 = u_xlat28;
  let x_1138 : vec4<f32> = u_xlat4;
  let x_1140 : vec3<f32> = ((vec3<f32>(x_1133.x, x_1133.y, x_1133.z) * vec3<f32>(x_1135, x_1135, x_1135)) + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : vec3<f32> = u_xlat20;
  let x_1144 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1143 * vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1148 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1150 : f32 = x_648.unity_LightData.y;
  u_xlat28 = min(x_1148, x_1150);
  let x_1154 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1154));
  let x_1158 : f32 = u_xlat6.x;
  let x_1160 : f32 = x_812.x_AdditionalShadowFadeParams.x;
  let x_1163 : f32 = x_812.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1158 * x_1160) + x_1163);
  let x_1165 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1165, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1177 : u32 = u_xlatu_loop_1;
    let x_1178 : u32 = u_xlatu28;
    if ((x_1177 < x_1178)) {
    } else {
      break;
    }
    let x_1181 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1181 >> 2u);
    let x_1185 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1185 & 3u));
    let x_1188 : u32 = u_xlatu6;
    let x_1191 : vec4<f32> = x_648.unity_LightIndices[bitcast<i32>(x_1188)];
    let x_1201 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1206 : vec4<u32> = indexable[x_1201];
    u_xlat6.x = dot(x_1191, bitcast<vec4<f32>>(x_1206));
    let x_1212 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1212);
    let x_1214 : vec3<f32> = vs_TEXCOORD7;
    let x_1225 : i32 = u_xlati6;
    let x_1227 : vec4<f32> = x_1224.x_AdditionalLightsPosition[x_1225];
    let x_1230 : i32 = u_xlati6;
    let x_1232 : vec4<f32> = x_1224.x_AdditionalLightsPosition[x_1230];
    let x_1234 : vec3<f32> = ((-(x_1214) * vec3<f32>(x_1227.w, x_1227.w, x_1227.w)) + vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
    let x_1235 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
    let x_1238 : vec4<f32> = u_xlat8;
    let x_1240 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1238.x, x_1238.y, x_1238.z), vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
    let x_1243 : f32 = u_xlat49;
    u_xlat49 = max(x_1243, 0.00006103515625f);
    let x_1246 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1246);
    let x_1248 : f32 = u_xlat50;
    let x_1250 : vec4<f32> = u_xlat8;
    let x_1252 : vec3<f32> = (vec3<f32>(x_1248, x_1248, x_1248) * vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
    let x_1253 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
    let x_1256 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1256);
    let x_1258 : f32 = u_xlat49;
    let x_1259 : i32 = u_xlati6;
    let x_1261 : f32 = x_1224.x_AdditionalLightsAttenuation[x_1259].x;
    u_xlat49 = (x_1258 * x_1261);
    let x_1263 : f32 = u_xlat49;
    let x_1265 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1263) * x_1265) + 1.0f);
    let x_1268 : f32 = u_xlat49;
    u_xlat49 = max(x_1268, 0.0f);
    let x_1270 : f32 = u_xlat49;
    let x_1271 : f32 = u_xlat49;
    u_xlat49 = (x_1270 * x_1271);
    let x_1273 : f32 = u_xlat49;
    let x_1274 : f32 = u_xlat51;
    u_xlat49 = (x_1273 * x_1274);
    let x_1276 : i32 = u_xlati6;
    let x_1278 : vec4<f32> = x_1224.x_AdditionalLightsSpotDir[x_1276];
    let x_1280 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1278.x, x_1278.y, x_1278.z), vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
    let x_1283 : f32 = u_xlat51;
    let x_1284 : i32 = u_xlati6;
    let x_1286 : f32 = x_1224.x_AdditionalLightsAttenuation[x_1284].z;
    let x_1288 : i32 = u_xlati6;
    let x_1290 : f32 = x_1224.x_AdditionalLightsAttenuation[x_1288].w;
    u_xlat51 = ((x_1283 * x_1286) + x_1290);
    let x_1292 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1292, 0.0f, 1.0f);
    let x_1294 : f32 = u_xlat51;
    let x_1295 : f32 = u_xlat51;
    u_xlat51 = (x_1294 * x_1295);
    let x_1297 : f32 = u_xlat49;
    let x_1298 : f32 = u_xlat51;
    u_xlat49 = (x_1297 * x_1298);
    let x_1301 : i32 = u_xlati6;
    let x_1303 : f32 = x_812.x_AdditionalShadowParams[x_1301].w;
    u_xlati51 = i32(x_1303);
    let x_1308 : i32 = u_xlati51;
    u_xlatb10.x = (x_1308 >= 0i);
    let x_1312 : bool = u_xlatb10.x;
    if (x_1312) {
      let x_1316 : i32 = u_xlati6;
      let x_1318 : f32 = x_812.x_AdditionalShadowParams[x_1316].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1318, x_1318, x_1318, x_1318))));
      let x_1324 : bool = u_xlatb10.x;
      if (x_1324) {
        let x_1327 : vec4<f32> = u_xlat9;
        let x_1330 : vec4<f32> = u_xlat9;
        let x_1333 : vec4<bool> = (abs(vec4<f32>(x_1327.z, x_1327.z, x_1327.y, x_1327.z)) >= abs(vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.x)));
        u_xlatb10 = vec3<bool>(x_1333.x, x_1333.y, x_1333.z);
        let x_1336 : bool = u_xlatb10.y;
        let x_1338 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1336 & x_1338);
        let x_1342 : vec4<f32> = u_xlat9;
        let x_1345 : vec4<bool> = (-(vec4<f32>(x_1342.z, x_1342.y, x_1342.x, x_1342.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1345.x, x_1345.y, x_1345.z);
        let x_1349 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1349);
        let x_1354 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1354);
        let x_1359 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1359);
        let x_1364 : bool = u_xlatb10.z;
        if (x_1364) {
          let x_1370 : f32 = u_xlat24.z;
          x_1366 = x_1370;
        } else {
          let x_1373 : f32 = u_xlat11.x;
          x_1366 = x_1373;
        }
        let x_1374 : f32 = x_1366;
        u_xlat38 = x_1374;
        let x_1376 : bool = u_xlatb10.x;
        if (x_1376) {
          let x_1381 : f32 = u_xlat24.x;
          x_1377 = x_1381;
        } else {
          let x_1383 : f32 = u_xlat38;
          x_1377 = x_1383;
        }
        let x_1384 : f32 = x_1377;
        u_xlat10.x = x_1384;
        let x_1386 : i32 = u_xlati6;
        let x_1388 : f32 = x_812.x_AdditionalShadowParams[x_1386].w;
        u_xlat24.x = trunc(x_1388);
        let x_1392 : f32 = u_xlat10.x;
        let x_1394 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1392 + x_1394);
        let x_1398 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1398);
      }
      let x_1400 : i32 = u_xlati51;
      u_xlati51 = (x_1400 << bitcast<u32>(2i));
      let x_1402 : vec3<f32> = vs_TEXCOORD7;
      let x_1404 : i32 = u_xlati51;
      let x_1407 : i32 = u_xlati51;
      let x_1411 : vec4<f32> = x_812.x_AdditionalLightsWorldToShadow[((x_1404 + 1i) / 4i)][((x_1407 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1402.y, x_1402.y, x_1402.y, x_1402.y) * x_1411);
      let x_1413 : i32 = u_xlati51;
      let x_1415 : i32 = u_xlati51;
      let x_1418 : vec4<f32> = x_812.x_AdditionalLightsWorldToShadow[(x_1413 / 4i)][(x_1415 % 4i)];
      let x_1419 : vec3<f32> = vs_TEXCOORD7;
      let x_1422 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1418 * vec4<f32>(x_1419.x, x_1419.x, x_1419.x, x_1419.x)) + x_1422);
      let x_1424 : i32 = u_xlati51;
      let x_1427 : i32 = u_xlati51;
      let x_1431 : vec4<f32> = x_812.x_AdditionalLightsWorldToShadow[((x_1424 + 2i) / 4i)][((x_1427 + 2i) % 4i)];
      let x_1432 : vec3<f32> = vs_TEXCOORD7;
      let x_1435 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1431 * vec4<f32>(x_1432.z, x_1432.z, x_1432.z, x_1432.z)) + x_1435);
      let x_1437 : vec4<f32> = u_xlat10;
      let x_1438 : i32 = u_xlati51;
      let x_1441 : i32 = u_xlati51;
      let x_1445 : vec4<f32> = x_812.x_AdditionalLightsWorldToShadow[((x_1438 + 3i) / 4i)][((x_1441 + 3i) % 4i)];
      u_xlat10 = (x_1437 + x_1445);
      let x_1447 : vec4<f32> = u_xlat10;
      let x_1449 : vec4<f32> = u_xlat10;
      let x_1451 : vec3<f32> = (vec3<f32>(x_1447.x, x_1447.y, x_1447.z) / vec3<f32>(x_1449.w, x_1449.w, x_1449.w));
      let x_1452 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
      let x_1455 : vec4<f32> = u_xlat10;
      let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
      let x_1458 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
      let x_1466 : vec3<f32> = txVec1;
      let x_1468 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
      u_xlat51 = x_1468;
      let x_1469 : i32 = u_xlati6;
      let x_1471 : f32 = x_812.x_AdditionalShadowParams[x_1469].x;
      u_xlat10.x = (1.0f + -(x_1471));
      let x_1475 : f32 = u_xlat51;
      let x_1476 : i32 = u_xlati6;
      let x_1478 : f32 = x_812.x_AdditionalShadowParams[x_1476].x;
      let x_1481 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1475 * x_1478) + x_1481);
      let x_1484 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1484);
      let x_1489 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1489 >= 1.0f);
      let x_1491 : bool = u_xlatb24;
      let x_1493 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1491 | x_1493);
      let x_1497 : bool = u_xlatb10.x;
      let x_1498 : f32 = u_xlat51;
      u_xlat51 = select(x_1498, 1.0f, x_1497);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1501 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1501) + 1.0f);
    let x_1505 : f32 = u_xlat45;
    let x_1507 : f32 = u_xlat10.x;
    let x_1509 : f32 = u_xlat51;
    u_xlat51 = ((x_1505 * x_1507) + x_1509);
    let x_1511 : f32 = u_xlat49;
    let x_1512 : f32 = u_xlat51;
    u_xlat49 = (x_1511 * x_1512);
    let x_1514 : vec4<f32> = u_xlat2;
    let x_1516 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1514.x, x_1514.y, x_1514.z), vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
    let x_1519 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1519, 0.0f, 1.0f);
    let x_1521 : f32 = u_xlat49;
    let x_1522 : f32 = u_xlat51;
    u_xlat49 = (x_1521 * x_1522);
    let x_1524 : f32 = u_xlat49;
    let x_1526 : i32 = u_xlati6;
    let x_1528 : vec4<f32> = x_1224.x_AdditionalLightsColor[x_1526];
    let x_1530 : vec3<f32> = (vec3<f32>(x_1524, x_1524, x_1524) * vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
    let x_1531 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
    let x_1533 : vec4<f32> = u_xlat8;
    let x_1535 : f32 = u_xlat50;
    let x_1538 : vec4<f32> = u_xlat1;
    let x_1540 : vec3<f32> = ((vec3<f32>(x_1533.x, x_1533.y, x_1533.z) * vec3<f32>(x_1535, x_1535, x_1535)) + vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
    let x_1541 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1541.w);
    let x_1543 : vec4<f32> = u_xlat8;
    let x_1545 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1543.x, x_1543.y, x_1543.z), vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
    let x_1550 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1550, 1.17549435e-38f);
    let x_1554 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1554);
    let x_1557 : vec4<f32> = u_xlat6;
    let x_1559 : vec4<f32> = u_xlat8;
    let x_1561 : vec3<f32> = (vec3<f32>(x_1557.x, x_1557.x, x_1557.x) * vec3<f32>(x_1559.x, x_1559.y, x_1559.z));
    let x_1562 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
    let x_1564 : vec4<f32> = u_xlat2;
    let x_1566 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1564.x, x_1564.y, x_1564.z), vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
    let x_1571 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1571, 0.0f, 1.0f);
    let x_1574 : vec4<f32> = u_xlat9;
    let x_1576 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1574.x, x_1574.y, x_1574.z), vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
    let x_1579 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1579, 0.0f, 1.0f);
    let x_1582 : f32 = u_xlat6.x;
    let x_1584 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1582 * x_1584);
    let x_1588 : f32 = u_xlat6.x;
    let x_1590 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_1588 * x_1590) + 1.00001001358032226562f);
    let x_1594 : f32 = u_xlat49;
    let x_1595 : f32 = u_xlat49;
    u_xlat49 = (x_1594 * x_1595);
    let x_1598 : f32 = u_xlat6.x;
    let x_1600 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1598 * x_1600);
    let x_1603 : f32 = u_xlat49;
    u_xlat49 = max(x_1603, 0.10000000149011611938f);
    let x_1606 : f32 = u_xlat6.x;
    let x_1607 : f32 = u_xlat49;
    u_xlat6.x = (x_1606 * x_1607);
    let x_1610 : f32 = u_xlat46;
    let x_1612 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1610 * x_1612);
    let x_1615 : f32 = u_xlat44;
    let x_1617 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1615 / x_1617);
    let x_1620 : vec4<f32> = u_xlat5;
    let x_1622 : vec4<f32> = u_xlat6;
    let x_1625 : vec4<f32> = u_xlat4;
    let x_1627 : vec3<f32> = ((vec3<f32>(x_1620.x, x_1620.y, x_1620.z) * vec3<f32>(x_1622.x, x_1622.x, x_1622.x)) + vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
    let x_1628 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
    let x_1630 : vec4<f32> = u_xlat8;
    let x_1632 : vec4<f32> = u_xlat10;
    let x_1635 : vec4<f32> = u_xlat7;
    let x_1637 : vec3<f32> = ((vec3<f32>(x_1630.x, x_1630.y, x_1630.z) * vec3<f32>(x_1632.x, x_1632.y, x_1632.z)) + vec3<f32>(x_1635.x, x_1635.y, x_1635.z));
    let x_1638 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);

    continuing {
      let x_1640 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1640 + bitcast<u32>(1i));
    }
  }
  let x_1642 : vec4<f32> = u_xlat3;
  let x_1644 : f32 = u_xlat14;
  let x_1647 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_1642.x, x_1642.y, x_1642.z) * vec3<f32>(x_1644, x_1644, x_1644)) + x_1647);
  let x_1649 : vec4<f32> = u_xlat7;
  let x_1651 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1649.x, x_1649.y, x_1649.z) + x_1651);
  let x_1653 : f32 = u_xlat42;
  let x_1655 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1653, x_1653, x_1653) * x_1655);
  let x_1657 : f32 = u_xlat43;
  let x_1658 : f32 = u_xlat43;
  u_xlat42 = (x_1657 * -(x_1658));
  let x_1661 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1661);
  let x_1665 : vec3<f32> = u_xlat0;
  let x_1666 : f32 = u_xlat42;
  let x_1668 : vec3<f32> = (x_1665 * vec3<f32>(x_1666, x_1666, x_1666));
  let x_1669 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
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


