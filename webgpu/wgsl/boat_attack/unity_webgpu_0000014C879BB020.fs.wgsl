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

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat16 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1313 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlat47 : f32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1591 : AdditionalLights;

var<private> u_xlat48 : f32;

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

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1186 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1728 : f32;
  var x_1738 : f32;
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
  let x_280 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_280);
  let x_282 : bool = u_xlatb44;
  if (((select(0i, 1i, x_282) * -1i) != 0i)) {
    discard;
  }
  let x_291 : f32 = u_xlat43;
  u_xlat43 = (x_291 + 0.00006103515625f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat43;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_372 : vec4<f32> = vs_TEXCOORD1;
  let x_375 : f32 = x_112.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_372.x, x_372.y), x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.z;
  u_xlat6.x = (x_381 * x_383);
  let x_386 : vec4<f32> = u_xlat6;
  let x_391 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(x_396.x, x_396.y));
  let x_399 : f32 = u_xlat43;
  u_xlat43 = min(x_399, 1.0f);
  let x_401 : f32 = u_xlat43;
  u_xlat43 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_404);
  let x_406 : f32 = u_xlat43;
  u_xlat7.z = max(x_406, 0.0000000000000001f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_413 : f32 = x_13.x_NormalScale0;
  let x_415 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413, x_413));
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_422 : vec4<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_112.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_422.z, x_422.w), x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat6.z;
  u_xlat6.x = (x_431 * x_433);
  let x_436 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat6;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat43;
  u_xlat43 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat43;
  u_xlat43 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_452);
  let x_454 : f32 = u_xlat43;
  u_xlat8.z = max(x_454, 0.0000000000000001f);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : f32 = x_13.x_NormalScale1;
  let x_462 : f32 = x_13.x_NormalScale1;
  let x_463 : vec2<f32> = vec2<f32>(x_460, x_462);
  let x_467 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_463.x, x_463.y));
  let x_468 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = u_xlat8;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : vec4<f32> = u_xlat6;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.x, x_477.x) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_491 : vec4<f32> = vs_TEXCOORD2;
  let x_494 : f32 = x_112.x_GlobalMipBias.x;
  let x_495 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_491.x, x_491.y), x_494);
  let x_496 : vec3<f32> = vec3<f32>(x_495.x, x_495.y, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat7.x;
  let x_502 : f32 = u_xlat7.z;
  u_xlat7.x = (x_500 * x_502);
  let x_505 : vec4<f32> = u_xlat7;
  let x_508 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat43;
  u_xlat43 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat43;
  u_xlat43 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_521);
  let x_523 : f32 = u_xlat43;
  u_xlat8.z = max(x_523, 0.0000000000000001f);
  let x_526 : vec4<f32> = u_xlat7;
  let x_530 : f32 = x_13.x_NormalScale2;
  let x_532 : f32 = x_13.x_NormalScale2;
  let x_533 : vec2<f32> = vec2<f32>(x_530, x_532);
  let x_537 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_533.x, x_533.y));
  let x_538 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat8;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.z, x_540.z) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_554 : vec4<f32> = vs_TEXCOORD2;
  let x_557 : f32 = x_112.x_GlobalMipBias.x;
  let x_558 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_554.z, x_554.w), x_557);
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = u_xlat7.x;
  let x_565 : f32 = u_xlat7.z;
  u_xlat7.x = (x_563 * x_565);
  let x_568 : vec4<f32> = u_xlat7;
  let x_571 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat43;
  u_xlat43 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat43;
  u_xlat43 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_584);
  let x_586 : f32 = u_xlat43;
  u_xlat8.z = max(x_586, 0.0000000000000001f);
  let x_589 : vec4<f32> = u_xlat7;
  let x_593 : f32 = x_13.x_NormalScale3;
  let x_595 : f32 = x_13.x_NormalScale3;
  let x_596 : vec2<f32> = vec2<f32>(x_593, x_595);
  let x_600 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_596.x, x_596.y));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat8;
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.w, x_603.w, x_603.w) * vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat6.z;
  u_xlat6.w = (x_614 + 0.00000999999974737875f);
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat43;
  let x_627 : vec4<f32> = u_xlat6;
  let x_629 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.w));
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_642;
  let x_645 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_645;
  let x_648 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_648;
  let x_651 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_651;
  let x_654 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_654;
  let x_656 : vec4<f32> = u_xlat7;
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_656 + x_657);
  let x_660 : f32 = u_xlat0.z;
  u_xlat8.x = x_660;
  let x_663 : f32 = u_xlat1.z;
  u_xlat8.y = x_663;
  let x_666 : f32 = u_xlat2.z;
  u_xlat8.z = x_666;
  let x_669 : f32 = u_xlat3.y;
  u_xlat8.w = x_669;
  let x_671 : vec4<f32> = u_xlat9;
  let x_674 : f32 = x_13.x_Smoothness0;
  let x_676 : f32 = x_13.x_Smoothness1;
  let x_678 : f32 = x_13.x_Smoothness2;
  let x_680 : f32 = x_13.x_Smoothness3;
  let x_683 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_671) * vec4<f32>(x_674, x_676, x_678, x_680)) + x_683);
  let x_687 : f32 = x_13.x_LayerHasMask0;
  let x_690 : f32 = x_13.x_LayerHasMask1;
  let x_693 : f32 = x_13.x_LayerHasMask2;
  let x_696 : f32 = x_13.x_LayerHasMask3;
  let x_698 : vec4<f32> = u_xlat8;
  let x_700 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_687, x_690, x_693, x_696) * x_698) + x_700);
  let x_703 : vec4<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_703, x_704);
  let x_707 : f32 = u_xlat0.x;
  u_xlat8.x = x_707;
  let x_710 : f32 = u_xlat1.x;
  u_xlat8.y = x_710;
  let x_713 : f32 = u_xlat2.x;
  u_xlat8.z = x_713;
  let x_716 : f32 = u_xlat3.x;
  u_xlat8.w = x_716;
  let x_718 : vec4<f32> = u_xlat8;
  let x_721 : f32 = x_13.x_Metallic0;
  let x_724 : f32 = x_13.x_Metallic1;
  let x_727 : f32 = x_13.x_Metallic2;
  let x_730 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_718 + -(vec4<f32>(x_721, x_724, x_727, x_730)));
  let x_735 : f32 = x_13.x_LayerHasMask0;
  let x_737 : f32 = x_13.x_LayerHasMask1;
  let x_739 : f32 = x_13.x_LayerHasMask2;
  let x_741 : f32 = x_13.x_LayerHasMask3;
  let x_743 : vec4<f32> = u_xlat8;
  let x_746 : f32 = x_13.x_Metallic0;
  let x_748 : f32 = x_13.x_Metallic1;
  let x_750 : f32 = x_13.x_Metallic2;
  let x_752 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_735, x_737, x_739, x_741) * x_743) + vec4<f32>(x_746, x_748, x_750, x_752));
  let x_755 : vec4<f32> = u_xlat4;
  let x_756 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_755, x_756);
  let x_760 : f32 = u_xlat0.y;
  u_xlat3.x = x_760;
  let x_763 : f32 = u_xlat1.y;
  u_xlat3.y = x_763;
  let x_766 : f32 = u_xlat2.y;
  u_xlat3.z = x_766;
  let x_768 : vec4<f32> = u_xlat7;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_768) + x_770);
  let x_773 : f32 = x_13.x_LayerHasMask0;
  let x_775 : f32 = x_13.x_LayerHasMask1;
  let x_777 : f32 = x_13.x_LayerHasMask2;
  let x_779 : f32 = x_13.x_LayerHasMask3;
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_773, x_775, x_777, x_779) * x_781) + x_783);
  let x_786 : vec4<f32> = u_xlat4;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_786, x_787);
  let x_789 : vec4<f32> = u_xlat6;
  let x_792 : vec4<f32> = vs_TEXCOORD5;
  let x_794 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD4;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.x, x_797.x) * -(vec3<f32>(x_800.x, x_800.y, x_800.z))) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD3;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_809.z, x_809.z, x_809.z) * vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat1;
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat43;
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : vec3<f32> = vs_TEXCOORD7;
  let x_847 : vec4<f32> = x_845.x_CascadeShadowSplitSpheres0;
  let x_850 : vec3<f32> = (x_836 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
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
  let x_1030 : vec4<f32> = vs_TEXCOORD0;
  let x_1033 : f32 = x_112.x_GlobalMipBias.x;
  let x_1034 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1030.z, x_1030.w), x_1033);
  u_xlat3 = x_1034;
  let x_1039 : vec4<f32> = vs_TEXCOORD0;
  let x_1042 : f32 = x_112.x_GlobalMipBias.x;
  let x_1043 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1039.z, x_1039.w), x_1042);
  let x_1044 : vec3<f32> = vec3<f32>(x_1043.x, x_1043.y, x_1043.z);
  let x_1045 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat3;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1052 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat1;
  let x_1056 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : f32 = u_xlat43;
  u_xlat43 = (x_1059 + 0.5f);
  let x_1061 : f32 = u_xlat43;
  let x_1063 : vec4<f32> = u_xlat4;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061, x_1061, x_1061) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1069 : f32 = u_xlat3.w;
  u_xlat43 = max(x_1069, 0.00009999999747378752f);
  let x_1072 : vec4<f32> = u_xlat3;
  let x_1074 : f32 = u_xlat43;
  let x_1076 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) / vec3<f32>(x_1074, x_1074, x_1074));
  let x_1077 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1080 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1080) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1086 : f32 = u_xlat28;
  let x_1087 : f32 = u_xlat43;
  u_xlat44 = (x_1086 + -(x_1087));
  let x_1090 : f32 = u_xlat43;
  let x_1092 : vec4<f32> = u_xlat5;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat5;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1102 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : vec3<f32> = u_xlat0;
  let x_1106 : vec4<f32> = u_xlat5;
  let x_1111 : vec3<f32> = ((vec3<f32>(x_1104.x, x_1104.x, x_1104.x) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1112 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1114) + 1.0f);
  let x_1119 : f32 = u_xlat0.x;
  let x_1121 : f32 = u_xlat0.x;
  u_xlat28 = (x_1119 * x_1121);
  let x_1123 : f32 = u_xlat28;
  u_xlat28 = max(x_1123, 0.0078125f);
  let x_1126 : f32 = u_xlat28;
  let x_1127 : f32 = u_xlat28;
  u_xlat43 = (x_1126 * x_1127);
  let x_1129 : f32 = u_xlat44;
  u_xlat44 = (x_1129 + 1.0f);
  let x_1131 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1131, 0.0f, 1.0f);
  let x_1134 : f32 = u_xlat28;
  u_xlat45 = ((x_1134 * 4.0f) + 2.0f);
  let x_1137 : f32 = u_xlat14;
  u_xlat14 = min(x_1137, 1.0f);
  let x_1141 : vec4<f32> = u_xlat2;
  let x_1142 : vec2<f32> = vec2<f32>(x_1141.x, x_1141.y);
  let x_1144 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1142.x, x_1142.y, x_1144);
  let x_1156 : vec3<f32> = txVec0;
  let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1156.xy, x_1156.z);
  u_xlat2.x = x_1158;
  let x_1162 : f32 = x_845.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1162) + 1.0f);
  let x_1166 : f32 = u_xlat2.x;
  let x_1168 : f32 = x_845.x_MainLightShadowParams.x;
  let x_1170 : f32 = u_xlat16;
  u_xlat2.x = ((x_1166 * x_1168) + x_1170);
  let x_1175 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1175);
  let x_1179 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1179 >= 1.0f);
  let x_1181 : bool = u_xlatb30;
  let x_1182 : bool = u_xlatb16;
  u_xlatb16 = (x_1181 | x_1182);
  let x_1184 : bool = u_xlatb16;
  if (x_1184) {
    x_1186 = 1.0f;
  } else {
    let x_1191 : f32 = u_xlat2.x;
    x_1186 = x_1191;
  }
  let x_1192 : f32 = x_1186;
  u_xlat2.x = x_1192;
  let x_1194 : vec3<f32> = vs_TEXCOORD7;
  let x_1197 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_1199 : vec3<f32> = (x_1194 + -(x_1197));
  let x_1200 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : vec4<f32> = u_xlat6;
  let x_1204 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1208 : f32 = u_xlat16;
  let x_1210 : f32 = x_845.x_MainLightShadowParams.z;
  let x_1213 : f32 = x_845.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1208 * x_1210) + x_1213);
  let x_1215 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1215, 0.0f, 1.0f);
  let x_1219 : f32 = u_xlat2.x;
  u_xlat46 = (-(x_1219) + 1.0f);
  let x_1222 : f32 = u_xlat30;
  let x_1223 : f32 = u_xlat46;
  let x_1226 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1222 * x_1223) + x_1226);
  let x_1231 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1231;
  let x_1234 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1234;
  let x_1237 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1237;
  let x_1239 : vec4<f32> = u_xlat6;
  let x_1242 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1239.x, x_1239.y, x_1239.z)), vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
  let x_1245 : f32 = u_xlat30;
  let x_1246 : f32 = u_xlat30;
  u_xlat30 = (x_1245 + x_1246);
  let x_1248 : vec4<f32> = u_xlat1;
  let x_1250 : f32 = u_xlat30;
  let x_1254 : vec4<f32> = u_xlat6;
  let x_1257 : vec3<f32> = ((vec3<f32>(x_1248.x, x_1248.y, x_1248.z) * -(vec3<f32>(x_1250, x_1250, x_1250))) + -(vec3<f32>(x_1254.x, x_1254.y, x_1254.z)));
  let x_1258 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1260 : vec4<f32> = u_xlat1;
  let x_1262 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1260.x, x_1260.y, x_1260.z), vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
  let x_1265 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1265, 0.0f, 1.0f);
  let x_1267 : f32 = u_xlat30;
  u_xlat30 = (-(x_1267) + 1.0f);
  let x_1270 : f32 = u_xlat30;
  let x_1271 : f32 = u_xlat30;
  u_xlat30 = (x_1270 * x_1271);
  let x_1273 : f32 = u_xlat30;
  let x_1274 : f32 = u_xlat30;
  u_xlat30 = (x_1273 * x_1274);
  let x_1277 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1277) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1284 : f32 = u_xlat0.x;
  let x_1285 : f32 = u_xlat46;
  u_xlat0.x = (x_1284 * x_1285);
  let x_1289 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1289 * 6.0f);
  let x_1301 : vec4<f32> = u_xlat7;
  let x_1304 : f32 = u_xlat0.x;
  let x_1305 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1301.x, x_1301.y, x_1301.z), x_1304);
  u_xlat7 = x_1305;
  let x_1307 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1307 + -1.0f);
  let x_1315 : f32 = x_1313.unity_SpecCube0_HDR.w;
  let x_1317 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1315 * x_1317) + 1.0f);
  let x_1322 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1322, 0.0f);
  let x_1326 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1326);
  let x_1330 : f32 = u_xlat0.x;
  let x_1332 : f32 = x_1313.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1330 * x_1332);
  let x_1336 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1336);
  let x_1340 : f32 = u_xlat0.x;
  let x_1342 : f32 = x_1313.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1340 * x_1342);
  let x_1345 : vec4<f32> = u_xlat7;
  let x_1347 : vec3<f32> = u_xlat0;
  let x_1349 : vec3<f32> = (vec3<f32>(x_1345.x, x_1345.y, x_1345.z) * vec3<f32>(x_1347.x, x_1347.x, x_1347.x));
  let x_1350 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
  let x_1352 : f32 = u_xlat28;
  let x_1354 : f32 = u_xlat28;
  let x_1358 : vec2<f32> = ((vec2<f32>(x_1352, x_1352) * vec2<f32>(x_1354, x_1354)) + vec2<f32>(-1.0f, 1.0f));
  let x_1359 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1358.x, x_1359.y, x_1358.y);
  let x_1362 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1362);
  let x_1364 : vec4<f32> = u_xlat5;
  let x_1367 : f32 = u_xlat44;
  let x_1369 : vec3<f32> = (-(vec3<f32>(x_1364.x, x_1364.y, x_1364.z)) + vec3<f32>(x_1367, x_1367, x_1367));
  let x_1370 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
  let x_1372 : f32 = u_xlat30;
  let x_1374 : vec4<f32> = u_xlat8;
  let x_1377 : vec4<f32> = u_xlat5;
  let x_1379 : vec3<f32> = ((vec3<f32>(x_1372, x_1372, x_1372) * vec3<f32>(x_1374.x, x_1374.y, x_1374.z)) + vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1380 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : f32 = u_xlat28;
  let x_1384 : vec4<f32> = u_xlat8;
  let x_1386 : vec3<f32> = (vec3<f32>(x_1382, x_1382, x_1382) * vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1389 : vec4<f32> = u_xlat7;
  let x_1391 : vec4<f32> = u_xlat8;
  let x_1393 : vec3<f32> = (vec3<f32>(x_1389.x, x_1389.y, x_1389.z) * vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  let x_1396 : vec4<f32> = u_xlat3;
  let x_1398 : vec4<f32> = u_xlat4;
  let x_1401 : vec4<f32> = u_xlat7;
  let x_1403 : vec3<f32> = ((vec3<f32>(x_1396.x, x_1396.y, x_1396.z) * vec3<f32>(x_1398.x, x_1398.y, x_1398.z)) + vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
  let x_1404 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
  let x_1407 : f32 = u_xlat2.x;
  let x_1409 : f32 = x_1313.unity_LightData.z;
  u_xlat28 = (x_1407 * x_1409);
  let x_1411 : vec4<f32> = u_xlat1;
  let x_1414 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1411.x, x_1411.y, x_1411.z), vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
  let x_1419 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1419, 0.0f, 1.0f);
  let x_1422 : f32 = u_xlat28;
  let x_1424 : f32 = u_xlat2.x;
  u_xlat28 = (x_1422 * x_1424);
  let x_1426 : f32 = u_xlat28;
  let x_1429 : vec4<f32> = x_112.x_MainLightColor;
  let x_1431 : vec3<f32> = (vec3<f32>(x_1426, x_1426, x_1426) * vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
  let x_1432 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1431.x, x_1432.y, x_1431.y, x_1431.z);
  let x_1434 : vec4<f32> = u_xlat6;
  let x_1437 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1439 : vec3<f32> = (vec3<f32>(x_1434.x, x_1434.y, x_1434.z) + vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1440 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1442 : vec4<f32> = u_xlat7;
  let x_1444 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1442.x, x_1442.y, x_1442.z), vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
  let x_1447 : f32 = u_xlat28;
  u_xlat28 = max(x_1447, 1.17549435e-38f);
  let x_1450 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1450);
  let x_1452 : f32 = u_xlat28;
  let x_1454 : vec4<f32> = u_xlat7;
  let x_1456 : vec3<f32> = (vec3<f32>(x_1452, x_1452, x_1452) * vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
  let x_1457 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1457.w);
  let x_1459 : vec4<f32> = u_xlat1;
  let x_1461 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1459.x, x_1459.y, x_1459.z), vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
  let x_1464 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1464, 0.0f, 1.0f);
  let x_1467 : vec4<f32> = x_112.x_MainLightPosition;
  let x_1469 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_1467.x, x_1467.y, x_1467.z), vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
  let x_1472 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1472, 0.0f, 1.0f);
  let x_1474 : f32 = u_xlat28;
  let x_1475 : f32 = u_xlat28;
  u_xlat28 = (x_1474 * x_1475);
  let x_1477 : f32 = u_xlat28;
  let x_1479 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1477 * x_1479) + 1.00001001358032226562f);
  let x_1483 : f32 = u_xlat46;
  let x_1484 : f32 = u_xlat46;
  u_xlat46 = (x_1483 * x_1484);
  let x_1486 : f32 = u_xlat28;
  let x_1487 : f32 = u_xlat28;
  u_xlat28 = (x_1486 * x_1487);
  let x_1489 : f32 = u_xlat46;
  u_xlat46 = max(x_1489, 0.10000000149011611938f);
  let x_1492 : f32 = u_xlat28;
  let x_1493 : f32 = u_xlat46;
  u_xlat28 = (x_1492 * x_1493);
  let x_1495 : f32 = u_xlat45;
  let x_1496 : f32 = u_xlat28;
  u_xlat28 = (x_1495 * x_1496);
  let x_1498 : f32 = u_xlat43;
  let x_1499 : f32 = u_xlat28;
  u_xlat28 = (x_1498 / x_1499);
  let x_1501 : vec4<f32> = u_xlat5;
  let x_1503 : f32 = u_xlat28;
  let x_1506 : vec4<f32> = u_xlat4;
  let x_1508 : vec3<f32> = ((vec3<f32>(x_1501.x, x_1501.y, x_1501.z) * vec3<f32>(x_1503, x_1503, x_1503)) + vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
  let x_1509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
  let x_1511 : vec4<f32> = u_xlat2;
  let x_1513 : vec4<f32> = u_xlat7;
  let x_1515 : vec3<f32> = (vec3<f32>(x_1511.x, x_1511.z, x_1511.w) * vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
  let x_1516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1515.x, x_1516.y, x_1515.y, x_1515.z);
  let x_1519 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_1521 : f32 = x_1313.unity_LightData.y;
  u_xlat28 = min(x_1519, x_1521);
  let x_1524 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1524));
  let x_1527 : f32 = u_xlat16;
  let x_1529 : f32 = x_845.x_AdditionalShadowFadeParams.x;
  let x_1532 : f32 = x_845.x_AdditionalShadowFadeParams.y;
  u_xlat16 = ((x_1527 * x_1529) + x_1532);
  let x_1534 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1534, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1546 : u32 = u_xlatu_loop_1;
    let x_1547 : u32 = u_xlatu28;
    if ((x_1546 < x_1547)) {
    } else {
      break;
    }
    let x_1550 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1550 >> 2u);
    let x_1553 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1553 & 3u));
    let x_1557 : u32 = u_xlatu47;
    let x_1560 : vec4<f32> = x_1313.unity_LightIndices[bitcast<i32>(x_1557)];
    let x_1570 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1575 : vec4<u32> = indexable[x_1570];
    u_xlat47 = dot(x_1560, bitcast<vec4<f32>>(x_1575));
    let x_1579 : f32 = u_xlat47;
    u_xlati47 = i32(x_1579);
    let x_1581 : vec3<f32> = vs_TEXCOORD7;
    let x_1592 : i32 = u_xlati47;
    let x_1594 : vec4<f32> = x_1591.x_AdditionalLightsPosition[x_1592];
    let x_1597 : i32 = u_xlati47;
    let x_1599 : vec4<f32> = x_1591.x_AdditionalLightsPosition[x_1597];
    let x_1601 : vec3<f32> = ((-(x_1581) * vec3<f32>(x_1594.w, x_1594.w, x_1594.w)) + vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
    let x_1602 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
    let x_1605 : vec4<f32> = u_xlat8;
    let x_1607 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1605.x, x_1605.y, x_1605.z), vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
    let x_1610 : f32 = u_xlat48;
    u_xlat48 = max(x_1610, 0.00006103515625f);
    let x_1613 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1613);
    let x_1615 : f32 = u_xlat49;
    let x_1617 : vec4<f32> = u_xlat8;
    let x_1619 : vec3<f32> = (vec3<f32>(x_1615, x_1615, x_1615) * vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
    let x_1620 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
    let x_1623 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1623);
    let x_1625 : f32 = u_xlat48;
    let x_1626 : i32 = u_xlati47;
    let x_1628 : f32 = x_1591.x_AdditionalLightsAttenuation[x_1626].x;
    u_xlat48 = (x_1625 * x_1628);
    let x_1630 : f32 = u_xlat48;
    let x_1632 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1630) * x_1632) + 1.0f);
    let x_1635 : f32 = u_xlat48;
    u_xlat48 = max(x_1635, 0.0f);
    let x_1637 : f32 = u_xlat48;
    let x_1638 : f32 = u_xlat48;
    u_xlat48 = (x_1637 * x_1638);
    let x_1640 : f32 = u_xlat48;
    let x_1641 : f32 = u_xlat50;
    u_xlat48 = (x_1640 * x_1641);
    let x_1643 : i32 = u_xlati47;
    let x_1645 : vec4<f32> = x_1591.x_AdditionalLightsSpotDir[x_1643];
    let x_1647 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1645.x, x_1645.y, x_1645.z), vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
    let x_1650 : f32 = u_xlat50;
    let x_1651 : i32 = u_xlati47;
    let x_1653 : f32 = x_1591.x_AdditionalLightsAttenuation[x_1651].z;
    let x_1655 : i32 = u_xlati47;
    let x_1657 : f32 = x_1591.x_AdditionalLightsAttenuation[x_1655].w;
    u_xlat50 = ((x_1650 * x_1653) + x_1657);
    let x_1659 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1659, 0.0f, 1.0f);
    let x_1661 : f32 = u_xlat50;
    let x_1662 : f32 = u_xlat50;
    u_xlat50 = (x_1661 * x_1662);
    let x_1664 : f32 = u_xlat48;
    let x_1665 : f32 = u_xlat50;
    u_xlat48 = (x_1664 * x_1665);
    let x_1668 : i32 = u_xlati47;
    let x_1670 : f32 = x_845.x_AdditionalShadowParams[x_1668].w;
    u_xlati50 = i32(x_1670);
    let x_1673 : i32 = u_xlati50;
    u_xlatb51 = (x_1673 >= 0i);
    let x_1675 : bool = u_xlatb51;
    if (x_1675) {
      let x_1679 : i32 = u_xlati47;
      let x_1681 : f32 = x_845.x_AdditionalShadowParams[x_1679].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1681, x_1681, x_1681, x_1681))));
      let x_1685 : bool = u_xlatb51;
      if (x_1685) {
        let x_1689 : vec4<f32> = u_xlat9;
        let x_1692 : vec4<f32> = u_xlat9;
        let x_1695 : vec4<bool> = (abs(vec4<f32>(x_1689.z, x_1689.z, x_1689.y, x_1689.z)) >= abs(vec4<f32>(x_1692.x, x_1692.y, x_1692.x, x_1692.x)));
        let x_1697 : vec3<bool> = vec3<bool>(x_1695.x, x_1695.y, x_1695.z);
        let x_1698 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
        let x_1701 : bool = u_xlatb10.y;
        let x_1703 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1701 & x_1703);
        let x_1705 : vec4<f32> = u_xlat9;
        let x_1708 : vec4<bool> = (-(vec4<f32>(x_1705.z, x_1705.y, x_1705.z, x_1705.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1709 : vec3<bool> = vec3<bool>(x_1708.x, x_1708.y, x_1708.w);
        let x_1710 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1709.x, x_1709.y, x_1710.z, x_1709.z);
        let x_1713 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1713);
        let x_1718 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1718);
        let x_1723 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1723);
        let x_1727 : bool = u_xlatb10.z;
        if (x_1727) {
          let x_1732 : f32 = u_xlat10.y;
          x_1728 = x_1732;
        } else {
          let x_1734 : f32 = u_xlat52;
          x_1728 = x_1734;
        }
        let x_1735 : f32 = x_1728;
        u_xlat24 = x_1735;
        let x_1737 : bool = u_xlatb51;
        if (x_1737) {
          let x_1742 : f32 = u_xlat10.x;
          x_1738 = x_1742;
        } else {
          let x_1744 : f32 = u_xlat24;
          x_1738 = x_1744;
        }
        let x_1745 : f32 = x_1738;
        u_xlat51 = x_1745;
        let x_1746 : i32 = u_xlati47;
        let x_1748 : f32 = x_845.x_AdditionalShadowParams[x_1746].w;
        u_xlat10.x = trunc(x_1748);
        let x_1751 : f32 = u_xlat51;
        let x_1753 : f32 = u_xlat10.x;
        u_xlat51 = (x_1751 + x_1753);
        let x_1755 : f32 = u_xlat51;
        u_xlati50 = i32(x_1755);
      }
      let x_1757 : i32 = u_xlati50;
      u_xlati50 = (x_1757 << bitcast<u32>(2i));
      let x_1759 : vec3<f32> = vs_TEXCOORD7;
      let x_1761 : i32 = u_xlati50;
      let x_1764 : i32 = u_xlati50;
      let x_1768 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1761 + 1i) / 4i)][((x_1764 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1759.y, x_1759.y, x_1759.y, x_1759.y) * x_1768);
      let x_1770 : i32 = u_xlati50;
      let x_1772 : i32 = u_xlati50;
      let x_1775 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[(x_1770 / 4i)][(x_1772 % 4i)];
      let x_1776 : vec3<f32> = vs_TEXCOORD7;
      let x_1779 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1775 * vec4<f32>(x_1776.x, x_1776.x, x_1776.x, x_1776.x)) + x_1779);
      let x_1781 : i32 = u_xlati50;
      let x_1784 : i32 = u_xlati50;
      let x_1788 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1781 + 2i) / 4i)][((x_1784 + 2i) % 4i)];
      let x_1789 : vec3<f32> = vs_TEXCOORD7;
      let x_1792 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1788 * vec4<f32>(x_1789.z, x_1789.z, x_1789.z, x_1789.z)) + x_1792);
      let x_1794 : vec4<f32> = u_xlat10;
      let x_1795 : i32 = u_xlati50;
      let x_1798 : i32 = u_xlati50;
      let x_1802 : vec4<f32> = x_845.x_AdditionalLightsWorldToShadow[((x_1795 + 3i) / 4i)][((x_1798 + 3i) % 4i)];
      u_xlat10 = (x_1794 + x_1802);
      let x_1804 : vec4<f32> = u_xlat10;
      let x_1806 : vec4<f32> = u_xlat10;
      let x_1808 : vec3<f32> = (vec3<f32>(x_1804.x, x_1804.y, x_1804.z) / vec3<f32>(x_1806.w, x_1806.w, x_1806.w));
      let x_1809 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
      let x_1812 : vec4<f32> = u_xlat10;
      let x_1813 : vec2<f32> = vec2<f32>(x_1812.x, x_1812.y);
      let x_1815 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1813.x, x_1813.y, x_1815);
      let x_1823 : vec3<f32> = txVec1;
      let x_1825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1823.xy, x_1823.z);
      u_xlat50 = x_1825;
      let x_1826 : i32 = u_xlati47;
      let x_1828 : f32 = x_845.x_AdditionalShadowParams[x_1826].x;
      u_xlat51 = (1.0f + -(x_1828));
      let x_1831 : f32 = u_xlat50;
      let x_1832 : i32 = u_xlati47;
      let x_1834 : f32 = x_845.x_AdditionalShadowParams[x_1832].x;
      let x_1836 : f32 = u_xlat51;
      u_xlat50 = ((x_1831 * x_1834) + x_1836);
      let x_1839 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1839);
      let x_1842 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1842 >= 1.0f);
      let x_1845 : bool = u_xlatb51;
      let x_1847 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1845 | x_1847);
      let x_1849 : bool = u_xlatb51;
      let x_1850 : f32 = u_xlat50;
      u_xlat50 = select(x_1850, 1.0f, x_1849);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1853 : f32 = u_xlat50;
    u_xlat51 = (-(x_1853) + 1.0f);
    let x_1856 : f32 = u_xlat16;
    let x_1857 : f32 = u_xlat51;
    let x_1859 : f32 = u_xlat50;
    u_xlat50 = ((x_1856 * x_1857) + x_1859);
    let x_1861 : f32 = u_xlat48;
    let x_1862 : f32 = u_xlat50;
    u_xlat48 = (x_1861 * x_1862);
    let x_1864 : vec4<f32> = u_xlat1;
    let x_1866 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1864.x, x_1864.y, x_1864.z), vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
    let x_1869 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1869, 0.0f, 1.0f);
    let x_1871 : f32 = u_xlat48;
    let x_1872 : f32 = u_xlat50;
    u_xlat48 = (x_1871 * x_1872);
    let x_1874 : f32 = u_xlat48;
    let x_1876 : i32 = u_xlati47;
    let x_1878 : vec4<f32> = x_1591.x_AdditionalLightsColor[x_1876];
    let x_1880 : vec3<f32> = (vec3<f32>(x_1874, x_1874, x_1874) * vec3<f32>(x_1878.x, x_1878.y, x_1878.z));
    let x_1881 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
    let x_1883 : vec4<f32> = u_xlat8;
    let x_1885 : f32 = u_xlat49;
    let x_1888 : vec4<f32> = u_xlat6;
    let x_1890 : vec3<f32> = ((vec3<f32>(x_1883.x, x_1883.y, x_1883.z) * vec3<f32>(x_1885, x_1885, x_1885)) + vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
    let x_1891 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
    let x_1893 : vec4<f32> = u_xlat8;
    let x_1895 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1893.x, x_1893.y, x_1893.z), vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
    let x_1898 : f32 = u_xlat47;
    u_xlat47 = max(x_1898, 1.17549435e-38f);
    let x_1900 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1900);
    let x_1902 : f32 = u_xlat47;
    let x_1904 : vec4<f32> = u_xlat8;
    let x_1906 : vec3<f32> = (vec3<f32>(x_1902, x_1902, x_1902) * vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
    let x_1907 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
    let x_1909 : vec4<f32> = u_xlat1;
    let x_1911 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
    let x_1914 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1914, 0.0f, 1.0f);
    let x_1916 : vec4<f32> = u_xlat9;
    let x_1918 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1916.x, x_1916.y, x_1916.z), vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
    let x_1921 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1921, 0.0f, 1.0f);
    let x_1923 : f32 = u_xlat47;
    let x_1924 : f32 = u_xlat47;
    u_xlat47 = (x_1923 * x_1924);
    let x_1926 : f32 = u_xlat47;
    let x_1928 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1926 * x_1928) + 1.00001001358032226562f);
    let x_1931 : f32 = u_xlat48;
    let x_1932 : f32 = u_xlat48;
    u_xlat48 = (x_1931 * x_1932);
    let x_1934 : f32 = u_xlat47;
    let x_1935 : f32 = u_xlat47;
    u_xlat47 = (x_1934 * x_1935);
    let x_1937 : f32 = u_xlat48;
    u_xlat48 = max(x_1937, 0.10000000149011611938f);
    let x_1939 : f32 = u_xlat47;
    let x_1940 : f32 = u_xlat48;
    u_xlat47 = (x_1939 * x_1940);
    let x_1942 : f32 = u_xlat45;
    let x_1943 : f32 = u_xlat47;
    u_xlat47 = (x_1942 * x_1943);
    let x_1945 : f32 = u_xlat43;
    let x_1946 : f32 = u_xlat47;
    u_xlat47 = (x_1945 / x_1946);
    let x_1948 : vec4<f32> = u_xlat5;
    let x_1950 : f32 = u_xlat47;
    let x_1953 : vec4<f32> = u_xlat4;
    let x_1955 : vec3<f32> = ((vec3<f32>(x_1948.x, x_1948.y, x_1948.z) * vec3<f32>(x_1950, x_1950, x_1950)) + vec3<f32>(x_1953.x, x_1953.y, x_1953.z));
    let x_1956 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
    let x_1958 : vec4<f32> = u_xlat8;
    let x_1960 : vec4<f32> = u_xlat10;
    let x_1963 : vec4<f32> = u_xlat7;
    let x_1965 : vec3<f32> = ((vec3<f32>(x_1958.x, x_1958.y, x_1958.z) * vec3<f32>(x_1960.x, x_1960.y, x_1960.z)) + vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
    let x_1966 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);

    continuing {
      let x_1968 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1968 + bitcast<u32>(1i));
    }
  }
  let x_1970 : vec4<f32> = u_xlat3;
  let x_1972 : f32 = u_xlat14;
  let x_1975 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1970.x, x_1970.y, x_1970.z) * vec3<f32>(x_1972, x_1972, x_1972)) + vec3<f32>(x_1975.x, x_1975.z, x_1975.w));
  let x_1978 : vec4<f32> = u_xlat7;
  let x_1980 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1978.x, x_1978.y, x_1978.z) + x_1980);
  let x_1984 : f32 = u_xlat42;
  let x_1986 : vec3<f32> = u_xlat0;
  let x_1987 : vec3<f32> = (vec3<f32>(x_1984, x_1984, x_1984) * x_1986);
  let x_1988 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
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


