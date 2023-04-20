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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

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

var<private> u_xlatb44 : bool;

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

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_845 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat16 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1349 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu30 : u32;

var<private> u_xlati45 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_1638 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu16 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1223 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1772 : f32;
  var x_1782 : f32;
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
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb43;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_281 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb44;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat43;
  u_xlat43 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat43;
  u_xlat4 = (x_295 / vec4<f32>(x_296, x_296, x_296, x_296));
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat12;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat11;
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.z, x_332.z, x_332.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat4;
  let x_353 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.w, x_350.w, x_350.w) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_373 : vec4<f32> = vs_TEXCOORD1;
  let x_376 : f32 = x_113.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat6.z;
  u_xlat6.x = (x_382 * x_384);
  let x_387 : vec4<f32> = u_xlat6;
  let x_392 : vec2<f32> = ((vec2<f32>(x_387.x, x_387.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_395.x, x_395.y), vec2<f32>(x_397.x, x_397.y));
  let x_400 : f32 = u_xlat43;
  u_xlat43 = min(x_400, 1.0f);
  let x_402 : f32 = u_xlat43;
  u_xlat43 = (-(x_402) + 1.0f);
  let x_405 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_405);
  let x_407 : f32 = u_xlat43;
  u_xlat7.z = max(x_407, 0.0000000000000001f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_13.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_113.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat43;
  u_xlat43 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_453);
  let x_455 : f32 = u_xlat43;
  u_xlat8.z = max(x_455, 0.0000000000000001f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_463 : f32 = x_13.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_113.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat43;
  u_xlat43 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_522);
  let x_524 : f32 = u_xlat43;
  u_xlat8.z = max(x_524, 0.0000000000000001f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_533 : f32 = x_13.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_113.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat43;
  u_xlat43 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_585);
  let x_587 : f32 = u_xlat43;
  u_xlat8.z = max(x_587, 0.0000000000000001f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_596 : f32 = x_13.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00000999999974737875f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat43;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_13.x_Smoothness0;
  let x_677 : f32 = x_13.x_Smoothness1;
  let x_679 : f32 = x_13.x_Smoothness2;
  let x_681 : f32 = x_13.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_13.x_LayerHasMask0;
  let x_691 : f32 = x_13.x_LayerHasMask1;
  let x_694 : f32 = x_13.x_LayerHasMask2;
  let x_697 : f32 = x_13.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_13.x_Metallic0;
  let x_725 : f32 = x_13.x_Metallic1;
  let x_728 : f32 = x_13.x_Metallic2;
  let x_731 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_13.x_LayerHasMask0;
  let x_738 : f32 = x_13.x_LayerHasMask1;
  let x_740 : f32 = x_13.x_LayerHasMask2;
  let x_742 : f32 = x_13.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_13.x_Metallic0;
  let x_749 : f32 = x_13.x_Metallic1;
  let x_751 : f32 = x_13.x_Metallic2;
  let x_753 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_13.x_LayerHasMask0;
  let x_776 : f32 = x_13.x_LayerHasMask1;
  let x_778 : f32 = x_13.x_LayerHasMask2;
  let x_780 : f32 = x_13.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat43;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_837 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_837 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec3<f32> = vs_TEXCOORD7;
  let x_855 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres1;
  let x_858 : vec3<f32> = (x_853 + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
  let x_859 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = vs_TEXCOORD7;
  let x_863 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres2;
  let x_866 : vec3<f32> = (x_861 + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec3<f32> = vs_TEXCOORD7;
  let x_871 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres3;
  let x_874 : vec3<f32> = (x_869 + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : vec4<f32> = u_xlat3;
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_883.x, x_883.y, x_883.z), vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_895 : vec4<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec4<f32> = x_845.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_903 < x_905);
  let x_908 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_908);
  let x_912 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_912);
  let x_916 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_916);
  let x_920 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_920);
  let x_924 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_924);
  let x_929 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_929);
  let x_933 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_933);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = u_xlat3;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(x_938.y, x_938.z, x_938.w));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = max(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_947.x, x_946.x, x_946.y, x_946.z);
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_949, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_953 : f32 = u_xlat43;
  u_xlat43 = (-(x_953) + 4.0f);
  let x_958 : f32 = u_xlat43;
  u_xlatu43 = u32(x_958);
  let x_962 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_962) << bitcast<u32>(2i));
  let x_965 : vec3<f32> = vs_TEXCOORD7;
  let x_967 : i32 = u_xlati43;
  let x_970 : i32 = u_xlati43;
  let x_974 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_967 + 1i) / 4i)][((x_970 + 1i) % 4i)];
  let x_976 : vec3<f32> = (vec3<f32>(x_965.y, x_965.y, x_965.y) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : i32 = u_xlati43;
  let x_981 : i32 = u_xlati43;
  let x_984 : vec4<f32> = x_845.x_MainLightWorldToShadow[(x_979 / 4i)][(x_981 % 4i)];
  let x_986 : vec3<f32> = vs_TEXCOORD7;
  let x_989 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.x, x_986.x)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : i32 = u_xlati43;
  let x_997 : i32 = u_xlati43;
  let x_1001 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
  let x_1003 : vec3<f32> = vs_TEXCOORD7;
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.z, x_1003.z, x_1003.z)) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : i32 = u_xlati43;
  let x_1016 : i32 = u_xlati43;
  let x_1020 : vec4<f32> = x_845.x_MainLightWorldToShadow[((x_1013 + 3i) / 4i)][((x_1016 + 3i) % 4i)];
  let x_1022 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1027 : f32 = vs_TEXCOORD7.y;
  let x_1029 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_1027 * x_1029);
  let x_1032 : f32 = x_113.unity_MatrixV[0i].z;
  let x_1034 : f32 = vs_TEXCOORD7.x;
  let x_1036 : f32 = u_xlat43;
  u_xlat43 = ((x_1032 * x_1034) + x_1036);
  let x_1039 : f32 = x_113.unity_MatrixV[2i].z;
  let x_1041 : f32 = vs_TEXCOORD7.z;
  let x_1043 : f32 = u_xlat43;
  u_xlat43 = ((x_1039 * x_1041) + x_1043);
  let x_1045 : f32 = u_xlat43;
  let x_1047 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_1045 + x_1047);
  let x_1049 : f32 = u_xlat43;
  let x_1052 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_1049) + -(x_1052));
  let x_1055 : f32 = u_xlat43;
  u_xlat43 = max(x_1055, 0.0f);
  let x_1057 : f32 = u_xlat43;
  let x_1059 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_1057 * x_1059);
  let x_1066 : vec4<f32> = vs_TEXCOORD0;
  let x_1069 : f32 = x_113.x_GlobalMipBias.x;
  let x_1070 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1066.z, x_1066.w), x_1069);
  u_xlat3 = x_1070;
  let x_1075 : vec4<f32> = vs_TEXCOORD0;
  let x_1078 : f32 = x_113.x_GlobalMipBias.x;
  let x_1079 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1075.z, x_1075.w), x_1078);
  let x_1080 : vec3<f32> = vec3<f32>(x_1079.x, x_1079.y, x_1079.z);
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat3;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1088 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1091 : vec4<f32> = u_xlat1;
  let x_1093 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : f32 = u_xlat44;
  u_xlat44 = (x_1096 + 0.5f);
  let x_1098 : f32 = u_xlat44;
  let x_1100 : vec4<f32> = u_xlat4;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1098, x_1098, x_1098) * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1106 : f32 = u_xlat3.w;
  u_xlat44 = max(x_1106, 0.00009999999747378752f);
  let x_1109 : vec4<f32> = u_xlat3;
  let x_1111 : f32 = u_xlat44;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) / vec3<f32>(x_1111, x_1111, x_1111));
  let x_1114 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1117 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1117) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1123 : f32 = u_xlat28;
  let x_1124 : f32 = u_xlat44;
  u_xlat45 = (x_1123 + -(x_1124));
  let x_1127 : f32 = u_xlat44;
  let x_1129 : vec4<f32> = u_xlat5;
  let x_1131 : vec3<f32> = (vec3<f32>(x_1127, x_1127, x_1127) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec4<f32> = u_xlat5;
  let x_1138 : vec3<f32> = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1139 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : vec3<f32> = u_xlat0;
  let x_1143 : vec4<f32> = u_xlat5;
  let x_1148 : vec3<f32> = ((vec3<f32>(x_1141.x, x_1141.x, x_1141.x) * vec3<f32>(x_1143.x, x_1143.y, x_1143.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1149 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1151 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1151) + 1.0f);
  let x_1156 : f32 = u_xlat0.x;
  let x_1158 : f32 = u_xlat0.x;
  u_xlat28 = (x_1156 * x_1158);
  let x_1160 : f32 = u_xlat28;
  u_xlat28 = max(x_1160, 0.0078125f);
  let x_1163 : f32 = u_xlat28;
  let x_1164 : f32 = u_xlat28;
  u_xlat44 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat45;
  u_xlat45 = (x_1166 + 1.0f);
  let x_1168 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1168, 0.0f, 1.0f);
  let x_1171 : f32 = u_xlat28;
  u_xlat46 = ((x_1171 * 4.0f) + 2.0f);
  let x_1174 : f32 = u_xlat14;
  u_xlat14 = min(x_1174, 1.0f);
  let x_1178 : vec4<f32> = u_xlat2;
  let x_1179 : vec2<f32> = vec2<f32>(x_1178.x, x_1178.y);
  let x_1181 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
  let x_1193 : vec3<f32> = txVec0;
  let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
  u_xlat2.x = x_1195;
  let x_1199 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1199) + 1.0f);
  let x_1203 : f32 = u_xlat2.x;
  let x_1205 : f32 = x_845.x_MainLightShadowParams.x;
  let x_1207 : f32 = u_xlat16;
  u_xlat2.x = ((x_1203 * x_1205) + x_1207);
  let x_1212 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1212);
  let x_1216 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1216 >= 1.0f);
  let x_1218 : bool = u_xlatb30;
  let x_1219 : bool = u_xlatb16;
  u_xlatb16 = (x_1218 | x_1219);
  let x_1221 : bool = u_xlatb16;
  if (x_1221) {
    x_1223 = 1.0f;
  } else {
    let x_1228 : f32 = u_xlat2.x;
    x_1223 = x_1228;
  }
  let x_1229 : f32 = x_1223;
  u_xlat2.x = x_1229;
  let x_1231 : vec3<f32> = vs_TEXCOORD7;
  let x_1234 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_1236 : vec3<f32> = (x_1231 + -(x_1234));
  let x_1237 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1239 : vec4<f32> = u_xlat6;
  let x_1241 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_1239.x, x_1239.y, x_1239.z), vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1245 : f32 = u_xlat16;
  let x_1247 : f32 = x_845.x_MainLightShadowParams.z;
  let x_1250 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1245 * x_1247) + x_1250);
  let x_1252 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1252, 0.0f, 1.0f);
  let x_1256 : f32 = u_xlat2.x;
  u_xlat47 = (-(x_1256) + 1.0f);
  let x_1259 : f32 = u_xlat30;
  let x_1260 : f32 = u_xlat47;
  let x_1263 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1259 * x_1260) + x_1263);
  let x_1267 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1267;
  let x_1270 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1270;
  let x_1273 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1273;
  let x_1275 : vec4<f32> = u_xlat6;
  let x_1278 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1275.x, x_1275.y, x_1275.z)), vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
  let x_1281 : f32 = u_xlat30;
  let x_1282 : f32 = u_xlat30;
  u_xlat30 = (x_1281 + x_1282);
  let x_1284 : vec4<f32> = u_xlat1;
  let x_1286 : f32 = u_xlat30;
  let x_1290 : vec4<f32> = u_xlat6;
  let x_1293 : vec3<f32> = ((vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * -(vec3<f32>(x_1286, x_1286, x_1286))) + -(vec3<f32>(x_1290.x, x_1290.y, x_1290.z)));
  let x_1294 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
  let x_1296 : vec4<f32> = u_xlat1;
  let x_1298 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1296.x, x_1296.y, x_1296.z), vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1301 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1301, 0.0f, 1.0f);
  let x_1303 : f32 = u_xlat30;
  u_xlat30 = (-(x_1303) + 1.0f);
  let x_1306 : f32 = u_xlat30;
  let x_1307 : f32 = u_xlat30;
  u_xlat30 = (x_1306 * x_1307);
  let x_1309 : f32 = u_xlat30;
  let x_1310 : f32 = u_xlat30;
  u_xlat30 = (x_1309 * x_1310);
  let x_1313 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1313) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1320 : f32 = u_xlat0.x;
  let x_1321 : f32 = u_xlat47;
  u_xlat0.x = (x_1320 * x_1321);
  let x_1325 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1325 * 6.0f);
  let x_1337 : vec4<f32> = u_xlat7;
  let x_1340 : f32 = u_xlat0.x;
  let x_1341 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1337.x, x_1337.y, x_1337.z), x_1340);
  u_xlat7 = x_1341;
  let x_1343 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1343 + -1.0f);
  let x_1351 : f32 = x_1349.unity_SpecCube0_HDR.w;
  let x_1353 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1351 * x_1353) + 1.0f);
  let x_1358 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1358, 0.0f);
  let x_1362 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1362);
  let x_1366 : f32 = u_xlat0.x;
  let x_1368 : f32 = x_1349.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1366 * x_1368);
  let x_1372 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1372);
  let x_1376 : f32 = u_xlat0.x;
  let x_1378 : f32 = x_1349.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1376 * x_1378);
  let x_1381 : vec4<f32> = u_xlat7;
  let x_1383 : vec3<f32> = u_xlat0;
  let x_1385 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.y, x_1381.z) * vec3<f32>(x_1383.x, x_1383.x, x_1383.x));
  let x_1386 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1388 : f32 = u_xlat28;
  let x_1390 : f32 = u_xlat28;
  let x_1394 : vec2<f32> = ((vec2<f32>(x_1388, x_1388) * vec2<f32>(x_1390, x_1390)) + vec2<f32>(-1.0f, 1.0f));
  let x_1395 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1394.x, x_1395.y, x_1394.y);
  let x_1398 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1398);
  let x_1400 : vec4<f32> = u_xlat5;
  let x_1403 : f32 = u_xlat45;
  let x_1405 : vec3<f32> = (-(vec3<f32>(x_1400.x, x_1400.y, x_1400.z)) + vec3<f32>(x_1403, x_1403, x_1403));
  let x_1406 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
  let x_1408 : f32 = u_xlat30;
  let x_1410 : vec4<f32> = u_xlat8;
  let x_1413 : vec4<f32> = u_xlat5;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1408, x_1408, x_1408) * vec3<f32>(x_1410.x, x_1410.y, x_1410.z)) + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
  let x_1416 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : f32 = u_xlat28;
  let x_1420 : vec4<f32> = u_xlat8;
  let x_1422 : vec3<f32> = (vec3<f32>(x_1418, x_1418, x_1418) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
  let x_1423 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : vec4<f32> = u_xlat7;
  let x_1427 : vec4<f32> = u_xlat8;
  let x_1429 : vec3<f32> = (vec3<f32>(x_1425.x, x_1425.y, x_1425.z) * vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : vec4<f32> = u_xlat3;
  let x_1434 : vec4<f32> = u_xlat4;
  let x_1437 : vec4<f32> = u_xlat7;
  let x_1439 : vec3<f32> = ((vec3<f32>(x_1432.x, x_1432.y, x_1432.z) * vec3<f32>(x_1434.x, x_1434.y, x_1434.z)) + vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1440 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1443 : f32 = u_xlat2.x;
  let x_1445 : f32 = x_1349.unity_LightData.z;
  u_xlat28 = (x_1443 * x_1445);
  let x_1447 : vec4<f32> = u_xlat1;
  let x_1450 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1447.x, x_1447.y, x_1447.z), vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1455 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1455, 0.0f, 1.0f);
  let x_1458 : f32 = u_xlat28;
  let x_1460 : f32 = u_xlat2.x;
  u_xlat28 = (x_1458 * x_1460);
  let x_1462 : f32 = u_xlat28;
  let x_1465 : vec4<f32> = x_113.x_MainLightColor;
  let x_1467 : vec3<f32> = (vec3<f32>(x_1462, x_1462, x_1462) * vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
  let x_1468 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
  let x_1470 : vec4<f32> = u_xlat6;
  let x_1473 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1475 : vec3<f32> = (vec3<f32>(x_1470.x, x_1470.y, x_1470.z) + vec3<f32>(x_1473.x, x_1473.y, x_1473.z));
  let x_1476 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);
  let x_1478 : vec4<f32> = u_xlat8;
  let x_1480 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1478.x, x_1478.y, x_1478.z), vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
  let x_1483 : f32 = u_xlat28;
  u_xlat28 = max(x_1483, 1.17549435e-38f);
  let x_1486 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1486);
  let x_1488 : f32 = u_xlat28;
  let x_1490 : vec4<f32> = u_xlat8;
  let x_1492 : vec3<f32> = (vec3<f32>(x_1488, x_1488, x_1488) * vec3<f32>(x_1490.x, x_1490.y, x_1490.z));
  let x_1493 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
  let x_1495 : vec4<f32> = u_xlat1;
  let x_1497 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1495.x, x_1495.y, x_1495.z), vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
  let x_1500 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1500, 0.0f, 1.0f);
  let x_1503 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1505 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
  let x_1510 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1510, 0.0f, 1.0f);
  let x_1513 : f32 = u_xlat28;
  let x_1514 : f32 = u_xlat28;
  u_xlat28 = (x_1513 * x_1514);
  let x_1516 : f32 = u_xlat28;
  let x_1518 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1516 * x_1518) + 1.00001001358032226562f);
  let x_1523 : f32 = u_xlat2.x;
  let x_1525 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1523 * x_1525);
  let x_1528 : f32 = u_xlat28;
  let x_1529 : f32 = u_xlat28;
  u_xlat28 = (x_1528 * x_1529);
  let x_1532 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1532, 0.10000000149011611938f);
  let x_1536 : f32 = u_xlat28;
  let x_1538 : f32 = u_xlat2.x;
  u_xlat28 = (x_1536 * x_1538);
  let x_1540 : f32 = u_xlat46;
  let x_1541 : f32 = u_xlat28;
  u_xlat28 = (x_1540 * x_1541);
  let x_1543 : f32 = u_xlat44;
  let x_1544 : f32 = u_xlat28;
  u_xlat28 = (x_1543 / x_1544);
  let x_1546 : vec4<f32> = u_xlat5;
  let x_1548 : f32 = u_xlat28;
  let x_1551 : vec4<f32> = u_xlat4;
  let x_1553 : vec3<f32> = ((vec3<f32>(x_1546.x, x_1546.y, x_1546.z) * vec3<f32>(x_1548, x_1548, x_1548)) + vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
  let x_1554 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
  let x_1556 : vec4<f32> = u_xlat7;
  let x_1558 : vec4<f32> = u_xlat8;
  let x_1560 : vec3<f32> = (vec3<f32>(x_1556.x, x_1556.y, x_1556.z) * vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
  let x_1561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
  let x_1564 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1566 : f32 = x_1349.unity_LightData.y;
  u_xlat28 = min(x_1564, x_1566);
  let x_1569 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1569));
  let x_1572 : f32 = u_xlat16;
  let x_1574 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_1577 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1572 * x_1574) + x_1577);
  let x_1581 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1581, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1594 : u32 = u_xlatu_loop_1;
    let x_1595 : u32 = u_xlatu28;
    if ((x_1594 < x_1595)) {
    } else {
      break;
    }
    let x_1598 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_1598 >> 2u);
    let x_1601 : u32 = u_xlatu_loop_1;
    u_xlati45 = bitcast<i32>((x_1601 & 3u));
    let x_1604 : u32 = u_xlatu30;
    let x_1607 : vec4<f32> = x_1349.unity_LightIndices[bitcast<i32>(x_1604)];
    let x_1617 : i32 = u_xlati45;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1622 : vec4<u32> = indexable[x_1617];
    u_xlat30 = dot(x_1607, bitcast<vec4<f32>>(x_1622));
    let x_1626 : f32 = u_xlat30;
    u_xlati30 = i32(x_1626);
    let x_1628 : vec3<f32> = vs_TEXCOORD7;
    let x_1639 : i32 = u_xlati30;
    let x_1641 : vec4<f32> = x_1638.x_AdditionalLightsPosition[x_1639];
    let x_1644 : i32 = u_xlati30;
    let x_1646 : vec4<f32> = x_1638.x_AdditionalLightsPosition[x_1644];
    let x_1648 : vec3<f32> = ((-(x_1628) * vec3<f32>(x_1641.w, x_1641.w, x_1641.w)) + vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
    let x_1649 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);
    let x_1651 : vec4<f32> = u_xlat9;
    let x_1653 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1651.x, x_1651.y, x_1651.z), vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
    let x_1656 : f32 = u_xlat45;
    u_xlat45 = max(x_1656, 0.00006103515625f);
    let x_1658 : f32 = u_xlat45;
    u_xlat47 = inverseSqrt(x_1658);
    let x_1660 : f32 = u_xlat47;
    let x_1662 : vec4<f32> = u_xlat9;
    let x_1664 : vec3<f32> = (vec3<f32>(x_1660, x_1660, x_1660) * vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
    let x_1665 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
    let x_1668 : f32 = u_xlat45;
    u_xlat48 = (1.0f / x_1668);
    let x_1670 : f32 = u_xlat45;
    let x_1671 : i32 = u_xlati30;
    let x_1673 : f32 = x_1638.x_AdditionalLightsAttenuation[x_1671].x;
    u_xlat45 = (x_1670 * x_1673);
    let x_1675 : f32 = u_xlat45;
    let x_1677 : f32 = u_xlat45;
    u_xlat45 = ((-(x_1675) * x_1677) + 1.0f);
    let x_1680 : f32 = u_xlat45;
    u_xlat45 = max(x_1680, 0.0f);
    let x_1682 : f32 = u_xlat45;
    let x_1683 : f32 = u_xlat45;
    u_xlat45 = (x_1682 * x_1683);
    let x_1685 : f32 = u_xlat45;
    let x_1686 : f32 = u_xlat48;
    u_xlat45 = (x_1685 * x_1686);
    let x_1688 : i32 = u_xlati30;
    let x_1690 : vec4<f32> = x_1638.x_AdditionalLightsSpotDir[x_1688];
    let x_1692 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1690.x, x_1690.y, x_1690.z), vec3<f32>(x_1692.x, x_1692.y, x_1692.z));
    let x_1695 : f32 = u_xlat48;
    let x_1696 : i32 = u_xlati30;
    let x_1698 : f32 = x_1638.x_AdditionalLightsAttenuation[x_1696].z;
    let x_1700 : i32 = u_xlati30;
    let x_1702 : f32 = x_1638.x_AdditionalLightsAttenuation[x_1700].w;
    u_xlat48 = ((x_1695 * x_1698) + x_1702);
    let x_1704 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1704, 0.0f, 1.0f);
    let x_1706 : f32 = u_xlat48;
    let x_1707 : f32 = u_xlat48;
    u_xlat48 = (x_1706 * x_1707);
    let x_1709 : f32 = u_xlat45;
    let x_1710 : f32 = u_xlat48;
    u_xlat45 = (x_1709 * x_1710);
    let x_1713 : i32 = u_xlati30;
    let x_1715 : f32 = x_845.x_AdditionalShadowParams[x_1713].w;
    u_xlati48 = i32(x_1715);
    let x_1718 : i32 = u_xlati48;
    u_xlatb49 = (x_1718 >= 0i);
    let x_1720 : bool = u_xlatb49;
    if (x_1720) {
      let x_1724 : i32 = u_xlati30;
      let x_1726 : f32 = x_845.x_AdditionalShadowParams[x_1724].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1726, x_1726, x_1726, x_1726))));
      let x_1730 : bool = u_xlatb49;
      if (x_1730) {
        let x_1734 : vec4<f32> = u_xlat10;
        let x_1737 : vec4<f32> = u_xlat10;
        let x_1740 : vec4<bool> = (abs(vec4<f32>(x_1734.z, x_1734.z, x_1734.y, x_1734.z)) >= abs(vec4<f32>(x_1737.x, x_1737.y, x_1737.x, x_1737.x)));
        let x_1742 : vec3<bool> = vec3<bool>(x_1740.x, x_1740.y, x_1740.z);
        let x_1743 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1742.x, x_1742.y, x_1742.z, x_1743.w);
        let x_1746 : bool = u_xlatb11.y;
        let x_1748 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1746 & x_1748);
        let x_1750 : vec4<f32> = u_xlat10;
        let x_1753 : vec4<bool> = (-(vec4<f32>(x_1750.z, x_1750.y, x_1750.z, x_1750.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1754 : vec3<bool> = vec3<bool>(x_1753.x, x_1753.y, x_1753.w);
        let x_1755 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1754.x, x_1754.y, x_1755.z, x_1754.z);
        let x_1758 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1758);
        let x_1763 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1763);
        let x_1768 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1768);
        let x_1771 : bool = u_xlatb11.z;
        if (x_1771) {
          let x_1776 : f32 = u_xlat11.y;
          x_1772 = x_1776;
        } else {
          let x_1778 : f32 = u_xlat50;
          x_1772 = x_1778;
        }
        let x_1779 : f32 = x_1772;
        u_xlat50 = x_1779;
        let x_1781 : bool = u_xlatb49;
        if (x_1781) {
          let x_1786 : f32 = u_xlat11.x;
          x_1782 = x_1786;
        } else {
          let x_1788 : f32 = u_xlat50;
          x_1782 = x_1788;
        }
        let x_1789 : f32 = x_1782;
        u_xlat49 = x_1789;
        let x_1790 : i32 = u_xlati30;
        let x_1792 : f32 = x_845.x_AdditionalShadowParams[x_1790].w;
        u_xlat50 = trunc(x_1792);
        let x_1794 : f32 = u_xlat49;
        let x_1795 : f32 = u_xlat50;
        u_xlat49 = (x_1794 + x_1795);
        let x_1797 : f32 = u_xlat49;
        u_xlati48 = i32(x_1797);
      }
      let x_1799 : i32 = u_xlati48;
      u_xlati48 = (x_1799 << bitcast<u32>(2i));
      let x_1801 : vec3<f32> = vs_TEXCOORD7;
      let x_1803 : i32 = u_xlati48;
      let x_1806 : i32 = u_xlati48;
      let x_1810 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1803 + 1i) / 4i)][((x_1806 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1801.y, x_1801.y, x_1801.y, x_1801.y) * x_1810);
      let x_1812 : i32 = u_xlati48;
      let x_1814 : i32 = u_xlati48;
      let x_1817 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_1812 / 4i)][(x_1814 % 4i)];
      let x_1818 : vec3<f32> = vs_TEXCOORD7;
      let x_1821 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1817 * vec4<f32>(x_1818.x, x_1818.x, x_1818.x, x_1818.x)) + x_1821);
      let x_1823 : i32 = u_xlati48;
      let x_1826 : i32 = u_xlati48;
      let x_1830 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1823 + 2i) / 4i)][((x_1826 + 2i) % 4i)];
      let x_1831 : vec3<f32> = vs_TEXCOORD7;
      let x_1834 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1830 * vec4<f32>(x_1831.z, x_1831.z, x_1831.z, x_1831.z)) + x_1834);
      let x_1836 : vec4<f32> = u_xlat11;
      let x_1837 : i32 = u_xlati48;
      let x_1840 : i32 = u_xlati48;
      let x_1844 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1837 + 3i) / 4i)][((x_1840 + 3i) % 4i)];
      u_xlat11 = (x_1836 + x_1844);
      let x_1846 : vec4<f32> = u_xlat11;
      let x_1848 : vec4<f32> = u_xlat11;
      let x_1850 : vec3<f32> = (vec3<f32>(x_1846.x, x_1846.y, x_1846.z) / vec3<f32>(x_1848.w, x_1848.w, x_1848.w));
      let x_1851 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
      let x_1854 : vec4<f32> = u_xlat11;
      let x_1855 : vec2<f32> = vec2<f32>(x_1854.x, x_1854.y);
      let x_1857 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
      let x_1865 : vec3<f32> = txVec1;
      let x_1867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1865.xy, x_1865.z);
      u_xlat48 = x_1867;
      let x_1868 : i32 = u_xlati30;
      let x_1870 : f32 = x_845.x_AdditionalShadowParams[x_1868].x;
      u_xlat49 = (1.0f + -(x_1870));
      let x_1873 : f32 = u_xlat48;
      let x_1874 : i32 = u_xlati30;
      let x_1876 : f32 = x_845.x_AdditionalShadowParams[x_1874].x;
      let x_1878 : f32 = u_xlat49;
      u_xlat48 = ((x_1873 * x_1876) + x_1878);
      let x_1881 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1881);
      let x_1885 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1885 >= 1.0f);
      let x_1887 : bool = u_xlatb49;
      let x_1888 : bool = u_xlatb50;
      u_xlatb49 = (x_1887 | x_1888);
      let x_1890 : bool = u_xlatb49;
      let x_1891 : f32 = u_xlat48;
      u_xlat48 = select(x_1891, 1.0f, x_1890);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1894 : f32 = u_xlat48;
    u_xlat49 = (-(x_1894) + 1.0f);
    let x_1898 : f32 = u_xlat2.x;
    let x_1899 : f32 = u_xlat49;
    let x_1901 : f32 = u_xlat48;
    u_xlat48 = ((x_1898 * x_1899) + x_1901);
    let x_1903 : f32 = u_xlat45;
    let x_1904 : f32 = u_xlat48;
    u_xlat45 = (x_1903 * x_1904);
    let x_1906 : vec4<f32> = u_xlat1;
    let x_1908 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1906.x, x_1906.y, x_1906.z), vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
    let x_1911 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1911, 0.0f, 1.0f);
    let x_1913 : f32 = u_xlat45;
    let x_1914 : f32 = u_xlat48;
    u_xlat45 = (x_1913 * x_1914);
    let x_1916 : f32 = u_xlat45;
    let x_1918 : i32 = u_xlati30;
    let x_1920 : vec4<f32> = x_1638.x_AdditionalLightsColor[x_1918];
    let x_1922 : vec3<f32> = (vec3<f32>(x_1916, x_1916, x_1916) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
    let x_1923 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
    let x_1925 : vec4<f32> = u_xlat9;
    let x_1927 : f32 = u_xlat47;
    let x_1930 : vec4<f32> = u_xlat6;
    let x_1932 : vec3<f32> = ((vec3<f32>(x_1925.x, x_1925.y, x_1925.z) * vec3<f32>(x_1927, x_1927, x_1927)) + vec3<f32>(x_1930.x, x_1930.y, x_1930.z));
    let x_1933 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1932.x, x_1932.y, x_1932.z, x_1933.w);
    let x_1935 : vec4<f32> = u_xlat9;
    let x_1937 : vec4<f32> = u_xlat9;
    u_xlat30 = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
    let x_1940 : f32 = u_xlat30;
    u_xlat30 = max(x_1940, 1.17549435e-38f);
    let x_1942 : f32 = u_xlat30;
    u_xlat30 = inverseSqrt(x_1942);
    let x_1944 : f32 = u_xlat30;
    let x_1946 : vec4<f32> = u_xlat9;
    let x_1948 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
    let x_1949 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
    let x_1951 : vec4<f32> = u_xlat1;
    let x_1953 : vec4<f32> = u_xlat9;
    u_xlat30 = dot(vec3<f32>(x_1951.x, x_1951.y, x_1951.z), vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
    let x_1956 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1956, 0.0f, 1.0f);
    let x_1958 : vec4<f32> = u_xlat10;
    let x_1960 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1958.x, x_1958.y, x_1958.z), vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
    let x_1963 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1963, 0.0f, 1.0f);
    let x_1965 : f32 = u_xlat30;
    let x_1966 : f32 = u_xlat30;
    u_xlat30 = (x_1965 * x_1966);
    let x_1968 : f32 = u_xlat30;
    let x_1970 : f32 = u_xlat0.x;
    u_xlat30 = ((x_1968 * x_1970) + 1.00001001358032226562f);
    let x_1973 : f32 = u_xlat45;
    let x_1974 : f32 = u_xlat45;
    u_xlat45 = (x_1973 * x_1974);
    let x_1976 : f32 = u_xlat30;
    let x_1977 : f32 = u_xlat30;
    u_xlat30 = (x_1976 * x_1977);
    let x_1979 : f32 = u_xlat45;
    u_xlat45 = max(x_1979, 0.10000000149011611938f);
    let x_1981 : f32 = u_xlat30;
    let x_1982 : f32 = u_xlat45;
    u_xlat30 = (x_1981 * x_1982);
    let x_1984 : f32 = u_xlat46;
    let x_1985 : f32 = u_xlat30;
    u_xlat30 = (x_1984 * x_1985);
    let x_1987 : f32 = u_xlat44;
    let x_1988 : f32 = u_xlat30;
    u_xlat30 = (x_1987 / x_1988);
    let x_1990 : vec4<f32> = u_xlat5;
    let x_1992 : f32 = u_xlat30;
    let x_1995 : vec4<f32> = u_xlat4;
    let x_1997 : vec3<f32> = ((vec3<f32>(x_1990.x, x_1990.y, x_1990.z) * vec3<f32>(x_1992, x_1992, x_1992)) + vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
    let x_1998 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1997.x, x_1997.y, x_1997.z, x_1998.w);
    let x_2000 : vec4<f32> = u_xlat9;
    let x_2002 : vec4<f32> = u_xlat11;
    let x_2005 : vec4<f32> = u_xlat8;
    let x_2007 : vec3<f32> = ((vec3<f32>(x_2000.x, x_2000.y, x_2000.z) * vec3<f32>(x_2002.x, x_2002.y, x_2002.z)) + vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2008 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);

    continuing {
      let x_2010 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2010 + bitcast<u32>(1i));
    }
  }
  let x_2012 : vec4<f32> = u_xlat3;
  let x_2014 : f32 = u_xlat14;
  let x_2017 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2012.x, x_2012.y, x_2012.z) * vec3<f32>(x_2014, x_2014, x_2014)) + vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat8;
  let x_2022 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2020.x, x_2020.y, x_2020.z) + x_2022);
  let x_2024 : f32 = u_xlat42;
  let x_2026 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2024, x_2024, x_2024) * x_2026);
  let x_2028 : f32 = u_xlat43;
  let x_2029 : f32 = u_xlat43;
  u_xlat42 = (x_2028 * -(x_2029));
  let x_2032 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2032);
  let x_2036 : vec3<f32> = u_xlat0;
  let x_2037 : f32 = u_xlat42;
  let x_2039 : vec3<f32> = (x_2036 * vec3<f32>(x_2037, x_2037, x_2037));
  let x_2040 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
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


