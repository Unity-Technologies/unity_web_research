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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_80 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat27 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb5 : bool;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1780 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2023 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu27 : u32;

var<private> u_xlatb80 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1658 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2165 : f32;
  var x_2176 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_28.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1 = x_48.x;
  let x_53 : vec4<f32> = vs_TEXCOORD3;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_60 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_60);
  let x_63 : vec3<f32> = u_xlat26;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_71 : vec3<f32> = vs_TEXCOORD7;
  let x_84 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres0;
  let x_87 : vec3<f32> = (x_71 + -(vec3<f32>(x_84.x, x_84.y, x_84.z)));
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_91 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres1;
  let x_97 : vec3<f32> = (x_91 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_109 : vec3<f32> = vs_TEXCOORD7;
  let x_112 : vec4<f32> = x_80.x_CascadeShadowSplitSpheres3;
  let x_115 : vec3<f32> = (x_109 + -(vec3<f32>(x_112.x, x_112.y, x_112.z)));
  let x_116 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_118 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_118.x, x_118.y, x_118.z), vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_124 : vec4<f32> = u_xlat3;
  let x_126 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec3<f32> = u_xlat4;
  let x_132 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_131, x_132);
  let x_136 : vec4<f32> = u_xlat5;
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = u_xlat2;
  let x_150 : vec4<f32> = x_80.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_147 < x_150);
  let x_154 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_154);
  let x_160 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_172);
  let x_178 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_178);
  let x_182 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_182);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + vec3<f32>(x_187.y, x_187.z, x_187.w));
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_195 : vec3<f32> = max(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_196.x, x_195.x, x_195.y, x_195.z);
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_198, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_206 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_206) + 4.0f);
  let x_213 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_213);
  let x_217 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_217) << bitcast<u32>(2i));
  let x_221 : vec3<f32> = vs_TEXCOORD7;
  let x_223 : i32 = u_xlati2;
  let x_226 : i32 = u_xlati2;
  let x_230 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_223 + 1i) / 4i)][((x_226 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_221.y, x_221.y, x_221.y) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : i32 = u_xlati2;
  let x_235 : i32 = u_xlati2;
  let x_238 : vec4<f32> = x_80.x_MainLightWorldToShadow[(x_233 / 4i)][(x_235 % 4i)];
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_243 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + x_243);
  let x_245 : i32 = u_xlati2;
  let x_248 : i32 = u_xlati2;
  let x_252 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_245 + 2i) / 4i)][((x_248 + 2i) % 4i)];
  let x_254 : vec3<f32> = vs_TEXCOORD7;
  let x_257 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.z, x_254.z, x_254.z)) + x_257);
  let x_259 : vec3<f32> = u_xlat27;
  let x_260 : i32 = u_xlati2;
  let x_263 : i32 = u_xlati2;
  let x_267 : vec4<f32> = x_80.x_MainLightWorldToShadow[((x_260 + 3i) / 4i)][((x_263 + 3i) % 4i)];
  let x_269 : vec3<f32> = (x_259 + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_277 : vec4<f32> = vs_TEXCOORD0;
  let x_280 : f32 = x_28.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_277.z, x_277.w), x_280);
  u_xlat3 = x_281;
  let x_286 : vec4<f32> = vs_TEXCOORD0;
  let x_289 : f32 = x_28.x_GlobalMipBias.x;
  let x_290 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_286.z, x_286.w), x_289);
  u_xlat4 = vec3<f32>(x_290.x, x_290.y, x_290.z);
  let x_292 : vec4<f32> = u_xlat3;
  let x_296 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_300 : vec3<f32> = u_xlat26;
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat77 = dot(x_300, vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : f32 = u_xlat77;
  u_xlat77 = (x_304 + 0.5f);
  let x_307 : f32 = u_xlat77;
  let x_309 : vec3<f32> = u_xlat4;
  let x_310 : vec3<f32> = (vec3<f32>(x_307, x_307, x_307) * x_309);
  let x_311 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : f32 = u_xlat3.w;
  u_xlat77 = max(x_314, 0.00009999999747378752f);
  let x_317 : vec4<f32> = u_xlat3;
  let x_319 : f32 = u_xlat77;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) / vec3<f32>(x_319, x_319, x_319));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : f32 = u_xlat1;
  u_xlat77 = ((-(x_324) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_330 : f32 = u_xlat77;
  u_xlat78 = (-(x_330) + 1.0f);
  let x_333 : vec4<f32> = u_xlat0;
  let x_335 : f32 = u_xlat77;
  u_xlat4 = (vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335, x_335, x_335));
  let x_338 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : f32 = u_xlat1;
  let x_347 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345, x_345, x_345) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_356) + 1.0f);
  let x_359 : f32 = u_xlat1;
  let x_360 : f32 = u_xlat1;
  u_xlat77 = (x_359 * x_360);
  let x_362 : f32 = u_xlat77;
  u_xlat77 = max(x_362, 0.0078125f);
  let x_366 : f32 = u_xlat77;
  let x_367 : f32 = u_xlat77;
  u_xlat79 = (x_366 * x_367);
  let x_371 : f32 = u_xlat0.w;
  let x_372 : f32 = u_xlat78;
  u_xlat75 = (x_371 + x_372);
  let x_374 : f32 = u_xlat75;
  u_xlat75 = clamp(x_374, 0.0f, 1.0f);
  let x_376 : f32 = u_xlat77;
  u_xlat78 = ((x_376 * 4.0f) + 2.0f);
  let x_382 : f32 = x_80.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_382);
  let x_384 : bool = u_xlatb5;
  if (x_384) {
    let x_388 : f32 = x_80.x_MainLightShadowParams.y;
    u_xlatb5 = (x_388 == 1.0f);
    let x_390 : bool = u_xlatb5;
    if (x_390) {
      let x_393 : vec4<f32> = u_xlat2;
      let x_397 : vec4<f32> = x_80.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_393.x, x_393.y, x_393.x, x_393.y) + x_397);
      let x_401 : vec4<f32> = u_xlat5;
      let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
      let x_404 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_402.x, x_402.y, x_404);
      let x_417 : vec3<f32> = txVec0;
      let x_419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_417.xy, x_417.z);
      u_xlat6.x = x_419;
      let x_422 : vec4<f32> = u_xlat5;
      let x_423 : vec2<f32> = vec2<f32>(x_422.z, x_422.w);
      let x_425 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_423.x, x_423.y, x_425);
      let x_432 : vec3<f32> = txVec1;
      let x_434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_432.xy, x_432.z);
      u_xlat6.y = x_434;
      let x_436 : vec4<f32> = u_xlat2;
      let x_440 : vec4<f32> = x_80.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_436.x, x_436.y, x_436.x, x_436.y) + x_440);
      let x_443 : vec4<f32> = u_xlat5;
      let x_444 : vec2<f32> = vec2<f32>(x_443.x, x_443.y);
      let x_446 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_444.x, x_444.y, x_446);
      let x_453 : vec3<f32> = txVec2;
      let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_453.xy, x_453.z);
      u_xlat6.z = x_455;
      let x_458 : vec4<f32> = u_xlat5;
      let x_459 : vec2<f32> = vec2<f32>(x_458.z, x_458.w);
      let x_461 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_459.x, x_459.y, x_461);
      let x_468 : vec3<f32> = txVec3;
      let x_470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_468.xy, x_468.z);
      u_xlat6.w = x_470;
      let x_472 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_472, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_480 : f32 = x_80.x_MainLightShadowParams.y;
      u_xlatb30 = (x_480 == 2.0f);
      let x_482 : bool = u_xlatb30;
      if (x_482) {
        let x_487 : vec4<f32> = u_xlat2;
        let x_491 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat30 = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(x_491.z, x_491.w)) + vec2<f32>(0.5f, 0.5f));
        let x_496 : vec2<f32> = u_xlat30;
        u_xlat30 = floor(x_496);
        let x_498 : vec4<f32> = u_xlat2;
        let x_501 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_504 : vec2<f32> = u_xlat30;
        let x_506 : vec2<f32> = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_501.z, x_501.w)) + -(x_504));
        let x_507 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_510.x, x_510.x, x_510.y, x_510.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_515 : vec4<f32> = u_xlat7;
        let x_517 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_515.x, x_515.x, x_515.z, x_515.z) * vec4<f32>(x_517.x, x_517.x, x_517.z, x_517.z));
        let x_521 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_521.y, x_521.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_526 : vec4<f32> = u_xlat8;
        let x_529 : vec4<f32> = u_xlat6;
        let x_532 : vec2<f32> = ((vec2<f32>(x_526.x, x_526.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_529.x, x_529.y)));
        let x_533 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_532.x, x_533.y, x_532.y, x_533.w);
        let x_535 : vec4<f32> = u_xlat6;
        let x_539 : vec2<f32> = (-(vec2<f32>(x_535.x, x_535.y)) + vec2<f32>(1.0f, 1.0f));
        let x_540 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_543 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_543.x, x_543.y), vec2<f32>(0.0f, 0.0f));
        let x_547 : vec2<f32> = u_xlat58;
        let x_549 : vec2<f32> = u_xlat58;
        let x_551 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_547) * x_549) + vec2<f32>(x_551.x, x_551.y));
        let x_554 : vec4<f32> = u_xlat6;
        let x_556 : vec2<f32> = max(vec2<f32>(x_554.x, x_554.y), vec2<f32>(0.0f, 0.0f));
        let x_557 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat6;
        let x_562 : vec4<f32> = u_xlat6;
        let x_565 : vec4<f32> = u_xlat7;
        let x_567 : vec2<f32> = ((-(vec2<f32>(x_559.x, x_559.y)) * vec2<f32>(x_562.x, x_562.y)) + vec2<f32>(x_565.y, x_565.w));
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_570 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_570 + vec2<f32>(1.0f, 1.0f));
        let x_572 : vec4<f32> = u_xlat6;
        let x_574 : vec2<f32> = (vec2<f32>(x_572.x, x_572.y) + vec2<f32>(1.0f, 1.0f));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_578 : vec4<f32> = u_xlat7;
        let x_582 : vec2<f32> = (vec2<f32>(x_578.x, x_578.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_583 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_586 : vec4<f32> = u_xlat8;
        let x_588 : vec2<f32> = (vec2<f32>(x_586.x, x_586.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_589 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_591 : vec2<f32> = u_xlat58;
        let x_592 : vec2<f32> = (x_591 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_596 : vec4<f32> = u_xlat6;
        let x_598 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_599 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat7;
        let x_603 : vec2<f32> = (vec2<f32>(x_601.y, x_601.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_604 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_607 : f32 = u_xlat8.x;
        u_xlat9.z = x_607;
        let x_610 : f32 = u_xlat6.x;
        u_xlat9.w = x_610;
        let x_613 : f32 = u_xlat11.x;
        u_xlat10.z = x_613;
        let x_616 : f32 = u_xlat56.x;
        u_xlat10.w = x_616;
        let x_618 : vec4<f32> = u_xlat9;
        let x_620 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_618.z, x_618.w, x_618.x, x_618.z) + vec4<f32>(x_620.z, x_620.w, x_620.x, x_620.z));
        let x_624 : f32 = u_xlat9.y;
        u_xlat8.z = x_624;
        let x_627 : f32 = u_xlat6.y;
        u_xlat8.w = x_627;
        let x_630 : f32 = u_xlat10.y;
        u_xlat11.z = x_630;
        let x_633 : f32 = u_xlat56.y;
        u_xlat11.w = x_633;
        let x_635 : vec4<f32> = u_xlat8;
        let x_637 : vec4<f32> = u_xlat11;
        let x_639 : vec3<f32> = (vec3<f32>(x_635.z, x_635.y, x_635.w) + vec3<f32>(x_637.z, x_637.y, x_637.w));
        let x_640 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
        let x_642 : vec4<f32> = u_xlat10;
        let x_644 : vec4<f32> = u_xlat7;
        let x_646 : vec3<f32> = (vec3<f32>(x_642.x, x_642.z, x_642.w) / vec3<f32>(x_644.z, x_644.w, x_644.y));
        let x_647 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat8;
        let x_654 : vec3<f32> = (vec3<f32>(x_649.x, x_649.y, x_649.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat11;
        let x_659 : vec4<f32> = u_xlat6;
        let x_661 : vec3<f32> = (vec3<f32>(x_657.z, x_657.y, x_657.w) / vec3<f32>(x_659.x, x_659.y, x_659.z));
        let x_662 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat9;
        let x_666 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_667 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
        let x_669 : vec4<f32> = u_xlat8;
        let x_672 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_674 : vec3<f32> = (vec3<f32>(x_669.y, x_669.x, x_669.z) * vec3<f32>(x_672.x, x_672.x, x_672.x));
        let x_675 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat9;
        let x_680 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_682 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(x_680.y, x_680.y, x_680.y));
        let x_683 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_686 : f32 = u_xlat9.x;
        u_xlat8.w = x_686;
        let x_688 : vec2<f32> = u_xlat30;
        let x_691 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_694 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_688.x, x_688.y, x_688.x, x_688.y) * vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y)) + vec4<f32>(x_694.y, x_694.w, x_694.x, x_694.w));
        let x_697 : vec2<f32> = u_xlat30;
        let x_699 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_702 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = ((x_697 * vec2<f32>(x_699.x, x_699.y)) + vec2<f32>(x_702.z, x_702.w));
        let x_705 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : f32 = u_xlat8.y;
        u_xlat9.w = x_708;
        let x_710 : vec4<f32> = u_xlat9;
        let x_711 : vec2<f32> = vec2<f32>(x_710.y, x_710.z);
        let x_712 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_711.x, x_712.z, x_711.y);
        let x_715 : vec2<f32> = u_xlat30;
        let x_718 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_721 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_715.x, x_715.y, x_715.x, x_715.y) * vec4<f32>(x_718.x, x_718.y, x_718.x, x_718.y)) + vec4<f32>(x_721.x, x_721.y, x_721.z, x_721.y));
        let x_724 : vec2<f32> = u_xlat30;
        let x_727 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_730 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y) * vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y)) + vec4<f32>(x_730.w, x_730.y, x_730.w, x_730.z));
        let x_733 : vec2<f32> = u_xlat30;
        let x_736 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_739 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y) * vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y)) + vec4<f32>(x_739.x, x_739.w, x_739.z, x_739.w));
        let x_743 : vec4<f32> = u_xlat6;
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_743.x, x_743.x, x_743.x, x_743.y) * vec4<f32>(x_745.z, x_745.w, x_745.y, x_745.z));
        let x_749 : vec4<f32> = u_xlat6;
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_749.y, x_749.y, x_749.z, x_749.z) * x_751);
        let x_754 : f32 = u_xlat6.z;
        let x_756 : f32 = u_xlat7.y;
        u_xlat30.x = (x_754 * x_756);
        let x_760 : vec4<f32> = u_xlat10;
        let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.y);
        let x_763 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_761.x, x_761.y, x_763);
        let x_771 : vec3<f32> = txVec4;
        let x_773 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_771.xy, x_771.z);
        u_xlat55 = x_773;
        let x_775 : vec4<f32> = u_xlat10;
        let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
        let x_778 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_786 : vec3<f32> = txVec5;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_786.xy, x_786.z);
        u_xlat80 = x_788;
        let x_789 : f32 = u_xlat80;
        let x_791 : f32 = u_xlat13.y;
        u_xlat80 = (x_789 * x_791);
        let x_794 : f32 = u_xlat13.x;
        let x_795 : f32 = u_xlat55;
        let x_797 : f32 = u_xlat80;
        u_xlat55 = ((x_794 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat11;
        let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
        let x_803 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec6;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat80 = x_812;
        let x_814 : f32 = u_xlat13.z;
        let x_815 : f32 = u_xlat80;
        let x_817 : f32 = u_xlat55;
        u_xlat55 = ((x_814 * x_815) + x_817);
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
        let x_823 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec7;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_830.xy, x_830.z);
        u_xlat80 = x_832;
        let x_834 : f32 = u_xlat13.w;
        let x_835 : f32 = u_xlat80;
        let x_837 : f32 = u_xlat55;
        u_xlat55 = ((x_834 * x_835) + x_837);
        let x_840 : vec4<f32> = u_xlat12;
        let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
        let x_843 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec8;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_850.xy, x_850.z);
        u_xlat80 = x_852;
        let x_854 : f32 = u_xlat14.x;
        let x_855 : f32 = u_xlat80;
        let x_857 : f32 = u_xlat55;
        u_xlat55 = ((x_854 * x_855) + x_857);
        let x_860 : vec4<f32> = u_xlat12;
        let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
        let x_863 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec9;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
        u_xlat80 = x_872;
        let x_874 : f32 = u_xlat14.y;
        let x_875 : f32 = u_xlat80;
        let x_877 : f32 = u_xlat55;
        u_xlat55 = ((x_874 * x_875) + x_877);
        let x_880 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = vec2<f32>(x_880.z, x_880.w);
        let x_883 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec10;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat80 = x_892;
        let x_894 : f32 = u_xlat14.z;
        let x_895 : f32 = u_xlat80;
        let x_897 : f32 = u_xlat55;
        u_xlat55 = ((x_894 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat8;
        let x_901 : vec2<f32> = vec2<f32>(x_900.x, x_900.y);
        let x_903 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec11;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat80 = x_912;
        let x_914 : f32 = u_xlat14.w;
        let x_915 : f32 = u_xlat80;
        let x_917 : f32 = u_xlat55;
        u_xlat55 = ((x_914 * x_915) + x_917);
        let x_920 : vec4<f32> = u_xlat8;
        let x_921 : vec2<f32> = vec2<f32>(x_920.z, x_920.w);
        let x_923 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec12;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
        u_xlat80 = x_932;
        let x_934 : f32 = u_xlat30.x;
        let x_935 : f32 = u_xlat80;
        let x_937 : f32 = u_xlat55;
        u_xlat5.x = ((x_934 * x_935) + x_937);
      } else {
        let x_941 : vec4<f32> = u_xlat2;
        let x_944 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat30 = ((vec2<f32>(x_941.x, x_941.y) * vec2<f32>(x_944.z, x_944.w)) + vec2<f32>(0.5f, 0.5f));
        let x_948 : vec2<f32> = u_xlat30;
        u_xlat30 = floor(x_948);
        let x_950 : vec4<f32> = u_xlat2;
        let x_953 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_956 : vec2<f32> = u_xlat30;
        let x_958 : vec2<f32> = ((vec2<f32>(x_950.x, x_950.y) * vec2<f32>(x_953.z, x_953.w)) + -(x_956));
        let x_959 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_961.x, x_961.x, x_961.y, x_961.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_964 : vec4<f32> = u_xlat7;
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_964.x, x_964.x, x_964.z, x_964.z) * vec4<f32>(x_966.x, x_966.x, x_966.z, x_966.z));
        let x_969 : vec4<f32> = u_xlat8;
        let x_973 : vec2<f32> = (vec2<f32>(x_969.y, x_969.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_974 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_974.x, x_973.x, x_974.z, x_973.y);
        let x_976 : vec4<f32> = u_xlat8;
        let x_979 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_976.x, x_976.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_979.x, x_979.y)));
        let x_983 : vec4<f32> = u_xlat6;
        let x_986 : vec2<f32> = (-(vec2<f32>(x_983.x, x_983.y)) + vec2<f32>(1.0f, 1.0f));
        let x_987 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_986.x, x_987.y, x_986.y, x_987.w);
        let x_989 : vec4<f32> = u_xlat6;
        let x_991 : vec2<f32> = min(vec2<f32>(x_989.x, x_989.y), vec2<f32>(0.0f, 0.0f));
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat8;
        let x_997 : vec4<f32> = u_xlat8;
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1002 : vec2<f32> = ((-(vec2<f32>(x_994.x, x_994.y)) * vec2<f32>(x_997.x, x_997.y)) + vec2<f32>(x_1000.x, x_1000.z));
        let x_1003 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1002.x, x_1003.y, x_1002.y, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat6;
        let x_1007 : vec2<f32> = max(vec2<f32>(x_1005.x, x_1005.y), vec2<f32>(0.0f, 0.0f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1016 : vec4<f32> = u_xlat7;
        let x_1018 : vec2<f32> = ((-(vec2<f32>(x_1010.x, x_1010.y)) * vec2<f32>(x_1013.x, x_1013.y)) + vec2<f32>(x_1016.y, x_1016.w));
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1019.x, x_1018.x, x_1019.z, x_1018.y);
        let x_1021 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1021 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1025 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1025 * 0.08163200318813323975f);
        let x_1029 : vec2<f32> = u_xlat56;
        let x_1032 : vec2<f32> = (vec2<f32>(x_1029.y, x_1029.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1033 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1035.x, x_1035.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1039 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1039 * 0.08163200318813323975f);
        let x_1043 : f32 = u_xlat10.y;
        u_xlat8.x = x_1043;
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1053.x, x_1052.x, x_1053.z, x_1052.y);
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1060 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1059.x, x_1060.y, x_1059.y, x_1060.w);
        let x_1063 : f32 = u_xlat56.x;
        u_xlat7.y = x_1063;
        let x_1066 : f32 = u_xlat9.y;
        u_xlat7.w = x_1066;
        let x_1068 : vec4<f32> = u_xlat7;
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1068 + x_1069);
        let x_1071 : vec4<f32> = u_xlat6;
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1071.y, x_1071.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1074.x, x_1075.z, x_1074.y);
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1080 : vec2<f32> = ((vec2<f32>(x_1077.y, x_1077.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1081.y, x_1080.y, x_1081.w);
        let x_1084 : f32 = u_xlat56.y;
        u_xlat9.y = x_1084;
        let x_1086 : vec4<f32> = u_xlat9;
        let x_1087 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1086 + x_1087);
        let x_1089 : vec4<f32> = u_xlat7;
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1089 / x_1090);
        let x_1092 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1092 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1099 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1098 / x_1099);
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1101 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1106 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1103.w, x_1103.x, x_1103.y, x_1103.z) * vec4<f32>(x_1106.x, x_1106.x, x_1106.x, x_1106.x));
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1112 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1109.x, x_1109.w, x_1109.y, x_1109.z) * vec4<f32>(x_1112.y, x_1112.y, x_1112.y, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1116 : vec3<f32> = vec3<f32>(x_1115.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1116.x, x_1117.y, x_1116.y, x_1116.z);
        let x_1120 : f32 = u_xlat9.x;
        u_xlat10.y = x_1120;
        let x_1122 : vec2<f32> = u_xlat30;
        let x_1125 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y) * vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y)) + vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1128.y));
        let x_1131 : vec2<f32> = u_xlat30;
        let x_1133 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat10;
        let x_1138 : vec2<f32> = ((x_1131 * vec2<f32>(x_1133.x, x_1133.y)) + vec2<f32>(x_1136.w, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1142 : f32 = u_xlat10.y;
        u_xlat7.y = x_1142;
        let x_1145 : f32 = u_xlat9.z;
        u_xlat10.y = x_1145;
        let x_1147 : vec2<f32> = u_xlat30;
        let x_1150 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.y));
        let x_1157 : vec2<f32> = u_xlat30;
        let x_1159 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1157 * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.w, x_1162.y));
        let x_1166 : f32 = u_xlat10.y;
        u_xlat7.z = x_1166;
        let x_1168 : vec2<f32> = u_xlat30;
        let x_1171 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y) * vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y)) + vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.z));
        let x_1178 : f32 = u_xlat9.w;
        u_xlat10.y = x_1178;
        let x_1181 : vec2<f32> = u_xlat30;
        let x_1184 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y) * vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y)) + vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1187.y));
        let x_1191 : vec2<f32> = u_xlat30;
        let x_1193 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat10;
        let x_1198 : vec2<f32> = ((x_1191 * vec2<f32>(x_1193.x, x_1193.y)) + vec2<f32>(x_1196.w, x_1196.y));
        let x_1199 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1198.x, x_1198.y, x_1199.z);
        let x_1202 : f32 = u_xlat10.y;
        u_xlat7.w = x_1202;
        let x_1205 : vec2<f32> = u_xlat30;
        let x_1207 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1212 : vec2<f32> = ((x_1205 * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.x, x_1210.w));
        let x_1213 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat10;
        let x_1216 : vec3<f32> = vec3<f32>(x_1215.x, x_1215.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1216.x, x_1217.y, x_1216.y, x_1216.z);
        let x_1219 : vec2<f32> = u_xlat30;
        let x_1222 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y) * vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y)) + vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1225.y));
        let x_1229 : vec2<f32> = u_xlat30;
        let x_1231 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1229 * vec2<f32>(x_1231.x, x_1231.y)) + vec2<f32>(x_1234.w, x_1234.y));
        let x_1238 : f32 = u_xlat7.x;
        u_xlat9.x = x_1238;
        let x_1240 : vec2<f32> = u_xlat30;
        let x_1242 : vec4<f32> = x_80.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat30 = ((x_1240 * vec2<f32>(x_1242.x, x_1242.y)) + vec2<f32>(x_1245.x, x_1245.y));
        let x_1249 : vec4<f32> = u_xlat6;
        let x_1251 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1249.x, x_1249.x, x_1249.x, x_1249.x) * x_1251);
        let x_1254 : vec4<f32> = u_xlat6;
        let x_1256 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1254.y, x_1254.y, x_1254.y, x_1254.y) * x_1256);
        let x_1259 : vec4<f32> = u_xlat6;
        let x_1261 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1259.z, x_1259.z, x_1259.z, x_1259.z) * x_1261);
        let x_1263 : vec4<f32> = u_xlat6;
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1263.w, x_1263.w, x_1263.w, x_1263.w) * x_1265);
        let x_1268 : vec4<f32> = u_xlat11;
        let x_1269 : vec2<f32> = vec2<f32>(x_1268.x, x_1268.y);
        let x_1271 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
        let x_1278 : vec3<f32> = txVec13;
        let x_1280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1278.xy, x_1278.z);
        u_xlat80 = x_1280;
        let x_1282 : vec4<f32> = u_xlat11;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.z, x_1282.w);
        let x_1285 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec14;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1292.xy, x_1292.z);
        u_xlat7.x = x_1294;
        let x_1297 : f32 = u_xlat7.x;
        let x_1299 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1297 * x_1299);
        let x_1303 : f32 = u_xlat17.x;
        let x_1304 : f32 = u_xlat80;
        let x_1307 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1303 * x_1304) + x_1307);
        let x_1310 : vec4<f32> = u_xlat12;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.x, x_1310.y);
        let x_1313 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec15;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1320.xy, x_1320.z);
        u_xlat7.x = x_1322;
        let x_1325 : f32 = u_xlat17.z;
        let x_1327 : f32 = u_xlat7.x;
        let x_1329 : f32 = u_xlat80;
        u_xlat80 = ((x_1325 * x_1327) + x_1329);
        let x_1332 : vec4<f32> = u_xlat14;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec16;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat7.x = x_1344;
        let x_1347 : f32 = u_xlat17.w;
        let x_1349 : f32 = u_xlat7.x;
        let x_1351 : f32 = u_xlat80;
        u_xlat80 = ((x_1347 * x_1349) + x_1351);
        let x_1354 : vec4<f32> = u_xlat13;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.x, x_1354.y);
        let x_1357 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec17;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat7.x = x_1366;
        let x_1369 : f32 = u_xlat18.x;
        let x_1371 : f32 = u_xlat7.x;
        let x_1373 : f32 = u_xlat80;
        u_xlat80 = ((x_1369 * x_1371) + x_1373);
        let x_1376 : vec4<f32> = u_xlat13;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.z, x_1376.w);
        let x_1379 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec18;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat7.x = x_1388;
        let x_1391 : f32 = u_xlat18.y;
        let x_1393 : f32 = u_xlat7.x;
        let x_1395 : f32 = u_xlat80;
        u_xlat80 = ((x_1391 * x_1393) + x_1395);
        let x_1398 : vec2<f32> = u_xlat62;
        let x_1400 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec19;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat7.x = x_1409;
        let x_1412 : f32 = u_xlat18.z;
        let x_1414 : f32 = u_xlat7.x;
        let x_1416 : f32 = u_xlat80;
        u_xlat80 = ((x_1412 * x_1414) + x_1416);
        let x_1419 : vec4<f32> = u_xlat14;
        let x_1420 : vec2<f32> = vec2<f32>(x_1419.z, x_1419.w);
        let x_1422 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1420.x, x_1420.y, x_1422);
        let x_1429 : vec3<f32> = txVec20;
        let x_1431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
        u_xlat7.x = x_1431;
        let x_1434 : f32 = u_xlat18.w;
        let x_1436 : f32 = u_xlat7.x;
        let x_1438 : f32 = u_xlat80;
        u_xlat80 = ((x_1434 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat15;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.x, x_1441.y);
        let x_1444 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec21;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat7.x = x_1453;
        let x_1456 : f32 = u_xlat19.x;
        let x_1458 : f32 = u_xlat7.x;
        let x_1460 : f32 = u_xlat80;
        u_xlat80 = ((x_1456 * x_1458) + x_1460);
        let x_1463 : vec4<f32> = u_xlat15;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.z, x_1463.w);
        let x_1466 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec22;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
        u_xlat7.x = x_1475;
        let x_1478 : f32 = u_xlat19.y;
        let x_1480 : f32 = u_xlat7.x;
        let x_1482 : f32 = u_xlat80;
        u_xlat80 = ((x_1478 * x_1480) + x_1482);
        let x_1485 : vec3<f32> = u_xlat32;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec23;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat7.x = x_1497;
        let x_1500 : f32 = u_xlat19.z;
        let x_1502 : f32 = u_xlat7.x;
        let x_1504 : f32 = u_xlat80;
        u_xlat80 = ((x_1500 * x_1502) + x_1504);
        let x_1507 : vec4<f32> = u_xlat16;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec24;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1517.xy, x_1517.z);
        u_xlat7.x = x_1519;
        let x_1522 : f32 = u_xlat19.w;
        let x_1524 : f32 = u_xlat7.x;
        let x_1526 : f32 = u_xlat80;
        u_xlat80 = ((x_1522 * x_1524) + x_1526);
        let x_1529 : vec4<f32> = u_xlat10;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
        let x_1532 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec25;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat7.x = x_1541;
        let x_1544 : f32 = u_xlat6.x;
        let x_1546 : f32 = u_xlat7.x;
        let x_1548 : f32 = u_xlat80;
        u_xlat80 = ((x_1544 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat10;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.z, x_1551.w);
        let x_1554 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec26;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat6.x = x_1563;
        let x_1566 : f32 = u_xlat6.y;
        let x_1568 : f32 = u_xlat6.x;
        let x_1570 : f32 = u_xlat80;
        u_xlat80 = ((x_1566 * x_1568) + x_1570);
        let x_1573 : vec2<f32> = u_xlat59;
        let x_1575 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec27;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat6.x = x_1584;
        let x_1587 : f32 = u_xlat6.z;
        let x_1589 : f32 = u_xlat6.x;
        let x_1591 : f32 = u_xlat80;
        u_xlat80 = ((x_1587 * x_1589) + x_1591);
        let x_1594 : vec2<f32> = u_xlat30;
        let x_1596 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
        let x_1603 : vec3<f32> = txVec28;
        let x_1605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1603.xy, x_1603.z);
        u_xlat30.x = x_1605;
        let x_1608 : f32 = u_xlat6.w;
        let x_1610 : f32 = u_xlat30.x;
        let x_1612 : f32 = u_xlat80;
        u_xlat5.x = ((x_1608 * x_1610) + x_1612);
      }
    }
  } else {
    let x_1617 : vec4<f32> = u_xlat2;
    let x_1618 : vec2<f32> = vec2<f32>(x_1617.x, x_1617.y);
    let x_1620 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
    let x_1627 : vec3<f32> = txVec29;
    let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
    u_xlat5.x = x_1629;
  }
  let x_1632 : f32 = x_80.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1632) + 1.0f);
  let x_1637 : f32 = u_xlat5.x;
  let x_1639 : f32 = x_80.x_MainLightShadowParams.x;
  let x_1642 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1637 * x_1639) + x_1642);
  let x_1647 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_1647);
  let x_1651 : f32 = u_xlat2.z;
  u_xlatb52 = (x_1651 >= 1.0f);
  let x_1653 : bool = u_xlatb52;
  let x_1654 : bool = u_xlatb27;
  u_xlatb27 = (x_1653 | x_1654);
  let x_1656 : bool = u_xlatb27;
  if (x_1656) {
    x_1658 = 1.0f;
  } else {
    let x_1663 : f32 = u_xlat2.x;
    x_1658 = x_1663;
  }
  let x_1664 : f32 = x_1658;
  u_xlat2.x = x_1664;
  let x_1666 : vec3<f32> = vs_TEXCOORD7;
  let x_1669 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1671 : vec3<f32> = (x_1666 + -(x_1669));
  let x_1672 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1674 : vec4<f32> = u_xlat5;
  let x_1676 : vec4<f32> = u_xlat5;
  u_xlat27.x = dot(vec3<f32>(x_1674.x, x_1674.y, x_1674.z), vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
  let x_1682 : f32 = u_xlat27.x;
  let x_1684 : f32 = x_80.x_MainLightShadowParams.z;
  let x_1687 : f32 = x_80.x_MainLightShadowParams.w;
  u_xlat52 = ((x_1682 * x_1684) + x_1687);
  let x_1689 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1689, 0.0f, 1.0f);
  let x_1692 : f32 = u_xlat2.x;
  u_xlat5.x = (-(x_1692) + 1.0f);
  let x_1696 : f32 = u_xlat52;
  let x_1698 : f32 = u_xlat5.x;
  let x_1701 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1696 * x_1698) + x_1701);
  let x_1706 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1706;
  let x_1710 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1710;
  let x_1714 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1714;
  let x_1716 : vec4<f32> = u_xlat5;
  let x_1719 : vec3<f32> = u_xlat26;
  u_xlat52 = dot(-(vec3<f32>(x_1716.x, x_1716.y, x_1716.z)), x_1719);
  let x_1721 : f32 = u_xlat52;
  let x_1722 : f32 = u_xlat52;
  u_xlat52 = (x_1721 + x_1722);
  let x_1724 : vec3<f32> = u_xlat26;
  let x_1725 : f32 = u_xlat52;
  let x_1729 : vec4<f32> = u_xlat5;
  let x_1732 : vec3<f32> = ((x_1724 * -(vec3<f32>(x_1725, x_1725, x_1725))) + -(vec3<f32>(x_1729.x, x_1729.y, x_1729.z)));
  let x_1733 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1735 : vec3<f32> = u_xlat26;
  let x_1736 : vec4<f32> = u_xlat5;
  u_xlat52 = dot(x_1735, vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1739 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1739, 0.0f, 1.0f);
  let x_1741 : f32 = u_xlat52;
  u_xlat52 = (-(x_1741) + 1.0f);
  let x_1744 : f32 = u_xlat52;
  let x_1745 : f32 = u_xlat52;
  u_xlat52 = (x_1744 * x_1745);
  let x_1747 : f32 = u_xlat52;
  let x_1748 : f32 = u_xlat52;
  u_xlat52 = (x_1747 * x_1748);
  let x_1750 : f32 = u_xlat1;
  u_xlat80 = ((-(x_1750) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1756 : f32 = u_xlat1;
  let x_1757 : f32 = u_xlat80;
  u_xlat1 = (x_1756 * x_1757);
  let x_1759 : f32 = u_xlat1;
  u_xlat1 = (x_1759 * 6.0f);
  let x_1770 : vec4<f32> = u_xlat6;
  let x_1772 : f32 = u_xlat1;
  let x_1773 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1770.x, x_1770.y, x_1770.z), x_1772);
  u_xlat6 = x_1773;
  let x_1775 : f32 = u_xlat6.w;
  u_xlat1 = (x_1775 + -1.0f);
  let x_1782 : f32 = x_1780.unity_SpecCube0_HDR.w;
  let x_1783 : f32 = u_xlat1;
  u_xlat1 = ((x_1782 * x_1783) + 1.0f);
  let x_1786 : f32 = u_xlat1;
  u_xlat1 = max(x_1786, 0.0f);
  let x_1788 : f32 = u_xlat1;
  u_xlat1 = log2(x_1788);
  let x_1790 : f32 = u_xlat1;
  let x_1792 : f32 = x_1780.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1790 * x_1792);
  let x_1794 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1794);
  let x_1796 : f32 = u_xlat1;
  let x_1798 : f32 = x_1780.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1796 * x_1798);
  let x_1800 : vec4<f32> = u_xlat6;
  let x_1802 : f32 = u_xlat1;
  let x_1804 : vec3<f32> = (vec3<f32>(x_1800.x, x_1800.y, x_1800.z) * vec3<f32>(x_1802, x_1802, x_1802));
  let x_1805 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  let x_1807 : f32 = u_xlat77;
  let x_1809 : f32 = u_xlat77;
  let x_1813 : vec2<f32> = ((vec2<f32>(x_1807, x_1807) * vec2<f32>(x_1809, x_1809)) + vec2<f32>(-1.0f, 1.0f));
  let x_1814 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1813.x, x_1813.y, x_1814.z, x_1814.w);
  let x_1817 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1817);
  let x_1819 : vec4<f32> = u_xlat0;
  let x_1822 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1819.x, x_1819.y, x_1819.z)) + vec3<f32>(x_1822, x_1822, x_1822));
  let x_1825 : f32 = u_xlat52;
  let x_1827 : vec3<f32> = u_xlat32;
  let x_1829 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1825, x_1825, x_1825) * x_1827) + vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : f32 = u_xlat1;
  let x_1834 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1832, x_1832, x_1832) * x_1834);
  let x_1836 : vec4<f32> = u_xlat6;
  let x_1838 : vec3<f32> = u_xlat32;
  let x_1839 : vec3<f32> = (vec3<f32>(x_1836.x, x_1836.y, x_1836.z) * x_1838);
  let x_1840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
  let x_1842 : vec4<f32> = u_xlat3;
  let x_1844 : vec3<f32> = u_xlat4;
  let x_1846 : vec4<f32> = u_xlat6;
  let x_1848 : vec3<f32> = ((vec3<f32>(x_1842.x, x_1842.y, x_1842.z) * x_1844) + vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
  let x_1849 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1852 : f32 = u_xlat2.x;
  let x_1854 : f32 = x_1780.unity_LightData.z;
  u_xlat75 = (x_1852 * x_1854);
  let x_1856 : vec3<f32> = u_xlat26;
  let x_1858 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_1856, vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1861, 0.0f, 1.0f);
  let x_1863 : f32 = u_xlat75;
  let x_1864 : f32 = u_xlat1;
  u_xlat75 = (x_1863 * x_1864);
  let x_1866 : f32 = u_xlat75;
  let x_1869 : vec4<f32> = x_28.x_MainLightColor;
  let x_1871 : vec3<f32> = (vec3<f32>(x_1866, x_1866, x_1866) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1871.x, x_1872.y, x_1871.y, x_1871.z);
  let x_1874 : vec4<f32> = u_xlat5;
  let x_1877 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1879 : vec3<f32> = (vec3<f32>(x_1874.x, x_1874.y, x_1874.z) + vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
  let x_1880 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
  let x_1882 : vec4<f32> = u_xlat6;
  let x_1884 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1882.x, x_1882.y, x_1882.z), vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : f32 = u_xlat75;
  u_xlat75 = max(x_1887, 1.17549435e-38f);
  let x_1890 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1890);
  let x_1892 : f32 = u_xlat75;
  let x_1894 : vec4<f32> = u_xlat6;
  let x_1896 : vec3<f32> = (vec3<f32>(x_1892, x_1892, x_1892) * vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
  let x_1899 : vec3<f32> = u_xlat26;
  let x_1900 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_1899, vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1903, 0.0f, 1.0f);
  let x_1906 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1908 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1906.x, x_1906.y, x_1906.z), vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1911, 0.0f, 1.0f);
  let x_1913 : f32 = u_xlat75;
  let x_1914 : f32 = u_xlat75;
  u_xlat75 = (x_1913 * x_1914);
  let x_1916 : f32 = u_xlat75;
  let x_1918 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1916 * x_1918) + 1.00001001358032226562f);
  let x_1922 : f32 = u_xlat1;
  let x_1923 : f32 = u_xlat1;
  u_xlat1 = (x_1922 * x_1923);
  let x_1925 : f32 = u_xlat75;
  let x_1926 : f32 = u_xlat75;
  u_xlat75 = (x_1925 * x_1926);
  let x_1928 : f32 = u_xlat1;
  u_xlat1 = max(x_1928, 0.10000000149011611938f);
  let x_1931 : f32 = u_xlat75;
  let x_1932 : f32 = u_xlat1;
  u_xlat75 = (x_1931 * x_1932);
  let x_1934 : f32 = u_xlat78;
  let x_1935 : f32 = u_xlat75;
  u_xlat75 = (x_1934 * x_1935);
  let x_1937 : f32 = u_xlat79;
  let x_1938 : f32 = u_xlat75;
  u_xlat75 = (x_1937 / x_1938);
  let x_1940 : vec4<f32> = u_xlat0;
  let x_1942 : f32 = u_xlat75;
  let x_1945 : vec3<f32> = u_xlat4;
  let x_1946 : vec3<f32> = ((vec3<f32>(x_1940.x, x_1940.y, x_1940.z) * vec3<f32>(x_1942, x_1942, x_1942)) + x_1945);
  let x_1947 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1950 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1952 : f32 = x_1780.unity_LightData.y;
  u_xlat75 = min(x_1950, x_1952);
  let x_1955 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1955));
  let x_1959 : f32 = u_xlat27.x;
  let x_1962 : f32 = x_80.x_AdditionalShadowFadeParams.x;
  let x_1965 : f32 = x_80.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1959 * x_1962) + x_1965);
  let x_1967 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1967, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1979 : u32 = u_xlatu_loop_1;
    let x_1980 : u32 = u_xlatu75;
    if ((x_1979 < x_1980)) {
    } else {
      break;
    }
    let x_1983 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_1983 >> 2u);
    let x_1986 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_1986 & 3u));
    let x_1989 : u32 = u_xlatu80;
    let x_1992 : vec4<f32> = x_1780.unity_LightIndices[bitcast<i32>(x_1989)];
    let x_2002 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2007 : vec4<u32> = indexable[x_2002];
    u_xlat80 = dot(x_1992, bitcast<vec4<f32>>(x_2007));
    let x_2011 : f32 = u_xlat80;
    u_xlati80 = i32(x_2011);
    let x_2013 : vec3<f32> = vs_TEXCOORD7;
    let x_2024 : i32 = u_xlati80;
    let x_2026 : vec4<f32> = x_2023.x_AdditionalLightsPosition[x_2024];
    let x_2029 : i32 = u_xlati80;
    let x_2031 : vec4<f32> = x_2023.x_AdditionalLightsPosition[x_2029];
    let x_2033 : vec3<f32> = ((-(x_2013) * vec3<f32>(x_2026.w, x_2026.w, x_2026.w)) + vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
    let x_2034 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
    let x_2037 : vec4<f32> = u_xlat8;
    let x_2039 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2037.x, x_2037.y, x_2037.z), vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
    let x_2042 : f32 = u_xlat81;
    u_xlat81 = max(x_2042, 0.00006103515625f);
    let x_2046 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2046);
    let x_2048 : f32 = u_xlat83;
    let x_2050 : vec4<f32> = u_xlat8;
    let x_2052 : vec3<f32> = (vec3<f32>(x_2048, x_2048, x_2048) * vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
    let x_2053 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
    let x_2056 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2056);
    let x_2058 : f32 = u_xlat81;
    let x_2059 : i32 = u_xlati80;
    let x_2061 : f32 = x_2023.x_AdditionalLightsAttenuation[x_2059].x;
    u_xlat81 = (x_2058 * x_2061);
    let x_2063 : f32 = u_xlat81;
    let x_2065 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2063) * x_2065) + 1.0f);
    let x_2068 : f32 = u_xlat81;
    u_xlat81 = max(x_2068, 0.0f);
    let x_2070 : f32 = u_xlat81;
    let x_2071 : f32 = u_xlat81;
    u_xlat81 = (x_2070 * x_2071);
    let x_2073 : f32 = u_xlat81;
    let x_2074 : f32 = u_xlat84;
    u_xlat81 = (x_2073 * x_2074);
    let x_2076 : i32 = u_xlati80;
    let x_2078 : vec4<f32> = x_2023.x_AdditionalLightsSpotDir[x_2076];
    let x_2080 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2078.x, x_2078.y, x_2078.z), vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
    let x_2083 : f32 = u_xlat84;
    let x_2084 : i32 = u_xlati80;
    let x_2086 : f32 = x_2023.x_AdditionalLightsAttenuation[x_2084].z;
    let x_2088 : i32 = u_xlati80;
    let x_2090 : f32 = x_2023.x_AdditionalLightsAttenuation[x_2088].w;
    u_xlat84 = ((x_2083 * x_2086) + x_2090);
    let x_2092 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2092, 0.0f, 1.0f);
    let x_2094 : f32 = u_xlat84;
    let x_2095 : f32 = u_xlat84;
    u_xlat84 = (x_2094 * x_2095);
    let x_2097 : f32 = u_xlat81;
    let x_2098 : f32 = u_xlat84;
    u_xlat81 = (x_2097 * x_2098);
    let x_2102 : i32 = u_xlati80;
    let x_2104 : f32 = x_80.x_AdditionalShadowParams[x_2102].w;
    u_xlati84 = i32(x_2104);
    let x_2109 : i32 = u_xlati84;
    u_xlatb10.x = (x_2109 >= 0i);
    let x_2113 : bool = u_xlatb10.x;
    if (x_2113) {
      let x_2117 : i32 = u_xlati80;
      let x_2119 : f32 = x_80.x_AdditionalShadowParams[x_2117].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2119, x_2119, x_2119, x_2119))));
      let x_2125 : bool = u_xlatb10.x;
      if (x_2125) {
        let x_2128 : vec4<f32> = u_xlat9;
        let x_2131 : vec4<f32> = u_xlat9;
        let x_2134 : vec4<bool> = (abs(vec4<f32>(x_2128.z, x_2128.z, x_2128.y, x_2128.z)) >= abs(vec4<f32>(x_2131.x, x_2131.y, x_2131.x, x_2131.x)));
        u_xlatb10 = vec3<bool>(x_2134.x, x_2134.y, x_2134.z);
        let x_2137 : bool = u_xlatb10.y;
        let x_2139 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2137 & x_2139);
        let x_2143 : vec4<f32> = u_xlat9;
        let x_2146 : vec4<bool> = (-(vec4<f32>(x_2143.z, x_2143.y, x_2143.x, x_2143.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2146.x, x_2146.y, x_2146.z);
        let x_2150 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2150);
        let x_2155 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2155);
        let x_2159 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2159);
        let x_2164 : bool = u_xlatb10.z;
        if (x_2164) {
          let x_2169 : f32 = u_xlat35.z;
          x_2165 = x_2169;
        } else {
          let x_2172 : f32 = u_xlat11.x;
          x_2165 = x_2172;
        }
        let x_2173 : f32 = x_2165;
        u_xlat60 = x_2173;
        let x_2175 : bool = u_xlatb10.x;
        if (x_2175) {
          let x_2180 : f32 = u_xlat35.x;
          x_2176 = x_2180;
        } else {
          let x_2182 : f32 = u_xlat60;
          x_2176 = x_2182;
        }
        let x_2183 : f32 = x_2176;
        u_xlat10.x = x_2183;
        let x_2185 : i32 = u_xlati80;
        let x_2187 : f32 = x_80.x_AdditionalShadowParams[x_2185].w;
        u_xlat35.x = trunc(x_2187);
        let x_2191 : f32 = u_xlat10.x;
        let x_2193 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2191 + x_2193);
        let x_2197 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2197);
      }
      let x_2199 : i32 = u_xlati84;
      u_xlati84 = (x_2199 << bitcast<u32>(2i));
      let x_2201 : vec3<f32> = vs_TEXCOORD7;
      let x_2204 : i32 = u_xlati84;
      let x_2207 : i32 = u_xlati84;
      let x_2211 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2204 + 1i) / 4i)][((x_2207 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2201.y, x_2201.y, x_2201.y, x_2201.y) * x_2211);
      let x_2213 : i32 = u_xlati84;
      let x_2215 : i32 = u_xlati84;
      let x_2218 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[(x_2213 / 4i)][(x_2215 % 4i)];
      let x_2219 : vec3<f32> = vs_TEXCOORD7;
      let x_2222 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2218 * vec4<f32>(x_2219.x, x_2219.x, x_2219.x, x_2219.x)) + x_2222);
      let x_2224 : i32 = u_xlati84;
      let x_2227 : i32 = u_xlati84;
      let x_2231 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2224 + 2i) / 4i)][((x_2227 + 2i) % 4i)];
      let x_2232 : vec3<f32> = vs_TEXCOORD7;
      let x_2235 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2231 * vec4<f32>(x_2232.z, x_2232.z, x_2232.z, x_2232.z)) + x_2235);
      let x_2237 : vec4<f32> = u_xlat10;
      let x_2238 : i32 = u_xlati84;
      let x_2241 : i32 = u_xlati84;
      let x_2245 : vec4<f32> = x_80.x_AdditionalLightsWorldToShadow[((x_2238 + 3i) / 4i)][((x_2241 + 3i) % 4i)];
      u_xlat10 = (x_2237 + x_2245);
      let x_2247 : vec4<f32> = u_xlat10;
      let x_2249 : vec4<f32> = u_xlat10;
      let x_2251 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.y, x_2247.z) / vec3<f32>(x_2249.w, x_2249.w, x_2249.w));
      let x_2252 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
      let x_2255 : i32 = u_xlati80;
      let x_2257 : f32 = x_80.x_AdditionalShadowParams[x_2255].y;
      u_xlatb84 = (0.0f < x_2257);
      let x_2259 : bool = u_xlatb84;
      if (x_2259) {
        let x_2262 : i32 = u_xlati80;
        let x_2264 : f32 = x_80.x_AdditionalShadowParams[x_2262].y;
        u_xlatb84 = (1.0f == x_2264);
        let x_2266 : bool = u_xlatb84;
        if (x_2266) {
          let x_2269 : vec4<f32> = u_xlat10;
          let x_2273 : vec4<f32> = x_80.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2269.x, x_2269.y, x_2269.x, x_2269.y) + x_2273);
          let x_2276 : vec4<f32> = u_xlat11;
          let x_2277 : vec2<f32> = vec2<f32>(x_2276.x, x_2276.y);
          let x_2279 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2277.x, x_2277.y, x_2279);
          let x_2287 : vec3<f32> = txVec30;
          let x_2289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2287.xy, x_2287.z);
          u_xlat12.x = x_2289;
          let x_2292 : vec4<f32> = u_xlat11;
          let x_2293 : vec2<f32> = vec2<f32>(x_2292.z, x_2292.w);
          let x_2295 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2293.x, x_2293.y, x_2295);
          let x_2302 : vec3<f32> = txVec31;
          let x_2304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2302.xy, x_2302.z);
          u_xlat12.y = x_2304;
          let x_2306 : vec4<f32> = u_xlat10;
          let x_2310 : vec4<f32> = x_80.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y) + x_2310);
          let x_2313 : vec4<f32> = u_xlat11;
          let x_2314 : vec2<f32> = vec2<f32>(x_2313.x, x_2313.y);
          let x_2316 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2314.x, x_2314.y, x_2316);
          let x_2323 : vec3<f32> = txVec32;
          let x_2325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2323.xy, x_2323.z);
          u_xlat12.z = x_2325;
          let x_2328 : vec4<f32> = u_xlat11;
          let x_2329 : vec2<f32> = vec2<f32>(x_2328.z, x_2328.w);
          let x_2331 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
          let x_2338 : vec3<f32> = txVec33;
          let x_2340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2338.xy, x_2338.z);
          u_xlat12.w = x_2340;
          let x_2342 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2342, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2346 : i32 = u_xlati80;
          let x_2348 : f32 = x_80.x_AdditionalShadowParams[x_2346].y;
          u_xlatb85 = (2.0f == x_2348);
          let x_2350 : bool = u_xlatb85;
          if (x_2350) {
            let x_2353 : vec4<f32> = u_xlat10;
            let x_2357 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2360 : vec2<f32> = ((vec2<f32>(x_2353.x, x_2353.y) * vec2<f32>(x_2357.z, x_2357.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2361 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2360.x, x_2360.y, x_2361.z, x_2361.w);
            let x_2363 : vec4<f32> = u_xlat11;
            let x_2365 : vec2<f32> = floor(vec2<f32>(x_2363.x, x_2363.y));
            let x_2366 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2365.x, x_2365.y, x_2366.z, x_2366.w);
            let x_2369 : vec4<f32> = u_xlat10;
            let x_2372 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2375 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(x_2372.z, x_2372.w)) + -(vec2<f32>(x_2375.x, x_2375.y)));
            let x_2379 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2379.x, x_2379.x, x_2379.y, x_2379.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2382 : vec4<f32> = u_xlat12;
            let x_2384 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2382.x, x_2382.x, x_2382.z, x_2382.z) * vec4<f32>(x_2384.x, x_2384.x, x_2384.z, x_2384.z));
            let x_2387 : vec4<f32> = u_xlat13;
            let x_2389 : vec2<f32> = (vec2<f32>(x_2387.y, x_2387.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2390 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2389.x, x_2390.y, x_2389.y, x_2390.w);
            let x_2392 : vec4<f32> = u_xlat13;
            let x_2395 : vec2<f32> = u_xlat61;
            let x_2397 : vec2<f32> = ((vec2<f32>(x_2392.x, x_2392.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2395));
            let x_2398 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2397.x, x_2397.y, x_2398.z, x_2398.w);
            let x_2401 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2401) + vec2<f32>(1.0f, 1.0f));
            let x_2404 : vec2<f32> = u_xlat61;
            let x_2405 : vec2<f32> = min(x_2404, vec2<f32>(0.0f, 0.0f));
            let x_2406 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2405.x, x_2405.y, x_2406.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat14;
            let x_2411 : vec4<f32> = u_xlat14;
            let x_2414 : vec2<f32> = u_xlat63;
            let x_2415 : vec2<f32> = ((-(vec2<f32>(x_2408.x, x_2408.y)) * vec2<f32>(x_2411.x, x_2411.y)) + x_2414);
            let x_2416 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2415.x, x_2415.y, x_2416.z, x_2416.w);
            let x_2418 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2418, vec2<f32>(0.0f, 0.0f));
            let x_2420 : vec2<f32> = u_xlat61;
            let x_2422 : vec2<f32> = u_xlat61;
            let x_2424 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2420) * x_2422) + vec2<f32>(x_2424.y, x_2424.w));
            let x_2427 : vec4<f32> = u_xlat14;
            let x_2429 : vec2<f32> = (vec2<f32>(x_2427.x, x_2427.y) + vec2<f32>(1.0f, 1.0f));
            let x_2430 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2429.x, x_2429.y, x_2430.z, x_2430.w);
            let x_2432 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2432 + vec2<f32>(1.0f, 1.0f));
            let x_2434 : vec4<f32> = u_xlat13;
            let x_2436 : vec2<f32> = (vec2<f32>(x_2434.x, x_2434.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2437 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2436.x, x_2436.y, x_2437.z, x_2437.w);
            let x_2439 : vec2<f32> = u_xlat63;
            let x_2440 : vec2<f32> = (x_2439 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2441 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2440.x, x_2440.y, x_2441.z, x_2441.w);
            let x_2443 : vec4<f32> = u_xlat14;
            let x_2445 : vec2<f32> = (vec2<f32>(x_2443.x, x_2443.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2446 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec2<f32> = u_xlat61;
            let x_2449 : vec2<f32> = (x_2448 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2450 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
            let x_2452 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2452.y, x_2452.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2456 : f32 = u_xlat14.x;
            u_xlat15.z = x_2456;
            let x_2459 : f32 = u_xlat61.x;
            u_xlat15.w = x_2459;
            let x_2462 : f32 = u_xlat16.x;
            u_xlat13.z = x_2462;
            let x_2465 : f32 = u_xlat12.x;
            u_xlat13.w = x_2465;
            let x_2467 : vec4<f32> = u_xlat13;
            let x_2469 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2467.z, x_2467.w, x_2467.x, x_2467.z) + vec4<f32>(x_2469.z, x_2469.w, x_2469.x, x_2469.z));
            let x_2473 : f32 = u_xlat15.y;
            u_xlat14.z = x_2473;
            let x_2476 : f32 = u_xlat61.y;
            u_xlat14.w = x_2476;
            let x_2479 : f32 = u_xlat13.y;
            u_xlat16.z = x_2479;
            let x_2482 : f32 = u_xlat12.z;
            u_xlat16.w = x_2482;
            let x_2484 : vec4<f32> = u_xlat14;
            let x_2486 : vec4<f32> = u_xlat16;
            let x_2488 : vec3<f32> = (vec3<f32>(x_2484.z, x_2484.y, x_2484.w) + vec3<f32>(x_2486.z, x_2486.y, x_2486.w));
            let x_2489 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
            let x_2491 : vec4<f32> = u_xlat13;
            let x_2493 : vec4<f32> = u_xlat17;
            let x_2495 : vec3<f32> = (vec3<f32>(x_2491.x, x_2491.z, x_2491.w) / vec3<f32>(x_2493.z, x_2493.w, x_2493.y));
            let x_2496 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2495.x, x_2495.y, x_2495.z, x_2496.w);
            let x_2498 : vec4<f32> = u_xlat13;
            let x_2500 : vec3<f32> = (vec3<f32>(x_2498.x, x_2498.y, x_2498.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2501 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
            let x_2503 : vec4<f32> = u_xlat16;
            let x_2505 : vec4<f32> = u_xlat12;
            let x_2507 : vec3<f32> = (vec3<f32>(x_2503.z, x_2503.y, x_2503.w) / vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
            let x_2508 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
            let x_2510 : vec4<f32> = u_xlat14;
            let x_2512 : vec3<f32> = (vec3<f32>(x_2510.x, x_2510.y, x_2510.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2513 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
            let x_2515 : vec4<f32> = u_xlat13;
            let x_2518 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2520 : vec3<f32> = (vec3<f32>(x_2515.y, x_2515.x, x_2515.z) * vec3<f32>(x_2518.x, x_2518.x, x_2518.x));
            let x_2521 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
            let x_2523 : vec4<f32> = u_xlat14;
            let x_2526 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2528 : vec3<f32> = (vec3<f32>(x_2523.x, x_2523.y, x_2523.z) * vec3<f32>(x_2526.y, x_2526.y, x_2526.y));
            let x_2529 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
            let x_2532 : f32 = u_xlat14.x;
            u_xlat13.w = x_2532;
            let x_2534 : vec4<f32> = u_xlat11;
            let x_2537 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2540 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2534.x, x_2534.y, x_2534.x, x_2534.y) * vec4<f32>(x_2537.x, x_2537.y, x_2537.x, x_2537.y)) + vec4<f32>(x_2540.y, x_2540.w, x_2540.x, x_2540.w));
            let x_2543 : vec4<f32> = u_xlat11;
            let x_2546 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2549 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2543.x, x_2543.y) * vec2<f32>(x_2546.x, x_2546.y)) + vec2<f32>(x_2549.z, x_2549.w));
            let x_2553 : f32 = u_xlat13.y;
            u_xlat14.w = x_2553;
            let x_2555 : vec4<f32> = u_xlat14;
            let x_2556 : vec2<f32> = vec2<f32>(x_2555.y, x_2555.z);
            let x_2557 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2557.x, x_2556.x, x_2557.z, x_2556.y);
            let x_2559 : vec4<f32> = u_xlat11;
            let x_2562 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2565 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2559.x, x_2559.y, x_2559.x, x_2559.y) * vec4<f32>(x_2562.x, x_2562.y, x_2562.x, x_2562.y)) + vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2565.y));
            let x_2568 : vec4<f32> = u_xlat11;
            let x_2571 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2574 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2568.x, x_2568.y, x_2568.x, x_2568.y) * vec4<f32>(x_2571.x, x_2571.y, x_2571.x, x_2571.y)) + vec4<f32>(x_2574.w, x_2574.y, x_2574.w, x_2574.z));
            let x_2577 : vec4<f32> = u_xlat11;
            let x_2580 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2583 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2577.x, x_2577.y, x_2577.x, x_2577.y) * vec4<f32>(x_2580.x, x_2580.y, x_2580.x, x_2580.y)) + vec4<f32>(x_2583.x, x_2583.w, x_2583.z, x_2583.w));
            let x_2586 : vec4<f32> = u_xlat12;
            let x_2588 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2586.x, x_2586.x, x_2586.x, x_2586.y) * vec4<f32>(x_2588.z, x_2588.w, x_2588.y, x_2588.z));
            let x_2591 : vec4<f32> = u_xlat12;
            let x_2593 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2591.y, x_2591.y, x_2591.z, x_2591.z) * x_2593);
            let x_2597 : f32 = u_xlat12.z;
            let x_2599 : f32 = u_xlat17.y;
            u_xlat85 = (x_2597 * x_2599);
            let x_2602 : vec4<f32> = u_xlat15;
            let x_2603 : vec2<f32> = vec2<f32>(x_2602.x, x_2602.y);
            let x_2605 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2603.x, x_2603.y, x_2605);
            let x_2612 : vec3<f32> = txVec34;
            let x_2614 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2612.xy, x_2612.z);
            u_xlat11.x = x_2614;
            let x_2617 : vec4<f32> = u_xlat15;
            let x_2618 : vec2<f32> = vec2<f32>(x_2617.z, x_2617.w);
            let x_2620 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2618.x, x_2618.y, x_2620);
            let x_2628 : vec3<f32> = txVec35;
            let x_2630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2628.xy, x_2628.z);
            u_xlat36 = x_2630;
            let x_2631 : f32 = u_xlat36;
            let x_2633 : f32 = u_xlat18.y;
            u_xlat36 = (x_2631 * x_2633);
            let x_2636 : f32 = u_xlat18.x;
            let x_2638 : f32 = u_xlat11.x;
            let x_2640 : f32 = u_xlat36;
            u_xlat11.x = ((x_2636 * x_2638) + x_2640);
            let x_2644 : vec2<f32> = u_xlat61;
            let x_2646 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2644.x, x_2644.y, x_2646);
            let x_2653 : vec3<f32> = txVec36;
            let x_2655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2653.xy, x_2653.z);
            u_xlat36 = x_2655;
            let x_2657 : f32 = u_xlat18.z;
            let x_2658 : f32 = u_xlat36;
            let x_2661 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2657 * x_2658) + x_2661);
            let x_2665 : vec4<f32> = u_xlat14;
            let x_2666 : vec2<f32> = vec2<f32>(x_2665.x, x_2665.y);
            let x_2668 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2666.x, x_2666.y, x_2668);
            let x_2675 : vec3<f32> = txVec37;
            let x_2677 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2675.xy, x_2675.z);
            u_xlat36 = x_2677;
            let x_2679 : f32 = u_xlat18.w;
            let x_2680 : f32 = u_xlat36;
            let x_2683 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2679 * x_2680) + x_2683);
            let x_2687 : vec4<f32> = u_xlat16;
            let x_2688 : vec2<f32> = vec2<f32>(x_2687.x, x_2687.y);
            let x_2690 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2688.x, x_2688.y, x_2690);
            let x_2697 : vec3<f32> = txVec38;
            let x_2699 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2697.xy, x_2697.z);
            u_xlat36 = x_2699;
            let x_2701 : f32 = u_xlat19.x;
            let x_2702 : f32 = u_xlat36;
            let x_2705 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2701 * x_2702) + x_2705);
            let x_2709 : vec4<f32> = u_xlat16;
            let x_2710 : vec2<f32> = vec2<f32>(x_2709.z, x_2709.w);
            let x_2712 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2710.x, x_2710.y, x_2712);
            let x_2719 : vec3<f32> = txVec39;
            let x_2721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2719.xy, x_2719.z);
            u_xlat36 = x_2721;
            let x_2723 : f32 = u_xlat19.y;
            let x_2724 : f32 = u_xlat36;
            let x_2727 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2723 * x_2724) + x_2727);
            let x_2731 : vec4<f32> = u_xlat14;
            let x_2732 : vec2<f32> = vec2<f32>(x_2731.z, x_2731.w);
            let x_2734 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2732.x, x_2732.y, x_2734);
            let x_2741 : vec3<f32> = txVec40;
            let x_2743 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2741.xy, x_2741.z);
            u_xlat36 = x_2743;
            let x_2745 : f32 = u_xlat19.z;
            let x_2746 : f32 = u_xlat36;
            let x_2749 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2745 * x_2746) + x_2749);
            let x_2753 : vec4<f32> = u_xlat13;
            let x_2754 : vec2<f32> = vec2<f32>(x_2753.x, x_2753.y);
            let x_2756 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2754.x, x_2754.y, x_2756);
            let x_2763 : vec3<f32> = txVec41;
            let x_2765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2763.xy, x_2763.z);
            u_xlat36 = x_2765;
            let x_2767 : f32 = u_xlat19.w;
            let x_2768 : f32 = u_xlat36;
            let x_2771 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2767 * x_2768) + x_2771);
            let x_2775 : vec4<f32> = u_xlat13;
            let x_2776 : vec2<f32> = vec2<f32>(x_2775.z, x_2775.w);
            let x_2778 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2776.x, x_2776.y, x_2778);
            let x_2785 : vec3<f32> = txVec42;
            let x_2787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2785.xy, x_2785.z);
            u_xlat36 = x_2787;
            let x_2788 : f32 = u_xlat85;
            let x_2789 : f32 = u_xlat36;
            let x_2792 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2788 * x_2789) + x_2792);
          } else {
            let x_2795 : vec4<f32> = u_xlat10;
            let x_2798 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2801 : vec2<f32> = ((vec2<f32>(x_2795.x, x_2795.y) * vec2<f32>(x_2798.z, x_2798.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2802 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec4<f32> = u_xlat11;
            let x_2806 : vec2<f32> = floor(vec2<f32>(x_2804.x, x_2804.y));
            let x_2807 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2806.x, x_2806.y, x_2807.z, x_2807.w);
            let x_2809 : vec4<f32> = u_xlat10;
            let x_2812 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2815 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2809.x, x_2809.y) * vec2<f32>(x_2812.z, x_2812.w)) + -(vec2<f32>(x_2815.x, x_2815.y)));
            let x_2819 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2819.x, x_2819.x, x_2819.y, x_2819.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2822 : vec4<f32> = u_xlat12;
            let x_2824 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2822.x, x_2822.x, x_2822.z, x_2822.z) * vec4<f32>(x_2824.x, x_2824.x, x_2824.z, x_2824.z));
            let x_2827 : vec4<f32> = u_xlat13;
            let x_2829 : vec2<f32> = (vec2<f32>(x_2827.y, x_2827.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2830 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2830.x, x_2829.x, x_2830.z, x_2829.y);
            let x_2832 : vec4<f32> = u_xlat13;
            let x_2835 : vec2<f32> = u_xlat61;
            let x_2837 : vec2<f32> = ((vec2<f32>(x_2832.x, x_2832.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2835));
            let x_2838 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2837.x, x_2838.y, x_2837.y, x_2838.w);
            let x_2840 : vec2<f32> = u_xlat61;
            let x_2842 : vec2<f32> = (-(x_2840) + vec2<f32>(1.0f, 1.0f));
            let x_2843 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2842.x, x_2842.y, x_2843.z, x_2843.w);
            let x_2845 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2845, vec2<f32>(0.0f, 0.0f));
            let x_2847 : vec2<f32> = u_xlat63;
            let x_2849 : vec2<f32> = u_xlat63;
            let x_2851 : vec4<f32> = u_xlat13;
            let x_2853 : vec2<f32> = ((-(x_2847) * x_2849) + vec2<f32>(x_2851.x, x_2851.y));
            let x_2854 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2853.x, x_2853.y, x_2854.z, x_2854.w);
            let x_2856 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2856, vec2<f32>(0.0f, 0.0f));
            let x_2859 : vec2<f32> = u_xlat63;
            let x_2861 : vec2<f32> = u_xlat63;
            let x_2863 : vec4<f32> = u_xlat12;
            let x_2865 : vec2<f32> = ((-(x_2859) * x_2861) + vec2<f32>(x_2863.y, x_2863.w));
            let x_2866 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2865.x, x_2866.y, x_2865.y);
            let x_2868 : vec4<f32> = u_xlat13;
            let x_2871 : vec2<f32> = (vec2<f32>(x_2868.x, x_2868.y) + vec2<f32>(2.0f, 2.0f));
            let x_2872 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2871.x, x_2871.y, x_2872.z, x_2872.w);
            let x_2874 : vec3<f32> = u_xlat37;
            let x_2876 : vec2<f32> = (vec2<f32>(x_2874.x, x_2874.z) + vec2<f32>(2.0f, 2.0f));
            let x_2877 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2877.x, x_2876.x, x_2877.z, x_2876.y);
            let x_2880 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2880 * 0.08163200318813323975f);
            let x_2883 : vec4<f32> = u_xlat12;
            let x_2886 : vec3<f32> = (vec3<f32>(x_2883.z, x_2883.x, x_2883.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2887 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2887.w);
            let x_2889 : vec4<f32> = u_xlat13;
            let x_2891 : vec2<f32> = (vec2<f32>(x_2889.x, x_2889.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2892 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2891.x, x_2891.y, x_2892.z, x_2892.w);
            let x_2895 : f32 = u_xlat16.y;
            u_xlat15.x = x_2895;
            let x_2897 : vec2<f32> = u_xlat61;
            let x_2900 : vec2<f32> = ((vec2<f32>(x_2897.x, x_2897.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2901 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2901.x, x_2900.x, x_2901.z, x_2900.y);
            let x_2903 : vec2<f32> = u_xlat61;
            let x_2906 : vec2<f32> = ((vec2<f32>(x_2903.x, x_2903.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2907 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2906.x, x_2907.y, x_2906.y, x_2907.w);
            let x_2910 : f32 = u_xlat12.x;
            u_xlat13.y = x_2910;
            let x_2913 : f32 = u_xlat14.y;
            u_xlat13.w = x_2913;
            let x_2915 : vec4<f32> = u_xlat13;
            let x_2916 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2915 + x_2916);
            let x_2918 : vec2<f32> = u_xlat61;
            let x_2921 : vec2<f32> = ((vec2<f32>(x_2918.y, x_2918.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2922 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2922.x, x_2921.x, x_2922.z, x_2921.y);
            let x_2924 : vec2<f32> = u_xlat61;
            let x_2927 : vec2<f32> = ((vec2<f32>(x_2924.y, x_2924.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2928 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2927.x, x_2928.y, x_2927.y, x_2928.w);
            let x_2931 : f32 = u_xlat12.y;
            u_xlat14.y = x_2931;
            let x_2933 : vec4<f32> = u_xlat14;
            let x_2934 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2933 + x_2934);
            let x_2936 : vec4<f32> = u_xlat13;
            let x_2937 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2936 / x_2937);
            let x_2939 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2939 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2941 : vec4<f32> = u_xlat14;
            let x_2942 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2941 / x_2942);
            let x_2944 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2944 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2946 : vec4<f32> = u_xlat13;
            let x_2949 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2946.w, x_2946.x, x_2946.y, x_2946.z) * vec4<f32>(x_2949.x, x_2949.x, x_2949.x, x_2949.x));
            let x_2952 : vec4<f32> = u_xlat14;
            let x_2955 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2952.x, x_2952.w, x_2952.y, x_2952.z) * vec4<f32>(x_2955.y, x_2955.y, x_2955.y, x_2955.y));
            let x_2958 : vec4<f32> = u_xlat13;
            let x_2959 : vec3<f32> = vec3<f32>(x_2958.y, x_2958.z, x_2958.w);
            let x_2960 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2959.x, x_2960.y, x_2959.y, x_2959.z);
            let x_2963 : f32 = u_xlat14.x;
            u_xlat16.y = x_2963;
            let x_2965 : vec4<f32> = u_xlat11;
            let x_2968 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2971 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2965.x, x_2965.y, x_2965.x, x_2965.y) * vec4<f32>(x_2968.x, x_2968.y, x_2968.x, x_2968.y)) + vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2971.y));
            let x_2974 : vec4<f32> = u_xlat11;
            let x_2977 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2980 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2974.x, x_2974.y) * vec2<f32>(x_2977.x, x_2977.y)) + vec2<f32>(x_2980.w, x_2980.y));
            let x_2984 : f32 = u_xlat16.y;
            u_xlat13.y = x_2984;
            let x_2987 : f32 = u_xlat14.z;
            u_xlat16.y = x_2987;
            let x_2989 : vec4<f32> = u_xlat11;
            let x_2992 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_2995 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2989.x, x_2989.y, x_2989.x, x_2989.y) * vec4<f32>(x_2992.x, x_2992.y, x_2992.x, x_2992.y)) + vec4<f32>(x_2995.x, x_2995.y, x_2995.z, x_2995.y));
            let x_2998 : vec4<f32> = u_xlat11;
            let x_3001 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3004 : vec4<f32> = u_xlat16;
            let x_3006 : vec2<f32> = ((vec2<f32>(x_2998.x, x_2998.y) * vec2<f32>(x_3001.x, x_3001.y)) + vec2<f32>(x_3004.w, x_3004.y));
            let x_3007 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3006.x, x_3006.y, x_3007.z, x_3007.w);
            let x_3010 : f32 = u_xlat16.y;
            u_xlat13.z = x_3010;
            let x_3013 : vec4<f32> = u_xlat11;
            let x_3016 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.x, x_3019.y, x_3019.x, x_3019.z));
            let x_3023 : f32 = u_xlat14.w;
            u_xlat16.y = x_3023;
            let x_3026 : vec4<f32> = u_xlat11;
            let x_3029 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3032 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y) * vec4<f32>(x_3029.x, x_3029.y, x_3029.x, x_3029.y)) + vec4<f32>(x_3032.x, x_3032.y, x_3032.z, x_3032.y));
            let x_3036 : vec4<f32> = u_xlat11;
            let x_3039 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3042 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3036.x, x_3036.y) * vec2<f32>(x_3039.x, x_3039.y)) + vec2<f32>(x_3042.w, x_3042.y));
            let x_3046 : f32 = u_xlat16.y;
            u_xlat13.w = x_3046;
            let x_3049 : vec4<f32> = u_xlat11;
            let x_3052 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3055 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3049.x, x_3049.y) * vec2<f32>(x_3052.x, x_3052.y)) + vec2<f32>(x_3055.x, x_3055.w));
            let x_3058 : vec4<f32> = u_xlat16;
            let x_3059 : vec3<f32> = vec3<f32>(x_3058.x, x_3058.z, x_3058.w);
            let x_3060 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3059.x, x_3060.y, x_3059.y, x_3059.z);
            let x_3062 : vec4<f32> = u_xlat11;
            let x_3065 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3068 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3062.x, x_3062.y, x_3062.x, x_3062.y) * vec4<f32>(x_3065.x, x_3065.y, x_3065.x, x_3065.y)) + vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3068.y));
            let x_3072 : vec4<f32> = u_xlat11;
            let x_3075 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3072.x, x_3072.y) * vec2<f32>(x_3075.x, x_3075.y)) + vec2<f32>(x_3078.w, x_3078.y));
            let x_3082 : f32 = u_xlat13.x;
            u_xlat14.x = x_3082;
            let x_3084 : vec4<f32> = u_xlat11;
            let x_3087 : vec4<f32> = x_80.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat14;
            let x_3092 : vec2<f32> = ((vec2<f32>(x_3084.x, x_3084.y) * vec2<f32>(x_3087.x, x_3087.y)) + vec2<f32>(x_3090.x, x_3090.y));
            let x_3093 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3092.x, x_3092.y, x_3093.z, x_3093.w);
            let x_3096 : vec4<f32> = u_xlat12;
            let x_3098 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3096.x, x_3096.x, x_3096.x, x_3096.x) * x_3098);
            let x_3101 : vec4<f32> = u_xlat12;
            let x_3103 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3101.y, x_3101.y, x_3101.y, x_3101.y) * x_3103);
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3108 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3106.z, x_3106.z, x_3106.z, x_3106.z) * x_3108);
            let x_3110 : vec4<f32> = u_xlat12;
            let x_3112 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3110.w, x_3110.w, x_3110.w, x_3110.w) * x_3112);
            let x_3115 : vec4<f32> = u_xlat17;
            let x_3116 : vec2<f32> = vec2<f32>(x_3115.x, x_3115.y);
            let x_3118 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
            let x_3125 : vec3<f32> = txVec43;
            let x_3127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
            u_xlat85 = x_3127;
            let x_3129 : vec4<f32> = u_xlat17;
            let x_3130 : vec2<f32> = vec2<f32>(x_3129.z, x_3129.w);
            let x_3132 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3139 : vec3<f32> = txVec44;
            let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
            u_xlat13.x = x_3141;
            let x_3144 : f32 = u_xlat13.x;
            let x_3146 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3144 * x_3146);
            let x_3150 : f32 = u_xlat22.x;
            let x_3151 : f32 = u_xlat85;
            let x_3154 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3150 * x_3151) + x_3154);
            let x_3157 : vec2<f32> = u_xlat61;
            let x_3159 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3157.x, x_3157.y, x_3159);
            let x_3166 : vec3<f32> = txVec45;
            let x_3168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
            u_xlat61.x = x_3168;
            let x_3171 : f32 = u_xlat22.z;
            let x_3173 : f32 = u_xlat61.x;
            let x_3175 : f32 = u_xlat85;
            u_xlat85 = ((x_3171 * x_3173) + x_3175);
            let x_3178 : vec4<f32> = u_xlat20;
            let x_3179 : vec2<f32> = vec2<f32>(x_3178.x, x_3178.y);
            let x_3181 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3179.x, x_3179.y, x_3181);
            let x_3188 : vec3<f32> = txVec46;
            let x_3190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3188.xy, x_3188.z);
            u_xlat61.x = x_3190;
            let x_3193 : f32 = u_xlat22.w;
            let x_3195 : f32 = u_xlat61.x;
            let x_3197 : f32 = u_xlat85;
            u_xlat85 = ((x_3193 * x_3195) + x_3197);
            let x_3200 : vec4<f32> = u_xlat18;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.x, x_3200.y);
            let x_3203 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec47;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat61.x = x_3212;
            let x_3215 : f32 = u_xlat23.x;
            let x_3217 : f32 = u_xlat61.x;
            let x_3219 : f32 = u_xlat85;
            u_xlat85 = ((x_3215 * x_3217) + x_3219);
            let x_3222 : vec4<f32> = u_xlat18;
            let x_3223 : vec2<f32> = vec2<f32>(x_3222.z, x_3222.w);
            let x_3225 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3223.x, x_3223.y, x_3225);
            let x_3232 : vec3<f32> = txVec48;
            let x_3234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3232.xy, x_3232.z);
            u_xlat61.x = x_3234;
            let x_3237 : f32 = u_xlat23.y;
            let x_3239 : f32 = u_xlat61.x;
            let x_3241 : f32 = u_xlat85;
            u_xlat85 = ((x_3237 * x_3239) + x_3241);
            let x_3244 : vec4<f32> = u_xlat19;
            let x_3245 : vec2<f32> = vec2<f32>(x_3244.x, x_3244.y);
            let x_3247 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
            let x_3254 : vec3<f32> = txVec49;
            let x_3256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3254.xy, x_3254.z);
            u_xlat61.x = x_3256;
            let x_3259 : f32 = u_xlat23.z;
            let x_3261 : f32 = u_xlat61.x;
            let x_3263 : f32 = u_xlat85;
            u_xlat85 = ((x_3259 * x_3261) + x_3263);
            let x_3266 : vec4<f32> = u_xlat20;
            let x_3267 : vec2<f32> = vec2<f32>(x_3266.z, x_3266.w);
            let x_3269 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec50;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat61.x = x_3278;
            let x_3281 : f32 = u_xlat23.w;
            let x_3283 : f32 = u_xlat61.x;
            let x_3285 : f32 = u_xlat85;
            u_xlat85 = ((x_3281 * x_3283) + x_3285);
            let x_3288 : vec4<f32> = u_xlat21;
            let x_3289 : vec2<f32> = vec2<f32>(x_3288.x, x_3288.y);
            let x_3291 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
            let x_3298 : vec3<f32> = txVec51;
            let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
            u_xlat61.x = x_3300;
            let x_3303 : f32 = u_xlat24.x;
            let x_3305 : f32 = u_xlat61.x;
            let x_3307 : f32 = u_xlat85;
            u_xlat85 = ((x_3303 * x_3305) + x_3307);
            let x_3310 : vec4<f32> = u_xlat21;
            let x_3311 : vec2<f32> = vec2<f32>(x_3310.z, x_3310.w);
            let x_3313 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
            let x_3320 : vec3<f32> = txVec52;
            let x_3322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3320.xy, x_3320.z);
            u_xlat61.x = x_3322;
            let x_3325 : f32 = u_xlat24.y;
            let x_3327 : f32 = u_xlat61.x;
            let x_3329 : f32 = u_xlat85;
            u_xlat85 = ((x_3325 * x_3327) + x_3329);
            let x_3332 : vec2<f32> = u_xlat38;
            let x_3334 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec53;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat61.x = x_3343;
            let x_3346 : f32 = u_xlat24.z;
            let x_3348 : f32 = u_xlat61.x;
            let x_3350 : f32 = u_xlat85;
            u_xlat85 = ((x_3346 * x_3348) + x_3350);
            let x_3353 : vec2<f32> = u_xlat69;
            let x_3355 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec54;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat61.x = x_3364;
            let x_3367 : f32 = u_xlat24.w;
            let x_3369 : f32 = u_xlat61.x;
            let x_3371 : f32 = u_xlat85;
            u_xlat85 = ((x_3367 * x_3369) + x_3371);
            let x_3374 : vec4<f32> = u_xlat16;
            let x_3375 : vec2<f32> = vec2<f32>(x_3374.x, x_3374.y);
            let x_3377 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3375.x, x_3375.y, x_3377);
            let x_3384 : vec3<f32> = txVec55;
            let x_3386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3384.xy, x_3384.z);
            u_xlat61.x = x_3386;
            let x_3389 : f32 = u_xlat12.x;
            let x_3391 : f32 = u_xlat61.x;
            let x_3393 : f32 = u_xlat85;
            u_xlat85 = ((x_3389 * x_3391) + x_3393);
            let x_3396 : vec4<f32> = u_xlat16;
            let x_3397 : vec2<f32> = vec2<f32>(x_3396.z, x_3396.w);
            let x_3399 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3397.x, x_3397.y, x_3399);
            let x_3406 : vec3<f32> = txVec56;
            let x_3408 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3406.xy, x_3406.z);
            u_xlat61.x = x_3408;
            let x_3411 : f32 = u_xlat12.y;
            let x_3413 : f32 = u_xlat61.x;
            let x_3415 : f32 = u_xlat85;
            u_xlat85 = ((x_3411 * x_3413) + x_3415);
            let x_3418 : vec2<f32> = u_xlat64;
            let x_3420 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec57;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat61.x = x_3429;
            let x_3432 : f32 = u_xlat12.z;
            let x_3434 : f32 = u_xlat61.x;
            let x_3436 : f32 = u_xlat85;
            u_xlat85 = ((x_3432 * x_3434) + x_3436);
            let x_3439 : vec4<f32> = u_xlat11;
            let x_3440 : vec2<f32> = vec2<f32>(x_3439.x, x_3439.y);
            let x_3442 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3440.x, x_3440.y, x_3442);
            let x_3449 : vec3<f32> = txVec58;
            let x_3451 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3449.xy, x_3449.z);
            u_xlat11.x = x_3451;
            let x_3454 : f32 = u_xlat12.w;
            let x_3456 : f32 = u_xlat11.x;
            let x_3458 : f32 = u_xlat85;
            u_xlat84 = ((x_3454 * x_3456) + x_3458);
          }
        }
      } else {
        let x_3462 : vec4<f32> = u_xlat10;
        let x_3463 : vec2<f32> = vec2<f32>(x_3462.x, x_3462.y);
        let x_3465 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3463.x, x_3463.y, x_3465);
        let x_3472 : vec3<f32> = txVec59;
        let x_3474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3472.xy, x_3472.z);
        u_xlat84 = x_3474;
      }
      let x_3475 : i32 = u_xlati80;
      let x_3477 : f32 = x_80.x_AdditionalShadowParams[x_3475].x;
      u_xlat10.x = (1.0f + -(x_3477));
      let x_3481 : f32 = u_xlat84;
      let x_3482 : i32 = u_xlati80;
      let x_3484 : f32 = x_80.x_AdditionalShadowParams[x_3482].x;
      let x_3487 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3481 * x_3484) + x_3487);
      let x_3490 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3490);
      let x_3495 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3495 >= 1.0f);
      let x_3497 : bool = u_xlatb35;
      let x_3499 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3497 | x_3499);
      let x_3503 : bool = u_xlatb10.x;
      let x_3504 : f32 = u_xlat84;
      u_xlat84 = select(x_3504, 1.0f, x_3503);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3507 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3507) + 1.0f);
    let x_3511 : f32 = u_xlat1;
    let x_3513 : f32 = u_xlat10.x;
    let x_3515 : f32 = u_xlat84;
    u_xlat84 = ((x_3511 * x_3513) + x_3515);
    let x_3517 : f32 = u_xlat81;
    let x_3518 : f32 = u_xlat84;
    u_xlat81 = (x_3517 * x_3518);
    let x_3520 : vec3<f32> = u_xlat26;
    let x_3521 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3520, vec3<f32>(x_3521.x, x_3521.y, x_3521.z));
    let x_3524 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3524, 0.0f, 1.0f);
    let x_3526 : f32 = u_xlat81;
    let x_3527 : f32 = u_xlat84;
    u_xlat81 = (x_3526 * x_3527);
    let x_3529 : f32 = u_xlat81;
    let x_3531 : i32 = u_xlati80;
    let x_3533 : vec4<f32> = x_2023.x_AdditionalLightsColor[x_3531];
    let x_3535 : vec3<f32> = (vec3<f32>(x_3529, x_3529, x_3529) * vec3<f32>(x_3533.x, x_3533.y, x_3533.z));
    let x_3536 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3535.x, x_3535.y, x_3535.z, x_3536.w);
    let x_3538 : vec4<f32> = u_xlat8;
    let x_3540 : f32 = u_xlat83;
    let x_3543 : vec4<f32> = u_xlat5;
    let x_3545 : vec3<f32> = ((vec3<f32>(x_3538.x, x_3538.y, x_3538.z) * vec3<f32>(x_3540, x_3540, x_3540)) + vec3<f32>(x_3543.x, x_3543.y, x_3543.z));
    let x_3546 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3545.x, x_3545.y, x_3545.z, x_3546.w);
    let x_3548 : vec4<f32> = u_xlat8;
    let x_3550 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3548.x, x_3548.y, x_3548.z), vec3<f32>(x_3550.x, x_3550.y, x_3550.z));
    let x_3553 : f32 = u_xlat80;
    u_xlat80 = max(x_3553, 1.17549435e-38f);
    let x_3555 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3555);
    let x_3557 : f32 = u_xlat80;
    let x_3559 : vec4<f32> = u_xlat8;
    let x_3561 : vec3<f32> = (vec3<f32>(x_3557, x_3557, x_3557) * vec3<f32>(x_3559.x, x_3559.y, x_3559.z));
    let x_3562 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3561.x, x_3561.y, x_3561.z, x_3562.w);
    let x_3564 : vec3<f32> = u_xlat26;
    let x_3565 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(x_3564, vec3<f32>(x_3565.x, x_3565.y, x_3565.z));
    let x_3568 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3568, 0.0f, 1.0f);
    let x_3570 : vec4<f32> = u_xlat9;
    let x_3572 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3570.x, x_3570.y, x_3570.z), vec3<f32>(x_3572.x, x_3572.y, x_3572.z));
    let x_3575 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3575, 0.0f, 1.0f);
    let x_3577 : f32 = u_xlat80;
    let x_3578 : f32 = u_xlat80;
    u_xlat80 = (x_3577 * x_3578);
    let x_3580 : f32 = u_xlat80;
    let x_3582 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3580 * x_3582) + 1.00001001358032226562f);
    let x_3585 : f32 = u_xlat81;
    let x_3586 : f32 = u_xlat81;
    u_xlat81 = (x_3585 * x_3586);
    let x_3588 : f32 = u_xlat80;
    let x_3589 : f32 = u_xlat80;
    u_xlat80 = (x_3588 * x_3589);
    let x_3591 : f32 = u_xlat81;
    u_xlat81 = max(x_3591, 0.10000000149011611938f);
    let x_3593 : f32 = u_xlat80;
    let x_3594 : f32 = u_xlat81;
    u_xlat80 = (x_3593 * x_3594);
    let x_3596 : f32 = u_xlat78;
    let x_3597 : f32 = u_xlat80;
    u_xlat80 = (x_3596 * x_3597);
    let x_3599 : f32 = u_xlat79;
    let x_3600 : f32 = u_xlat80;
    u_xlat80 = (x_3599 / x_3600);
    let x_3602 : vec4<f32> = u_xlat0;
    let x_3604 : f32 = u_xlat80;
    let x_3607 : vec3<f32> = u_xlat4;
    let x_3608 : vec3<f32> = ((vec3<f32>(x_3602.x, x_3602.y, x_3602.z) * vec3<f32>(x_3604, x_3604, x_3604)) + x_3607);
    let x_3609 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3608.x, x_3608.y, x_3608.z, x_3609.w);
    let x_3611 : vec4<f32> = u_xlat8;
    let x_3613 : vec4<f32> = u_xlat10;
    let x_3616 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3611.x, x_3611.y, x_3611.z) * vec3<f32>(x_3613.x, x_3613.y, x_3613.z)) + x_3616);

    continuing {
      let x_3618 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3618 + bitcast<u32>(1i));
    }
  }
  let x_3620 : vec4<f32> = u_xlat6;
  let x_3622 : vec4<f32> = u_xlat2;
  let x_3625 : vec4<f32> = u_xlat3;
  let x_3627 : vec3<f32> = ((vec3<f32>(x_3620.x, x_3620.y, x_3620.z) * vec3<f32>(x_3622.x, x_3622.z, x_3622.w)) + vec3<f32>(x_3625.x, x_3625.y, x_3625.z));
  let x_3628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3627.x, x_3627.y, x_3627.z, x_3628.w);
  let x_3632 : vec3<f32> = u_xlat32;
  let x_3633 : vec4<f32> = u_xlat0;
  let x_3635 : vec3<f32> = (x_3632 + vec3<f32>(x_3633.x, x_3633.y, x_3633.z));
  let x_3636 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3635.x, x_3635.y, x_3635.z, x_3636.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


