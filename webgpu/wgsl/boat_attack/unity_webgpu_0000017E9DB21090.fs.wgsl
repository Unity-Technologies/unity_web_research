diagnostic(off, derivative_uniformity);

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
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_833 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1013 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

@group(1) @binding(1) var<uniform> x_1603 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1194 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1735 : f32;
  var x_1745 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_MaskMapRemapScale0;
  let x_25 : vec4<f32> = x_13.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_18.x, x_18.y, x_18.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_25.x, x_25.y, x_25.w));
  let x_32 : vec4<f32> = x_13.x_MaskMapRemapScale1;
  let x_37 : vec4<f32> = x_13.x_MaskMapRemapOffset1;
  let x_39 : vec3<f32> = ((vec3<f32>(x_32.x, x_32.y, x_32.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_37.x, x_37.y, x_37.w));
  let x_40 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_45 : vec4<f32> = x_13.x_MaskMapRemapScale2;
  let x_50 : vec4<f32> = x_13.x_MaskMapRemapOffset2;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_58 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_63 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.w, x_58.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_63.x, x_63.w, x_63.y));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_65.z);
  let x_72 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_76 : vec2<f32> = (vec2<f32>(x_72.z, x_72.w) + vec2<f32>(-1.0f, -1.0f));
  let x_77 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83.x, x_83.y)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_108 : vec4<f32> = u_xlat4;
  let x_118 : f32 = x_112.x_GlobalMipBias.x;
  let x_119 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_118);
  u_xlat4 = x_119;
  let x_122 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_122, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_133 : vec4<f32> = vs_TEXCOORD1;
  let x_136 : f32 = x_112.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_133.x, x_133.y), x_136);
  u_xlat5 = x_137;
  let x_143 : vec4<f32> = vs_TEXCOORD1;
  let x_146 : f32 = x_112.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_143.z, x_143.w), x_146);
  u_xlat6 = x_147;
  let x_154 : vec4<f32> = vs_TEXCOORD2;
  let x_157 : f32 = x_112.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat7 = x_158;
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_167 : f32 = x_112.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_164.z, x_164.w), x_167);
  u_xlat8 = x_168;
  let x_172 : f32 = u_xlat5.w;
  u_xlat9.x = x_172;
  let x_175 : f32 = u_xlat6.w;
  u_xlat9.y = x_175;
  let x_179 : f32 = u_xlat7.w;
  u_xlat9.z = x_179;
  let x_183 : f32 = u_xlat8.w;
  u_xlat9.w = x_183;
  let x_186 : vec4<f32> = u_xlat9;
  let x_189 : f32 = x_13.x_Smoothness0;
  let x_192 : f32 = x_13.x_Smoothness1;
  let x_195 : f32 = x_13.x_Smoothness2;
  let x_198 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_186 * vec4<f32>(x_189, x_192, x_195, x_198));
  let x_207 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_207);
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_210) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_213 : vec4<f32> = u_xlat9;
  let x_214 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_213 + -(x_214));
  let x_217 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_217 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_221 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_221, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat4;
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_226 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_230);
  let x_233 : vec4<f32> = u_xlat4;
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_233 + -(x_234));
  let x_239 : f32 = u_xlat12.x;
  let x_242 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_239 * x_242);
  let x_246 : f32 = u_xlat12.y;
  let x_249 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_246 * x_249);
  let x_253 : f32 = u_xlat12.z;
  let x_256 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_253 * x_256);
  let x_260 : f32 = u_xlat12.w;
  let x_263 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_260 * x_263);
  let x_266 : vec4<f32> = u_xlat11;
  let x_267 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_266 + x_267);
  let x_269 : bool = u_xlatb43;
  let x_270 : vec4<f32> = u_xlat11;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_271, x_270, vec4<bool>(x_269, x_269, x_269, x_269));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_276, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_278 : f32 = u_xlat43;
  u_xlat43 = (x_278 + 0.00006103515625f);
  let x_281 : vec4<f32> = u_xlat4;
  let x_282 : f32 = u_xlat43;
  u_xlat4 = (x_281 / vec4<f32>(x_282, x_282, x_282, x_282));
  let x_285 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.x, x_285.x) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_298 : vec3<f32> = (vec3<f32>(x_293.y, x_293.y, x_293.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = u_xlat12;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = u_xlat11;
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.z, x_318.z, x_318.z) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat7;
  let x_328 : vec4<f32> = u_xlat6;
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_341 : vec3<f32> = (vec3<f32>(x_336.w, x_336.w, x_336.w) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat8;
  let x_346 : vec4<f32> = u_xlat6;
  let x_349 : vec4<f32> = u_xlat5;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_359 : vec4<f32> = vs_TEXCOORD1;
  let x_362 : f32 = x_112.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_359.x, x_359.y), x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.w);
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = u_xlat6.x;
  let x_370 : f32 = u_xlat6.z;
  u_xlat6.x = (x_368 * x_370);
  let x_373 : vec4<f32> = u_xlat6;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_386 : f32 = u_xlat43;
  u_xlat43 = min(x_386, 1.0f);
  let x_388 : f32 = u_xlat43;
  u_xlat43 = (-(x_388) + 1.0f);
  let x_391 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_391);
  let x_393 : f32 = u_xlat43;
  u_xlat7.z = max(x_393, 0.0000000000000001f);
  let x_397 : vec4<f32> = u_xlat6;
  let x_400 : f32 = x_13.x_NormalScale0;
  let x_402 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_400, x_400));
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_409 : vec4<f32> = vs_TEXCOORD1;
  let x_412 : f32 = x_112.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_409.z, x_409.w), x_412);
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat6.z;
  u_xlat6.x = (x_418 * x_420);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_429.x, x_429.y), vec2<f32>(x_431.x, x_431.y));
  let x_434 : f32 = u_xlat43;
  u_xlat43 = min(x_434, 1.0f);
  let x_436 : f32 = u_xlat43;
  u_xlat43 = (-(x_436) + 1.0f);
  let x_439 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_439);
  let x_441 : f32 = u_xlat43;
  u_xlat8.z = max(x_441, 0.0000000000000001f);
  let x_444 : vec4<f32> = u_xlat6;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_450 : f32 = x_13.x_NormalScale1;
  let x_451 : vec2<f32> = vec2<f32>(x_448, x_450);
  let x_455 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_451.x, x_451.y));
  let x_456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : vec4<f32> = u_xlat8;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat4;
  let x_467 : vec4<f32> = u_xlat7;
  let x_470 : vec4<f32> = u_xlat6;
  let x_472 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.x, x_465.x) * vec3<f32>(x_467.x, x_467.y, x_467.z)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_479 : vec4<f32> = vs_TEXCOORD2;
  let x_482 : f32 = x_112.x_GlobalMipBias.x;
  let x_483 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_479.x, x_479.y), x_482);
  let x_484 : vec3<f32> = vec3<f32>(x_483.x, x_483.y, x_483.w);
  let x_485 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : f32 = u_xlat7.x;
  let x_490 : f32 = u_xlat7.z;
  u_xlat7.x = (x_488 * x_490);
  let x_493 : vec4<f32> = u_xlat7;
  let x_496 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat7;
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_499.x, x_499.y), vec2<f32>(x_501.x, x_501.y));
  let x_504 : f32 = u_xlat43;
  u_xlat43 = min(x_504, 1.0f);
  let x_506 : f32 = u_xlat43;
  u_xlat43 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_509);
  let x_511 : f32 = u_xlat43;
  u_xlat8.z = max(x_511, 0.0000000000000001f);
  let x_514 : vec4<f32> = u_xlat7;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_520 : f32 = x_13.x_NormalScale2;
  let x_521 : vec2<f32> = vec2<f32>(x_518, x_520);
  let x_525 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_521.x, x_521.y));
  let x_526 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat8;
  let x_533 : vec4<f32> = u_xlat6;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.z, x_528.z, x_528.z) * vec3<f32>(x_530.x, x_530.y, x_530.z)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_542 : vec4<f32> = vs_TEXCOORD2;
  let x_545 : f32 = x_112.x_GlobalMipBias.x;
  let x_546 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_542.z, x_542.w), x_545);
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.w);
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = u_xlat7.x;
  let x_553 : f32 = u_xlat7.z;
  u_xlat7.x = (x_551 * x_553);
  let x_556 : vec4<f32> = u_xlat7;
  let x_559 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_562.x, x_562.y), vec2<f32>(x_564.x, x_564.y));
  let x_567 : f32 = u_xlat43;
  u_xlat43 = min(x_567, 1.0f);
  let x_569 : f32 = u_xlat43;
  u_xlat43 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_572);
  let x_574 : f32 = u_xlat43;
  u_xlat8.z = max(x_574, 0.0000000000000001f);
  let x_577 : vec4<f32> = u_xlat7;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_583 : f32 = x_13.x_NormalScale3;
  let x_584 : vec2<f32> = vec2<f32>(x_581, x_583);
  let x_588 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_584.x, x_584.y));
  let x_589 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : vec4<f32> = u_xlat8;
  let x_596 : vec4<f32> = u_xlat6;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.w, x_591.w, x_591.w) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat6.z;
  u_xlat6.w = (x_602 + 0.00000999999974737875f);
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_606.x, x_606.y, x_606.w), vec3<f32>(x_608.x, x_608.y, x_608.w));
  let x_611 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_611);
  let x_613 : f32 = u_xlat43;
  let x_615 : vec4<f32> = u_xlat6;
  let x_617 : vec3<f32> = (vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_615.x, x_615.y, x_615.w));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_621;
  let x_624 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_624;
  let x_627 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_627;
  let x_630 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_630;
  let x_633 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_642;
  let x_644 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_644 + x_645);
  let x_648 : f32 = u_xlat0.z;
  u_xlat8.x = x_648;
  let x_651 : f32 = u_xlat1.z;
  u_xlat8.y = x_651;
  let x_654 : f32 = u_xlat2.z;
  u_xlat8.z = x_654;
  let x_657 : f32 = u_xlat3.y;
  u_xlat8.w = x_657;
  let x_659 : vec4<f32> = u_xlat9;
  let x_662 : f32 = x_13.x_Smoothness0;
  let x_664 : f32 = x_13.x_Smoothness1;
  let x_666 : f32 = x_13.x_Smoothness2;
  let x_668 : f32 = x_13.x_Smoothness3;
  let x_671 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_659) * vec4<f32>(x_662, x_664, x_666, x_668)) + x_671);
  let x_675 : f32 = x_13.x_LayerHasMask0;
  let x_678 : f32 = x_13.x_LayerHasMask1;
  let x_681 : f32 = x_13.x_LayerHasMask2;
  let x_684 : f32 = x_13.x_LayerHasMask3;
  let x_686 : vec4<f32> = u_xlat8;
  let x_688 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_675, x_678, x_681, x_684) * x_686) + x_688);
  let x_691 : vec4<f32> = u_xlat4;
  let x_692 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_691, x_692);
  let x_695 : f32 = u_xlat0.x;
  u_xlat8.x = x_695;
  let x_698 : f32 = u_xlat1.x;
  u_xlat8.y = x_698;
  let x_701 : f32 = u_xlat2.x;
  u_xlat8.z = x_701;
  let x_704 : f32 = u_xlat3.x;
  u_xlat8.w = x_704;
  let x_706 : vec4<f32> = u_xlat8;
  let x_709 : f32 = x_13.x_Metallic0;
  let x_712 : f32 = x_13.x_Metallic1;
  let x_715 : f32 = x_13.x_Metallic2;
  let x_718 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_706 + -(vec4<f32>(x_709, x_712, x_715, x_718)));
  let x_723 : f32 = x_13.x_LayerHasMask0;
  let x_725 : f32 = x_13.x_LayerHasMask1;
  let x_727 : f32 = x_13.x_LayerHasMask2;
  let x_729 : f32 = x_13.x_LayerHasMask3;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_13.x_Metallic0;
  let x_736 : f32 = x_13.x_Metallic1;
  let x_738 : f32 = x_13.x_Metallic2;
  let x_740 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_723, x_725, x_727, x_729) * x_731) + vec4<f32>(x_734, x_736, x_738, x_740));
  let x_743 : vec4<f32> = u_xlat4;
  let x_744 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_743, x_744);
  let x_748 : f32 = u_xlat0.y;
  u_xlat3.x = x_748;
  let x_751 : f32 = u_xlat1.y;
  u_xlat3.y = x_751;
  let x_754 : f32 = u_xlat2.y;
  u_xlat3.z = x_754;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_756) + x_758);
  let x_761 : f32 = x_13.x_LayerHasMask0;
  let x_763 : f32 = x_13.x_LayerHasMask1;
  let x_765 : f32 = x_13.x_LayerHasMask2;
  let x_767 : f32 = x_13.x_LayerHasMask3;
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_761, x_763, x_765, x_767) * x_769) + x_771);
  let x_774 : vec4<f32> = u_xlat4;
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_774, x_775);
  let x_777 : vec4<f32> = u_xlat6;
  let x_780 : vec4<f32> = vs_TEXCOORD5;
  let x_782 : vec3<f32> = (vec3<f32>(x_777.y, x_777.y, x_777.y) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat6;
  let x_788 : vec4<f32> = vs_TEXCOORD4;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.x, x_785.x) * -(vec3<f32>(x_788.x, x_788.y, x_788.z))) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_797.z, x_797.z, x_797.z) * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_808.x, x_808.y, x_808.z), vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_813);
  let x_815 : f32 = u_xlat43;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_824 : vec3<f32> = vs_TEXCOORD7;
  let x_835 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres0;
  let x_838 : vec3<f32> = (x_824 + -(vec3<f32>(x_835.x, x_835.y, x_835.z)));
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec3<f32> = vs_TEXCOORD7;
  let x_843 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres1;
  let x_846 : vec3<f32> = (x_841 + -(vec3<f32>(x_843.x, x_843.y, x_843.z)));
  let x_847 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_851 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres2;
  let x_854 : vec3<f32> = (x_849 + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec3<f32> = vs_TEXCOORD7;
  let x_859 : vec4<f32> = x_833.x_CascadeShadowSplitSpheres3;
  let x_862 : vec3<f32> = (x_857 + -(vec3<f32>(x_859.x, x_859.y, x_859.z)));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_871 : vec4<f32> = u_xlat3;
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat6;
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_891 : vec4<f32> = u_xlat2;
  let x_893 : vec4<f32> = x_833.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_891 < x_893);
  let x_896 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_896);
  let x_900 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_900);
  let x_904 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_904);
  let x_908 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_912);
  let x_917 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_917);
  let x_921 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_921);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : vec4<f32> = u_xlat3;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) + vec3<f32>(x_926.y, x_926.z, x_926.w));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = max(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_935 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_935.x, x_934.x, x_934.y, x_934.z);
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_937, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_943 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_943) + 4.0f);
  let x_950 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_950);
  let x_954 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_954) << bitcast<u32>(2i));
  let x_958 : vec3<f32> = vs_TEXCOORD7;
  let x_960 : i32 = u_xlati2;
  let x_963 : i32 = u_xlati2;
  let x_967 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_960 + 1i) / 4i)][((x_963 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_958.y, x_958.y, x_958.y) * vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : i32 = u_xlati2;
  let x_972 : i32 = u_xlati2;
  let x_975 : vec4<f32> = x_833.x_MainLightWorldToShadow[(x_970 / 4i)][(x_972 % 4i)];
  let x_977 : vec3<f32> = vs_TEXCOORD7;
  let x_980 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977.x, x_977.x, x_977.x)) + x_980);
  let x_982 : i32 = u_xlati2;
  let x_985 : i32 = u_xlati2;
  let x_989 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_982 + 2i) / 4i)][((x_985 + 2i) % 4i)];
  let x_991 : vec3<f32> = vs_TEXCOORD7;
  let x_994 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.z, x_991.z, x_991.z)) + x_994);
  let x_996 : vec3<f32> = u_xlat16;
  let x_997 : i32 = u_xlati2;
  let x_1000 : i32 = u_xlati2;
  let x_1004 : vec4<f32> = x_833.x_MainLightWorldToShadow[((x_997 + 3i) / 4i)][((x_1000 + 3i) % 4i)];
  let x_1006 : vec3<f32> = (x_996 + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  u_xlat1.w = 1.0f;
  let x_1015 : vec4<f32> = x_1013.unity_SHAr;
  let x_1016 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1015, x_1016);
  let x_1020 : vec4<f32> = x_1013.unity_SHAg;
  let x_1021 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1020, x_1021);
  let x_1025 : vec4<f32> = x_1013.unity_SHAb;
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1025, x_1026);
  let x_1029 : vec4<f32> = u_xlat1;
  let x_1031 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1029.y, x_1029.z, x_1029.z, x_1029.x) * vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1031.z));
  let x_1035 : vec4<f32> = x_1013.unity_SHBr;
  let x_1036 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1035, x_1036);
  let x_1040 : vec4<f32> = x_1013.unity_SHBg;
  let x_1041 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1040, x_1041);
  let x_1045 : vec4<f32> = x_1013.unity_SHBb;
  let x_1046 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1045, x_1046);
  let x_1050 : f32 = u_xlat1.y;
  let x_1052 : f32 = u_xlat1.y;
  u_xlat43 = (x_1050 * x_1052);
  let x_1055 : f32 = u_xlat1.x;
  let x_1057 : f32 = u_xlat1.x;
  let x_1059 : f32 = u_xlat43;
  u_xlat43 = ((x_1055 * x_1057) + -(x_1059));
  let x_1064 : vec4<f32> = x_1013.unity_SHC;
  let x_1066 : f32 = u_xlat43;
  let x_1069 : vec4<f32> = u_xlat6;
  let x_1071 : vec3<f32> = ((vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1066, x_1066, x_1066)) + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec4<f32> = u_xlat3;
  let x_1076 : vec4<f32> = u_xlat4;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) + vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : vec3<f32> = max(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1084 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1087 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1087) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1093 : f32 = u_xlat43;
  u_xlat44 = (-(x_1093) + 1.0f);
  let x_1096 : f32 = u_xlat43;
  let x_1098 : vec4<f32> = u_xlat5;
  let x_1100 : vec3<f32> = (vec3<f32>(x_1096, x_1096, x_1096) * vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat5;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1108 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec3<f32> = u_xlat0;
  let x_1112 : vec4<f32> = u_xlat5;
  let x_1117 : vec3<f32> = ((vec3<f32>(x_1110.x, x_1110.x, x_1110.x) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1118 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1120) + 1.0f);
  let x_1125 : f32 = u_xlat0.x;
  let x_1127 : f32 = u_xlat0.x;
  u_xlat43 = (x_1125 * x_1127);
  let x_1129 : f32 = u_xlat43;
  u_xlat43 = max(x_1129, 0.0078125f);
  let x_1133 : f32 = u_xlat43;
  let x_1134 : f32 = u_xlat43;
  u_xlat45 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat28;
  let x_1137 : f32 = u_xlat44;
  u_xlat28 = (x_1136 + x_1137);
  let x_1139 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1139, 0.0f, 1.0f);
  let x_1141 : f32 = u_xlat43;
  u_xlat44 = ((x_1141 * 4.0f) + 2.0f);
  let x_1144 : f32 = u_xlat14;
  u_xlat14 = min(x_1144, 1.0f);
  let x_1148 : vec4<f32> = u_xlat2;
  let x_1149 : vec2<f32> = vec2<f32>(x_1148.x, x_1148.y);
  let x_1151 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
  let x_1163 : vec3<f32> = txVec0;
  let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
  u_xlat2.x = x_1165;
  let x_1168 : f32 = x_833.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1168) + 1.0f);
  let x_1173 : f32 = u_xlat2.x;
  let x_1175 : f32 = x_833.x_MainLightShadowParams.x;
  let x_1178 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1173 * x_1175) + x_1178);
  let x_1183 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1183);
  let x_1187 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1187 >= 1.0f);
  let x_1189 : bool = u_xlatb30;
  let x_1190 : bool = u_xlatb16;
  u_xlatb16 = (x_1189 | x_1190);
  let x_1192 : bool = u_xlatb16;
  if (x_1192) {
    x_1194 = 1.0f;
  } else {
    let x_1199 : f32 = u_xlat2.x;
    x_1194 = x_1199;
  }
  let x_1200 : f32 = x_1194;
  u_xlat2.x = x_1200;
  let x_1202 : vec3<f32> = vs_TEXCOORD7;
  let x_1205 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1207 : vec3<f32> = (x_1202 + -(x_1205));
  let x_1208 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : vec4<f32> = u_xlat6;
  let x_1212 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_1210.x, x_1210.y, x_1210.z), vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1218 : f32 = u_xlat16.x;
  let x_1220 : f32 = x_833.x_MainLightShadowParams.z;
  let x_1223 : f32 = x_833.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1218 * x_1220) + x_1223);
  let x_1225 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1225, 0.0f, 1.0f);
  let x_1229 : f32 = u_xlat2.x;
  u_xlat46 = (-(x_1229) + 1.0f);
  let x_1232 : f32 = u_xlat30;
  let x_1233 : f32 = u_xlat46;
  let x_1236 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1232 * x_1233) + x_1236);
  let x_1241 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1241;
  let x_1244 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1244;
  let x_1247 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1247;
  let x_1249 : vec4<f32> = u_xlat6;
  let x_1252 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1249.x, x_1249.y, x_1249.z)), vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
  let x_1255 : f32 = u_xlat30;
  let x_1256 : f32 = u_xlat30;
  u_xlat30 = (x_1255 + x_1256);
  let x_1258 : vec4<f32> = u_xlat1;
  let x_1260 : f32 = u_xlat30;
  let x_1264 : vec4<f32> = u_xlat6;
  let x_1267 : vec3<f32> = ((vec3<f32>(x_1258.x, x_1258.y, x_1258.z) * -(vec3<f32>(x_1260, x_1260, x_1260))) + -(vec3<f32>(x_1264.x, x_1264.y, x_1264.z)));
  let x_1268 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1270 : vec4<f32> = u_xlat1;
  let x_1272 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1270.x, x_1270.y, x_1270.z), vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1275, 0.0f, 1.0f);
  let x_1277 : f32 = u_xlat30;
  u_xlat30 = (-(x_1277) + 1.0f);
  let x_1280 : f32 = u_xlat30;
  let x_1281 : f32 = u_xlat30;
  u_xlat30 = (x_1280 * x_1281);
  let x_1283 : f32 = u_xlat30;
  let x_1284 : f32 = u_xlat30;
  u_xlat30 = (x_1283 * x_1284);
  let x_1287 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1287) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1294 : f32 = u_xlat0.x;
  let x_1295 : f32 = u_xlat46;
  u_xlat0.x = (x_1294 * x_1295);
  let x_1299 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1299 * 6.0f);
  let x_1311 : vec4<f32> = u_xlat7;
  let x_1314 : f32 = u_xlat0.x;
  let x_1315 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1311.x, x_1311.y, x_1311.z), x_1314);
  u_xlat7 = x_1315;
  let x_1317 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1317 + -1.0f);
  let x_1321 : f32 = x_1013.unity_SpecCube0_HDR.w;
  let x_1323 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1321 * x_1323) + 1.0f);
  let x_1328 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1328, 0.0f);
  let x_1332 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1332);
  let x_1336 : f32 = u_xlat0.x;
  let x_1338 : f32 = x_1013.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1336 * x_1338);
  let x_1342 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1342);
  let x_1346 : f32 = u_xlat0.x;
  let x_1348 : f32 = x_1013.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1346 * x_1348);
  let x_1351 : vec4<f32> = u_xlat7;
  let x_1353 : vec3<f32> = u_xlat0;
  let x_1355 : vec3<f32> = (vec3<f32>(x_1351.x, x_1351.y, x_1351.z) * vec3<f32>(x_1353.x, x_1353.x, x_1353.x));
  let x_1356 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : f32 = u_xlat43;
  let x_1360 : f32 = u_xlat43;
  let x_1364 : vec2<f32> = ((vec2<f32>(x_1358, x_1358) * vec2<f32>(x_1360, x_1360)) + vec2<f32>(-1.0f, 1.0f));
  let x_1365 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
  let x_1368 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1368);
  let x_1372 : vec4<f32> = u_xlat5;
  let x_1375 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1372.x, x_1372.y, x_1372.z)) + vec3<f32>(x_1375, x_1375, x_1375));
  let x_1378 : f32 = u_xlat30;
  let x_1380 : vec3<f32> = u_xlat22;
  let x_1382 : vec4<f32> = u_xlat5;
  u_xlat22 = ((vec3<f32>(x_1378, x_1378, x_1378) * x_1380) + vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
  let x_1385 : vec3<f32> = u_xlat0;
  let x_1387 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1385.x, x_1385.x, x_1385.x) * x_1387);
  let x_1389 : vec4<f32> = u_xlat7;
  let x_1391 : vec3<f32> = u_xlat22;
  let x_1392 : vec3<f32> = (vec3<f32>(x_1389.x, x_1389.y, x_1389.z) * x_1391);
  let x_1393 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1395 : vec4<f32> = u_xlat3;
  let x_1397 : vec4<f32> = u_xlat4;
  let x_1400 : vec4<f32> = u_xlat7;
  let x_1402 : vec3<f32> = ((vec3<f32>(x_1395.x, x_1395.y, x_1395.z) * vec3<f32>(x_1397.x, x_1397.y, x_1397.z)) + vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
  let x_1403 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1406 : f32 = u_xlat2.x;
  let x_1408 : f32 = x_1013.unity_LightData.z;
  u_xlat0.x = (x_1406 * x_1408);
  let x_1411 : vec4<f32> = u_xlat1;
  let x_1414 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1411.x, x_1411.y, x_1411.z), vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
  let x_1417 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1417, 0.0f, 1.0f);
  let x_1419 : f32 = u_xlat28;
  let x_1421 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1419 * x_1421);
  let x_1424 : vec3<f32> = u_xlat0;
  let x_1427 : vec4<f32> = x_112.x_MainLightColor;
  let x_1429 : vec3<f32> = (vec3<f32>(x_1424.x, x_1424.x, x_1424.x) * vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : vec4<f32> = u_xlat6;
  let x_1435 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat22 = (vec3<f32>(x_1432.x, x_1432.y, x_1432.z) + vec3<f32>(x_1435.x, x_1435.y, x_1435.z));
  let x_1438 : vec3<f32> = u_xlat22;
  let x_1439 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(x_1438, x_1439);
  let x_1443 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1443, 1.17549435e-38f);
  let x_1448 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1448);
  let x_1451 : vec3<f32> = u_xlat0;
  let x_1453 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1451.x, x_1451.x, x_1451.x) * x_1453);
  let x_1455 : vec4<f32> = u_xlat1;
  let x_1457 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(vec3<f32>(x_1455.x, x_1455.y, x_1455.z), x_1457);
  let x_1461 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1461, 0.0f, 1.0f);
  let x_1465 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1467 : vec3<f32> = u_xlat22;
  u_xlat0.z = dot(vec3<f32>(x_1465.x, x_1465.y, x_1465.z), x_1467);
  let x_1471 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1471, 0.0f, 1.0f);
  let x_1474 : vec3<f32> = u_xlat0;
  let x_1476 : vec3<f32> = u_xlat0;
  let x_1478 : vec2<f32> = (vec2<f32>(x_1474.x, x_1474.z) * vec2<f32>(x_1476.x, x_1476.z));
  let x_1479 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1478.x, x_1479.y, x_1478.y);
  let x_1482 : f32 = u_xlat0.x;
  let x_1484 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1482 * x_1484) + 1.00001001358032226562f);
  let x_1490 : f32 = u_xlat0.x;
  let x_1492 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1490 * x_1492);
  let x_1496 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1496, 0.10000000149011611938f);
  let x_1499 : f32 = u_xlat28;
  let x_1501 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1499 * x_1501);
  let x_1504 : f32 = u_xlat44;
  let x_1506 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1504 * x_1506);
  let x_1509 : f32 = u_xlat45;
  let x_1511 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1509 / x_1511);
  let x_1514 : vec4<f32> = u_xlat5;
  let x_1516 : vec3<f32> = u_xlat0;
  let x_1519 : vec4<f32> = u_xlat4;
  u_xlat22 = ((vec3<f32>(x_1514.x, x_1514.y, x_1514.z) * vec3<f32>(x_1516.x, x_1516.x, x_1516.x)) + vec3<f32>(x_1519.x, x_1519.y, x_1519.z));
  let x_1522 : vec4<f32> = u_xlat7;
  let x_1524 : vec3<f32> = u_xlat22;
  let x_1525 : vec3<f32> = (vec3<f32>(x_1522.x, x_1522.y, x_1522.z) * x_1524);
  let x_1526 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
  let x_1529 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1531 : f32 = x_1013.unity_LightData.y;
  u_xlat0.x = min(x_1529, x_1531);
  let x_1536 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1536));
  let x_1540 : f32 = u_xlat16.x;
  let x_1542 : f32 = x_833.x_AdditionalShadowFadeParams.x;
  let x_1545 : f32 = x_833.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1540 * x_1542) + x_1545);
  let x_1547 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1547, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1559 : u32 = u_xlatu_loop_1;
    let x_1560 : u32 = u_xlatu0;
    if ((x_1559 < x_1560)) {
    } else {
      break;
    }
    let x_1563 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1563 >> 2u);
    let x_1566 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1566 & 3u));
    let x_1569 : u32 = u_xlatu46;
    let x_1572 : vec4<f32> = x_1013.unity_LightIndices[bitcast<i32>(x_1569)];
    let x_1582 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1587 : vec4<u32> = indexable[x_1582];
    u_xlat46 = dot(x_1572, bitcast<vec4<f32>>(x_1587));
    let x_1591 : f32 = u_xlat46;
    u_xlati46 = i32(x_1591);
    let x_1593 : vec3<f32> = vs_TEXCOORD7;
    let x_1604 : i32 = u_xlati46;
    let x_1606 : vec4<f32> = x_1603.x_AdditionalLightsPosition[x_1604];
    let x_1609 : i32 = u_xlati46;
    let x_1611 : vec4<f32> = x_1603.x_AdditionalLightsPosition[x_1609];
    u_xlat22 = ((-(x_1593) * vec3<f32>(x_1606.w, x_1606.w, x_1606.w)) + vec3<f32>(x_1611.x, x_1611.y, x_1611.z));
    let x_1615 : vec3<f32> = u_xlat22;
    let x_1616 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(x_1615, x_1616);
    let x_1618 : f32 = u_xlat47;
    u_xlat47 = max(x_1618, 0.00006103515625f);
    let x_1621 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1621);
    let x_1623 : f32 = u_xlat48;
    let x_1625 : vec3<f32> = u_xlat22;
    let x_1626 : vec3<f32> = (vec3<f32>(x_1623, x_1623, x_1623) * x_1625);
    let x_1627 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
    let x_1630 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1630);
    let x_1632 : f32 = u_xlat47;
    let x_1633 : i32 = u_xlati46;
    let x_1635 : f32 = x_1603.x_AdditionalLightsAttenuation[x_1633].x;
    u_xlat47 = (x_1632 * x_1635);
    let x_1637 : f32 = u_xlat47;
    let x_1639 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1637) * x_1639) + 1.0f);
    let x_1642 : f32 = u_xlat47;
    u_xlat47 = max(x_1642, 0.0f);
    let x_1644 : f32 = u_xlat47;
    let x_1645 : f32 = u_xlat47;
    u_xlat47 = (x_1644 * x_1645);
    let x_1647 : f32 = u_xlat47;
    let x_1648 : f32 = u_xlat49;
    u_xlat47 = (x_1647 * x_1648);
    let x_1650 : i32 = u_xlati46;
    let x_1652 : vec4<f32> = x_1603.x_AdditionalLightsSpotDir[x_1650];
    let x_1654 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1652.x, x_1652.y, x_1652.z), vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
    let x_1657 : f32 = u_xlat49;
    let x_1658 : i32 = u_xlati46;
    let x_1660 : f32 = x_1603.x_AdditionalLightsAttenuation[x_1658].z;
    let x_1662 : i32 = u_xlati46;
    let x_1664 : f32 = x_1603.x_AdditionalLightsAttenuation[x_1662].w;
    u_xlat49 = ((x_1657 * x_1660) + x_1664);
    let x_1666 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1666, 0.0f, 1.0f);
    let x_1668 : f32 = u_xlat49;
    let x_1669 : f32 = u_xlat49;
    u_xlat49 = (x_1668 * x_1669);
    let x_1671 : f32 = u_xlat47;
    let x_1672 : f32 = u_xlat49;
    u_xlat47 = (x_1671 * x_1672);
    let x_1675 : i32 = u_xlati46;
    let x_1677 : f32 = x_833.x_AdditionalShadowParams[x_1675].w;
    u_xlati49 = i32(x_1677);
    let x_1680 : i32 = u_xlati49;
    u_xlatb51 = (x_1680 >= 0i);
    let x_1682 : bool = u_xlatb51;
    if (x_1682) {
      let x_1686 : i32 = u_xlati46;
      let x_1688 : f32 = x_833.x_AdditionalShadowParams[x_1686].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1688, x_1688, x_1688, x_1688))));
      let x_1692 : bool = u_xlatb51;
      if (x_1692) {
        let x_1696 : vec4<f32> = u_xlat9;
        let x_1699 : vec4<f32> = u_xlat9;
        let x_1702 : vec4<bool> = (abs(vec4<f32>(x_1696.z, x_1696.z, x_1696.y, x_1696.z)) >= abs(vec4<f32>(x_1699.x, x_1699.y, x_1699.x, x_1699.x)));
        let x_1704 : vec3<bool> = vec3<bool>(x_1702.x, x_1702.y, x_1702.z);
        let x_1705 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
        let x_1708 : bool = u_xlatb10.y;
        let x_1710 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1708 & x_1710);
        let x_1712 : vec4<f32> = u_xlat9;
        let x_1715 : vec4<bool> = (-(vec4<f32>(x_1712.z, x_1712.y, x_1712.z, x_1712.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1716 : vec3<bool> = vec3<bool>(x_1715.x, x_1715.y, x_1715.w);
        let x_1717 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1716.x, x_1716.y, x_1717.z, x_1716.z);
        let x_1720 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1720);
        let x_1725 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1725);
        let x_1730 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1730);
        let x_1734 : bool = u_xlatb10.z;
        if (x_1734) {
          let x_1739 : f32 = u_xlat10.y;
          x_1735 = x_1739;
        } else {
          let x_1741 : f32 = u_xlat52;
          x_1735 = x_1741;
        }
        let x_1742 : f32 = x_1735;
        u_xlat24 = x_1742;
        let x_1744 : bool = u_xlatb51;
        if (x_1744) {
          let x_1749 : f32 = u_xlat10.x;
          x_1745 = x_1749;
        } else {
          let x_1751 : f32 = u_xlat24;
          x_1745 = x_1751;
        }
        let x_1752 : f32 = x_1745;
        u_xlat51 = x_1752;
        let x_1753 : i32 = u_xlati46;
        let x_1755 : f32 = x_833.x_AdditionalShadowParams[x_1753].w;
        u_xlat10.x = trunc(x_1755);
        let x_1758 : f32 = u_xlat51;
        let x_1760 : f32 = u_xlat10.x;
        u_xlat51 = (x_1758 + x_1760);
        let x_1762 : f32 = u_xlat51;
        u_xlati49 = i32(x_1762);
      }
      let x_1764 : i32 = u_xlati49;
      u_xlati49 = (x_1764 << bitcast<u32>(2i));
      let x_1766 : vec3<f32> = vs_TEXCOORD7;
      let x_1768 : i32 = u_xlati49;
      let x_1771 : i32 = u_xlati49;
      let x_1775 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1768 + 1i) / 4i)][((x_1771 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1766.y, x_1766.y, x_1766.y, x_1766.y) * x_1775);
      let x_1777 : i32 = u_xlati49;
      let x_1779 : i32 = u_xlati49;
      let x_1782 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[(x_1777 / 4i)][(x_1779 % 4i)];
      let x_1783 : vec3<f32> = vs_TEXCOORD7;
      let x_1786 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1782 * vec4<f32>(x_1783.x, x_1783.x, x_1783.x, x_1783.x)) + x_1786);
      let x_1788 : i32 = u_xlati49;
      let x_1791 : i32 = u_xlati49;
      let x_1795 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1788 + 2i) / 4i)][((x_1791 + 2i) % 4i)];
      let x_1796 : vec3<f32> = vs_TEXCOORD7;
      let x_1799 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1795 * vec4<f32>(x_1796.z, x_1796.z, x_1796.z, x_1796.z)) + x_1799);
      let x_1801 : vec4<f32> = u_xlat10;
      let x_1802 : i32 = u_xlati49;
      let x_1805 : i32 = u_xlati49;
      let x_1809 : vec4<f32> = x_833.x_AdditionalLightsWorldToShadow[((x_1802 + 3i) / 4i)][((x_1805 + 3i) % 4i)];
      u_xlat10 = (x_1801 + x_1809);
      let x_1811 : vec4<f32> = u_xlat10;
      let x_1813 : vec4<f32> = u_xlat10;
      let x_1815 : vec3<f32> = (vec3<f32>(x_1811.x, x_1811.y, x_1811.z) / vec3<f32>(x_1813.w, x_1813.w, x_1813.w));
      let x_1816 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
      let x_1819 : vec4<f32> = u_xlat10;
      let x_1820 : vec2<f32> = vec2<f32>(x_1819.x, x_1819.y);
      let x_1822 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
      let x_1830 : vec3<f32> = txVec1;
      let x_1832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1830.xy, x_1830.z);
      u_xlat49 = x_1832;
      let x_1833 : i32 = u_xlati46;
      let x_1835 : f32 = x_833.x_AdditionalShadowParams[x_1833].x;
      u_xlat51 = (1.0f + -(x_1835));
      let x_1838 : f32 = u_xlat49;
      let x_1839 : i32 = u_xlati46;
      let x_1841 : f32 = x_833.x_AdditionalShadowParams[x_1839].x;
      let x_1843 : f32 = u_xlat51;
      u_xlat49 = ((x_1838 * x_1841) + x_1843);
      let x_1846 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1846);
      let x_1849 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1849 >= 1.0f);
      let x_1852 : bool = u_xlatb51;
      let x_1854 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1852 | x_1854);
      let x_1856 : bool = u_xlatb51;
      let x_1857 : f32 = u_xlat49;
      u_xlat49 = select(x_1857, 1.0f, x_1856);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1860 : f32 = u_xlat49;
    u_xlat51 = (-(x_1860) + 1.0f);
    let x_1863 : f32 = u_xlat28;
    let x_1864 : f32 = u_xlat51;
    let x_1866 : f32 = u_xlat49;
    u_xlat49 = ((x_1863 * x_1864) + x_1866);
    let x_1868 : f32 = u_xlat47;
    let x_1869 : f32 = u_xlat49;
    u_xlat47 = (x_1868 * x_1869);
    let x_1871 : vec4<f32> = u_xlat1;
    let x_1873 : vec4<f32> = u_xlat9;
    u_xlat49 = dot(vec3<f32>(x_1871.x, x_1871.y, x_1871.z), vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
    let x_1876 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1876, 0.0f, 1.0f);
    let x_1878 : f32 = u_xlat47;
    let x_1879 : f32 = u_xlat49;
    u_xlat47 = (x_1878 * x_1879);
    let x_1881 : f32 = u_xlat47;
    let x_1883 : i32 = u_xlati46;
    let x_1885 : vec4<f32> = x_1603.x_AdditionalLightsColor[x_1883];
    let x_1887 : vec3<f32> = (vec3<f32>(x_1881, x_1881, x_1881) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
    let x_1890 : vec3<f32> = u_xlat22;
    let x_1891 : f32 = u_xlat48;
    let x_1894 : vec4<f32> = u_xlat6;
    u_xlat22 = ((x_1890 * vec3<f32>(x_1891, x_1891, x_1891)) + vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
    let x_1897 : vec3<f32> = u_xlat22;
    let x_1898 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(x_1897, x_1898);
    let x_1900 : f32 = u_xlat46;
    u_xlat46 = max(x_1900, 1.17549435e-38f);
    let x_1902 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1902);
    let x_1904 : f32 = u_xlat46;
    let x_1906 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_1904, x_1904, x_1904) * x_1906);
    let x_1908 : vec4<f32> = u_xlat1;
    let x_1910 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(vec3<f32>(x_1908.x, x_1908.y, x_1908.z), x_1910);
    let x_1912 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1912, 0.0f, 1.0f);
    let x_1914 : vec4<f32> = u_xlat9;
    let x_1916 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(vec3<f32>(x_1914.x, x_1914.y, x_1914.z), x_1916);
    let x_1918 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1918, 0.0f, 1.0f);
    let x_1920 : f32 = u_xlat46;
    let x_1921 : f32 = u_xlat46;
    u_xlat46 = (x_1920 * x_1921);
    let x_1923 : f32 = u_xlat46;
    let x_1925 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1923 * x_1925) + 1.00001001358032226562f);
    let x_1928 : f32 = u_xlat47;
    let x_1929 : f32 = u_xlat47;
    u_xlat47 = (x_1928 * x_1929);
    let x_1931 : f32 = u_xlat46;
    let x_1932 : f32 = u_xlat46;
    u_xlat46 = (x_1931 * x_1932);
    let x_1934 : f32 = u_xlat47;
    u_xlat47 = max(x_1934, 0.10000000149011611938f);
    let x_1936 : f32 = u_xlat46;
    let x_1937 : f32 = u_xlat47;
    u_xlat46 = (x_1936 * x_1937);
    let x_1939 : f32 = u_xlat44;
    let x_1940 : f32 = u_xlat46;
    u_xlat46 = (x_1939 * x_1940);
    let x_1942 : f32 = u_xlat45;
    let x_1943 : f32 = u_xlat46;
    u_xlat46 = (x_1942 / x_1943);
    let x_1945 : vec4<f32> = u_xlat5;
    let x_1947 : f32 = u_xlat46;
    let x_1950 : vec4<f32> = u_xlat4;
    u_xlat22 = ((vec3<f32>(x_1945.x, x_1945.y, x_1945.z) * vec3<f32>(x_1947, x_1947, x_1947)) + vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
    let x_1953 : vec3<f32> = u_xlat22;
    let x_1954 : vec4<f32> = u_xlat10;
    let x_1957 : vec4<f32> = u_xlat2;
    let x_1959 : vec3<f32> = ((x_1953 * vec3<f32>(x_1954.x, x_1954.y, x_1954.z)) + vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
    let x_1960 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);

    continuing {
      let x_1962 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1962 + bitcast<u32>(1i));
    }
  }
  let x_1964 : vec4<f32> = u_xlat3;
  let x_1966 : f32 = u_xlat14;
  let x_1969 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * vec3<f32>(x_1966, x_1966, x_1966)) + vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : vec4<f32> = u_xlat2;
  let x_1974 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1972.x, x_1972.y, x_1972.z) + x_1974);
  let x_1978 : f32 = u_xlat42;
  let x_1980 : vec3<f32> = u_xlat0;
  let x_1981 : vec3<f32> = (vec3<f32>(x_1978, x_1978, x_1978) * x_1980);
  let x_1982 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1981.x, x_1981.y, x_1981.z, x_1982.w);
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


