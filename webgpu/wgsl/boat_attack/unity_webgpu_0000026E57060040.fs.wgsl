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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_967 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1121 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1387 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1526 : f32;
  var x_1536 : f32;
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
  let x_827 : vec4<f32> = vs_TEXCOORD0;
  let x_830 : f32 = x_112.x_GlobalMipBias.x;
  let x_831 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_827.z, x_827.w), x_830);
  u_xlat2 = x_831;
  let x_836 : vec4<f32> = vs_TEXCOORD0;
  let x_839 : f32 = x_112.x_GlobalMipBias.x;
  let x_840 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_836.z, x_836.w), x_839);
  let x_841 : vec3<f32> = vec3<f32>(x_840.x, x_840.y, x_840.z);
  let x_842 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat2;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_849 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat1;
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : f32 = u_xlat43;
  u_xlat43 = (x_856 + 0.5f);
  let x_858 : f32 = u_xlat43;
  let x_860 : vec4<f32> = u_xlat3;
  let x_862 : vec3<f32> = (vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : f32 = u_xlat2.w;
  u_xlat43 = max(x_866, 0.00009999999747378752f);
  let x_869 : vec4<f32> = u_xlat2;
  let x_871 : f32 = u_xlat43;
  let x_873 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) / vec3<f32>(x_871, x_871, x_871));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_877) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_883 : f32 = u_xlat28;
  let x_884 : f32 = u_xlat43;
  u_xlat44 = (x_883 + -(x_884));
  let x_887 : f32 = u_xlat43;
  let x_889 : vec4<f32> = u_xlat5;
  let x_891 : vec3<f32> = (vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat5;
  let x_898 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_899 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec3<f32> = u_xlat0;
  let x_903 : vec4<f32> = u_xlat4;
  let x_908 : vec3<f32> = ((vec3<f32>(x_901.x, x_901.x, x_901.x) * vec3<f32>(x_903.x, x_903.y, x_903.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : f32 = u_xlat28;
  u_xlat0.x = (-(x_911) + 1.0f);
  let x_916 : f32 = u_xlat0.x;
  let x_918 : f32 = u_xlat0.x;
  u_xlat28 = (x_916 * x_918);
  let x_920 : f32 = u_xlat28;
  u_xlat28 = max(x_920, 0.0078125f);
  let x_923 : f32 = u_xlat28;
  let x_924 : f32 = u_xlat28;
  u_xlat43 = (x_923 * x_924);
  let x_926 : f32 = u_xlat44;
  u_xlat44 = (x_926 + 1.0f);
  let x_928 : f32 = u_xlat44;
  u_xlat44 = clamp(x_928, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat28;
  u_xlat45 = ((x_931 * 4.0f) + 2.0f);
  let x_934 : f32 = u_xlat14;
  u_xlat14 = min(x_934, 1.0f);
  let x_939 : vec4<f32> = vs_TEXCOORD8;
  let x_940 : vec2<f32> = vec2<f32>(x_939.x, x_939.y);
  let x_943 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_940.x, x_940.y, x_943);
  let x_956 : vec3<f32> = txVec0;
  let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
  u_xlat46 = x_958;
  let x_969 : f32 = x_967.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_969) + 1.0f);
  let x_973 : f32 = u_xlat46;
  let x_975 : f32 = x_967.x_MainLightShadowParams.x;
  let x_978 : f32 = u_xlat5.x;
  u_xlat46 = ((x_973 * x_975) + x_978);
  let x_982 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_982);
  let x_986 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (x_986 >= 1.0f);
  let x_988 : bool = u_xlatb19;
  let x_989 : bool = u_xlatb5;
  u_xlatb5 = (x_988 | x_989);
  let x_991 : bool = u_xlatb5;
  let x_992 : f32 = u_xlat46;
  u_xlat46 = select(x_992, 1.0f, x_991);
  let x_996 : vec3<f32> = vs_TEXCOORD7;
  let x_999 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1001 : vec3<f32> = (x_996 + -(x_999));
  let x_1002 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec4<f32> = u_xlat5;
  let x_1006 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1012 : f32 = u_xlat5.x;
  let x_1014 : f32 = x_967.x_MainLightShadowParams.z;
  let x_1017 : f32 = x_967.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1012 * x_1014) + x_1017);
  let x_1021 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1021, 0.0f, 1.0f);
  let x_1025 : f32 = u_xlat46;
  u_xlat33 = (-(x_1025) + 1.0f);
  let x_1029 : f32 = u_xlat19.x;
  let x_1030 : f32 = u_xlat33;
  let x_1032 : f32 = u_xlat46;
  u_xlat46 = ((x_1029 * x_1030) + x_1032);
  let x_1035 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1035;
  let x_1038 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1038;
  let x_1041 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1041;
  let x_1043 : vec4<f32> = u_xlat6;
  let x_1046 : vec4<f32> = u_xlat1;
  u_xlat19.x = dot(-(vec3<f32>(x_1043.x, x_1043.y, x_1043.z)), vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1051 : f32 = u_xlat19.x;
  let x_1053 : f32 = u_xlat19.x;
  u_xlat19.x = (x_1051 + x_1053);
  let x_1056 : vec4<f32> = u_xlat1;
  let x_1058 : vec3<f32> = u_xlat19;
  let x_1062 : vec4<f32> = u_xlat6;
  u_xlat19 = ((vec3<f32>(x_1056.x, x_1056.y, x_1056.z) * -(vec3<f32>(x_1058.x, x_1058.x, x_1058.x))) + -(vec3<f32>(x_1062.x, x_1062.y, x_1062.z)));
  let x_1067 : vec4<f32> = u_xlat1;
  let x_1069 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1072, 0.0f, 1.0f);
  let x_1074 : f32 = u_xlat48;
  u_xlat48 = (-(x_1074) + 1.0f);
  let x_1077 : f32 = u_xlat48;
  let x_1078 : f32 = u_xlat48;
  u_xlat48 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat48;
  let x_1081 : f32 = u_xlat48;
  u_xlat48 = (x_1080 * x_1081);
  let x_1084 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_1084) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1092 : f32 = u_xlat0.x;
  let x_1094 : f32 = u_xlat7.x;
  u_xlat0.x = (x_1092 * x_1094);
  let x_1098 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1098 * 6.0f);
  let x_1110 : vec3<f32> = u_xlat19;
  let x_1112 : f32 = u_xlat0.x;
  let x_1113 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1110, x_1112);
  u_xlat7 = x_1113;
  let x_1115 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1115 + -1.0f);
  let x_1123 : f32 = x_1121.unity_SpecCube0_HDR.w;
  let x_1125 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1123 * x_1125) + 1.0f);
  let x_1130 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1130, 0.0f);
  let x_1134 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1134);
  let x_1138 : f32 = u_xlat0.x;
  let x_1140 : f32 = x_1121.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1138 * x_1140);
  let x_1144 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1144);
  let x_1148 : f32 = u_xlat0.x;
  let x_1150 : f32 = x_1121.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1148 * x_1150);
  let x_1153 : vec4<f32> = u_xlat7;
  let x_1155 : vec3<f32> = u_xlat0;
  u_xlat19 = (vec3<f32>(x_1153.x, x_1153.y, x_1153.z) * vec3<f32>(x_1155.x, x_1155.x, x_1155.x));
  let x_1158 : f32 = u_xlat28;
  let x_1160 : f32 = u_xlat28;
  let x_1164 : vec2<f32> = ((vec2<f32>(x_1158, x_1158) * vec2<f32>(x_1160, x_1160)) + vec2<f32>(-1.0f, 1.0f));
  let x_1165 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1164.x, x_1165.y, x_1164.y);
  let x_1168 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1168);
  let x_1170 : vec4<f32> = u_xlat4;
  let x_1173 : f32 = u_xlat44;
  let x_1175 : vec3<f32> = (-(vec3<f32>(x_1170.x, x_1170.y, x_1170.z)) + vec3<f32>(x_1173, x_1173, x_1173));
  let x_1176 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1178 : f32 = u_xlat48;
  let x_1180 : vec4<f32> = u_xlat7;
  let x_1183 : vec4<f32> = u_xlat4;
  let x_1185 : vec3<f32> = ((vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z)) + vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : f32 = u_xlat28;
  let x_1190 : vec4<f32> = u_xlat7;
  let x_1192 : vec3<f32> = (vec3<f32>(x_1188, x_1188, x_1188) * vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : vec3<f32> = u_xlat19;
  let x_1196 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1195 * vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : vec4<f32> = u_xlat2;
  let x_1201 : vec4<f32> = u_xlat3;
  let x_1204 : vec3<f32> = u_xlat19;
  let x_1205 : vec3<f32> = ((vec3<f32>(x_1199.x, x_1199.y, x_1199.z) * vec3<f32>(x_1201.x, x_1201.y, x_1201.z)) + x_1204);
  let x_1206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : f32 = u_xlat46;
  let x_1210 : f32 = x_1121.unity_LightData.z;
  u_xlat28 = (x_1208 * x_1210);
  let x_1212 : vec4<f32> = u_xlat1;
  let x_1215 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1212.x, x_1212.y, x_1212.z), vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1218, 0.0f, 1.0f);
  let x_1220 : f32 = u_xlat28;
  let x_1221 : f32 = u_xlat44;
  u_xlat28 = (x_1220 * x_1221);
  let x_1223 : f32 = u_xlat28;
  let x_1226 : vec4<f32> = x_112.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : vec4<f32> = u_xlat6;
  let x_1232 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1229.x, x_1229.y, x_1229.z) + vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1235 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec4<f32> = u_xlat7;
  let x_1239 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1237.x, x_1237.y, x_1237.z), vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : f32 = u_xlat28;
  u_xlat28 = max(x_1242, 1.17549435e-38f);
  let x_1245 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1245);
  let x_1247 : f32 = u_xlat28;
  let x_1249 : vec4<f32> = u_xlat7;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1247, x_1247, x_1247) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec4<f32> = u_xlat1;
  let x_1256 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1254.x, x_1254.y, x_1254.z), vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1259, 0.0f, 1.0f);
  let x_1262 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1264 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1262.x, x_1262.y, x_1262.z), vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1267, 0.0f, 1.0f);
  let x_1269 : f32 = u_xlat28;
  let x_1270 : f32 = u_xlat28;
  u_xlat28 = (x_1269 * x_1270);
  let x_1272 : f32 = u_xlat28;
  let x_1274 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1272 * x_1274) + 1.00001001358032226562f);
  let x_1278 : f32 = u_xlat44;
  let x_1279 : f32 = u_xlat44;
  u_xlat44 = (x_1278 * x_1279);
  let x_1281 : f32 = u_xlat28;
  let x_1282 : f32 = u_xlat28;
  u_xlat28 = (x_1281 * x_1282);
  let x_1284 : f32 = u_xlat44;
  u_xlat44 = max(x_1284, 0.10000000149011611938f);
  let x_1287 : f32 = u_xlat28;
  let x_1288 : f32 = u_xlat44;
  u_xlat28 = (x_1287 * x_1288);
  let x_1290 : f32 = u_xlat45;
  let x_1291 : f32 = u_xlat28;
  u_xlat28 = (x_1290 * x_1291);
  let x_1293 : f32 = u_xlat43;
  let x_1294 : f32 = u_xlat28;
  u_xlat28 = (x_1293 / x_1294);
  let x_1296 : vec4<f32> = u_xlat4;
  let x_1298 : f32 = u_xlat28;
  let x_1301 : vec4<f32> = u_xlat3;
  let x_1303 : vec3<f32> = ((vec3<f32>(x_1296.x, x_1296.y, x_1296.z) * vec3<f32>(x_1298, x_1298, x_1298)) + vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : vec3<f32> = u_xlat19;
  let x_1307 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1306 * vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
  let x_1311 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1313 : f32 = x_1121.unity_LightData.y;
  u_xlat28 = min(x_1311, x_1313);
  let x_1317 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1317));
  let x_1321 : f32 = u_xlat5.x;
  let x_1323 : f32 = x_967.x_AdditionalShadowFadeParams.x;
  let x_1326 : f32 = x_967.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1321 * x_1323) + x_1326);
  let x_1328 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1328, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1340 : u32 = u_xlatu_loop_1;
    let x_1341 : u32 = u_xlatu28;
    if ((x_1340 < x_1341)) {
    } else {
      break;
    }
    let x_1344 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1344 >> 2u);
    let x_1348 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1348 & 3u));
    let x_1351 : u32 = u_xlatu5;
    let x_1354 : vec4<f32> = x_1121.unity_LightIndices[bitcast<i32>(x_1351)];
    let x_1364 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1369 : vec4<u32> = indexable[x_1364];
    u_xlat5.x = dot(x_1354, bitcast<vec4<f32>>(x_1369));
    let x_1375 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1375);
    let x_1377 : vec3<f32> = vs_TEXCOORD7;
    let x_1388 : i32 = u_xlati5;
    let x_1390 : vec4<f32> = x_1387.x_AdditionalLightsPosition[x_1388];
    let x_1393 : i32 = u_xlati5;
    let x_1395 : vec4<f32> = x_1387.x_AdditionalLightsPosition[x_1393];
    let x_1397 : vec3<f32> = ((-(x_1377) * vec3<f32>(x_1390.w, x_1390.w, x_1390.w)) + vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
    let x_1400 : vec4<f32> = u_xlat8;
    let x_1402 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1400.x, x_1400.y, x_1400.z), vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
    let x_1405 : f32 = u_xlat48;
    u_xlat48 = max(x_1405, 0.00006103515625f);
    let x_1408 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1408);
    let x_1410 : f32 = u_xlat49;
    let x_1412 : vec4<f32> = u_xlat8;
    let x_1414 : vec3<f32> = (vec3<f32>(x_1410, x_1410, x_1410) * vec3<f32>(x_1412.x, x_1412.y, x_1412.z));
    let x_1415 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
    let x_1418 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1418);
    let x_1420 : f32 = u_xlat48;
    let x_1421 : i32 = u_xlati5;
    let x_1423 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1421].x;
    u_xlat48 = (x_1420 * x_1423);
    let x_1425 : f32 = u_xlat48;
    let x_1427 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1425) * x_1427) + 1.0f);
    let x_1430 : f32 = u_xlat48;
    u_xlat48 = max(x_1430, 0.0f);
    let x_1432 : f32 = u_xlat48;
    let x_1433 : f32 = u_xlat48;
    u_xlat48 = (x_1432 * x_1433);
    let x_1435 : f32 = u_xlat48;
    let x_1436 : f32 = u_xlat50;
    u_xlat48 = (x_1435 * x_1436);
    let x_1438 : i32 = u_xlati5;
    let x_1440 : vec4<f32> = x_1387.x_AdditionalLightsSpotDir[x_1438];
    let x_1442 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1440.x, x_1440.y, x_1440.z), vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
    let x_1445 : f32 = u_xlat50;
    let x_1446 : i32 = u_xlati5;
    let x_1448 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1446].z;
    let x_1450 : i32 = u_xlati5;
    let x_1452 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1450].w;
    u_xlat50 = ((x_1445 * x_1448) + x_1452);
    let x_1454 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1454, 0.0f, 1.0f);
    let x_1456 : f32 = u_xlat50;
    let x_1457 : f32 = u_xlat50;
    u_xlat50 = (x_1456 * x_1457);
    let x_1459 : f32 = u_xlat48;
    let x_1460 : f32 = u_xlat50;
    u_xlat48 = (x_1459 * x_1460);
    let x_1463 : i32 = u_xlati5;
    let x_1465 : f32 = x_967.x_AdditionalShadowParams[x_1463].w;
    u_xlati50 = i32(x_1465);
    let x_1468 : i32 = u_xlati50;
    u_xlatb51 = (x_1468 >= 0i);
    let x_1470 : bool = u_xlatb51;
    if (x_1470) {
      let x_1474 : i32 = u_xlati5;
      let x_1476 : f32 = x_967.x_AdditionalShadowParams[x_1474].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1476, x_1476, x_1476, x_1476))));
      let x_1480 : bool = u_xlatb51;
      if (x_1480) {
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1488 : vec4<f32> = u_xlat9;
        let x_1491 : vec4<bool> = (abs(vec4<f32>(x_1485.z, x_1485.z, x_1485.y, x_1485.z)) >= abs(vec4<f32>(x_1488.x, x_1488.y, x_1488.x, x_1488.x)));
        let x_1493 : vec3<bool> = vec3<bool>(x_1491.x, x_1491.y, x_1491.z);
        let x_1494 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1493.x, x_1493.y, x_1493.z, x_1494.w);
        let x_1497 : bool = u_xlatb10.y;
        let x_1499 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1497 & x_1499);
        let x_1501 : vec4<f32> = u_xlat9;
        let x_1504 : vec4<bool> = (-(vec4<f32>(x_1501.z, x_1501.y, x_1501.z, x_1501.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1505 : vec3<bool> = vec3<bool>(x_1504.x, x_1504.y, x_1504.w);
        let x_1506 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1505.x, x_1505.y, x_1506.z, x_1505.z);
        let x_1509 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1509);
        let x_1514 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1514);
        let x_1520 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1520);
        let x_1524 : bool = u_xlatb10.z;
        if (x_1524) {
          let x_1530 : f32 = u_xlat10.y;
          x_1526 = x_1530;
        } else {
          let x_1532 : f32 = u_xlat52;
          x_1526 = x_1532;
        }
        let x_1533 : f32 = x_1526;
        u_xlat24 = x_1533;
        let x_1535 : bool = u_xlatb51;
        if (x_1535) {
          let x_1540 : f32 = u_xlat10.x;
          x_1536 = x_1540;
        } else {
          let x_1542 : f32 = u_xlat24;
          x_1536 = x_1542;
        }
        let x_1543 : f32 = x_1536;
        u_xlat51 = x_1543;
        let x_1544 : i32 = u_xlati5;
        let x_1546 : f32 = x_967.x_AdditionalShadowParams[x_1544].w;
        u_xlat10.x = trunc(x_1546);
        let x_1549 : f32 = u_xlat51;
        let x_1551 : f32 = u_xlat10.x;
        u_xlat51 = (x_1549 + x_1551);
        let x_1553 : f32 = u_xlat51;
        u_xlati50 = i32(x_1553);
      }
      let x_1555 : i32 = u_xlati50;
      u_xlati50 = (x_1555 << bitcast<u32>(2i));
      let x_1557 : vec3<f32> = vs_TEXCOORD7;
      let x_1559 : i32 = u_xlati50;
      let x_1562 : i32 = u_xlati50;
      let x_1566 : vec4<f32> = x_967.x_AdditionalLightsWorldToShadow[((x_1559 + 1i) / 4i)][((x_1562 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1557.y, x_1557.y, x_1557.y, x_1557.y) * x_1566);
      let x_1568 : i32 = u_xlati50;
      let x_1570 : i32 = u_xlati50;
      let x_1573 : vec4<f32> = x_967.x_AdditionalLightsWorldToShadow[(x_1568 / 4i)][(x_1570 % 4i)];
      let x_1574 : vec3<f32> = vs_TEXCOORD7;
      let x_1577 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1573 * vec4<f32>(x_1574.x, x_1574.x, x_1574.x, x_1574.x)) + x_1577);
      let x_1579 : i32 = u_xlati50;
      let x_1582 : i32 = u_xlati50;
      let x_1586 : vec4<f32> = x_967.x_AdditionalLightsWorldToShadow[((x_1579 + 2i) / 4i)][((x_1582 + 2i) % 4i)];
      let x_1587 : vec3<f32> = vs_TEXCOORD7;
      let x_1590 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1586 * vec4<f32>(x_1587.z, x_1587.z, x_1587.z, x_1587.z)) + x_1590);
      let x_1592 : vec4<f32> = u_xlat10;
      let x_1593 : i32 = u_xlati50;
      let x_1596 : i32 = u_xlati50;
      let x_1600 : vec4<f32> = x_967.x_AdditionalLightsWorldToShadow[((x_1593 + 3i) / 4i)][((x_1596 + 3i) % 4i)];
      u_xlat10 = (x_1592 + x_1600);
      let x_1602 : vec4<f32> = u_xlat10;
      let x_1604 : vec4<f32> = u_xlat10;
      let x_1606 : vec3<f32> = (vec3<f32>(x_1602.x, x_1602.y, x_1602.z) / vec3<f32>(x_1604.w, x_1604.w, x_1604.w));
      let x_1607 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
      let x_1610 : vec4<f32> = u_xlat10;
      let x_1611 : vec2<f32> = vec2<f32>(x_1610.x, x_1610.y);
      let x_1613 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
      let x_1621 : vec3<f32> = txVec1;
      let x_1623 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
      u_xlat50 = x_1623;
      let x_1624 : i32 = u_xlati5;
      let x_1626 : f32 = x_967.x_AdditionalShadowParams[x_1624].x;
      u_xlat51 = (1.0f + -(x_1626));
      let x_1629 : f32 = u_xlat50;
      let x_1630 : i32 = u_xlati5;
      let x_1632 : f32 = x_967.x_AdditionalShadowParams[x_1630].x;
      let x_1634 : f32 = u_xlat51;
      u_xlat50 = ((x_1629 * x_1632) + x_1634);
      let x_1637 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1637);
      let x_1640 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1640 >= 1.0f);
      let x_1643 : bool = u_xlatb51;
      let x_1645 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1643 | x_1645);
      let x_1647 : bool = u_xlatb51;
      let x_1648 : f32 = u_xlat50;
      u_xlat50 = select(x_1648, 1.0f, x_1647);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1651 : f32 = u_xlat50;
    u_xlat51 = (-(x_1651) + 1.0f);
    let x_1654 : f32 = u_xlat44;
    let x_1655 : f32 = u_xlat51;
    let x_1657 : f32 = u_xlat50;
    u_xlat50 = ((x_1654 * x_1655) + x_1657);
    let x_1659 : f32 = u_xlat48;
    let x_1660 : f32 = u_xlat50;
    u_xlat48 = (x_1659 * x_1660);
    let x_1662 : vec4<f32> = u_xlat1;
    let x_1664 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1662.x, x_1662.y, x_1662.z), vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
    let x_1667 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1667, 0.0f, 1.0f);
    let x_1669 : f32 = u_xlat48;
    let x_1670 : f32 = u_xlat50;
    u_xlat48 = (x_1669 * x_1670);
    let x_1672 : f32 = u_xlat48;
    let x_1674 : i32 = u_xlati5;
    let x_1676 : vec4<f32> = x_1387.x_AdditionalLightsColor[x_1674];
    let x_1678 : vec3<f32> = (vec3<f32>(x_1672, x_1672, x_1672) * vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
    let x_1679 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
    let x_1681 : vec4<f32> = u_xlat8;
    let x_1683 : f32 = u_xlat49;
    let x_1686 : vec4<f32> = u_xlat6;
    let x_1688 : vec3<f32> = ((vec3<f32>(x_1681.x, x_1681.y, x_1681.z) * vec3<f32>(x_1683, x_1683, x_1683)) + vec3<f32>(x_1686.x, x_1686.y, x_1686.z));
    let x_1689 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);
    let x_1691 : vec4<f32> = u_xlat8;
    let x_1693 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1691.x, x_1691.y, x_1691.z), vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
    let x_1698 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1698, 1.17549435e-38f);
    let x_1702 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1702);
    let x_1705 : vec4<f32> = u_xlat5;
    let x_1707 : vec4<f32> = u_xlat8;
    let x_1709 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.x, x_1705.x) * vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
    let x_1710 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
    let x_1712 : vec4<f32> = u_xlat1;
    let x_1714 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1712.x, x_1712.y, x_1712.z), vec3<f32>(x_1714.x, x_1714.y, x_1714.z));
    let x_1719 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1719, 0.0f, 1.0f);
    let x_1722 : vec4<f32> = u_xlat9;
    let x_1724 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1722.x, x_1722.y, x_1722.z), vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
    let x_1727 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1727, 0.0f, 1.0f);
    let x_1730 : f32 = u_xlat5.x;
    let x_1732 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1730 * x_1732);
    let x_1736 : f32 = u_xlat5.x;
    let x_1738 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_1736 * x_1738) + 1.00001001358032226562f);
    let x_1742 : f32 = u_xlat48;
    let x_1743 : f32 = u_xlat48;
    u_xlat48 = (x_1742 * x_1743);
    let x_1746 : f32 = u_xlat5.x;
    let x_1748 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1746 * x_1748);
    let x_1751 : f32 = u_xlat48;
    u_xlat48 = max(x_1751, 0.10000000149011611938f);
    let x_1754 : f32 = u_xlat5.x;
    let x_1755 : f32 = u_xlat48;
    u_xlat5.x = (x_1754 * x_1755);
    let x_1758 : f32 = u_xlat45;
    let x_1760 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1758 * x_1760);
    let x_1763 : f32 = u_xlat43;
    let x_1765 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1763 / x_1765);
    let x_1768 : vec4<f32> = u_xlat4;
    let x_1770 : vec4<f32> = u_xlat5;
    let x_1773 : vec4<f32> = u_xlat3;
    let x_1775 : vec3<f32> = ((vec3<f32>(x_1768.x, x_1768.y, x_1768.z) * vec3<f32>(x_1770.x, x_1770.x, x_1770.x)) + vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
    let x_1776 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
    let x_1778 : vec4<f32> = u_xlat8;
    let x_1780 : vec4<f32> = u_xlat10;
    let x_1783 : vec4<f32> = u_xlat7;
    let x_1785 : vec3<f32> = ((vec3<f32>(x_1778.x, x_1778.y, x_1778.z) * vec3<f32>(x_1780.x, x_1780.y, x_1780.z)) + vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
    let x_1786 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);

    continuing {
      let x_1788 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1788 + bitcast<u32>(1i));
    }
  }
  let x_1790 : vec4<f32> = u_xlat2;
  let x_1792 : f32 = u_xlat14;
  let x_1795 : vec3<f32> = u_xlat19;
  u_xlat0 = ((vec3<f32>(x_1790.x, x_1790.y, x_1790.z) * vec3<f32>(x_1792, x_1792, x_1792)) + x_1795);
  let x_1797 : vec4<f32> = u_xlat7;
  let x_1799 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1797.x, x_1797.y, x_1797.z) + x_1799);
  let x_1803 : f32 = u_xlat42;
  let x_1805 : vec3<f32> = u_xlat0;
  let x_1806 : vec3<f32> = (vec3<f32>(x_1803, x_1803, x_1803) * x_1805);
  let x_1807 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


