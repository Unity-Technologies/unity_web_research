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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_83 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu26 : u32;

var<private> u_xlati26 : i32;

@group(1) @binding(2) var<uniform> x_269 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb5 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlatb51 : bool;

var<private> u_xlatb76 : bool;

var<private> u_xlat51 : f32;

var<private> u_xlat76 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2071 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatu77 : u32;

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
  var x_1684 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2213 : f32;
  var x_2224 : f32;
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
  let x_43 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_43.x, x_43.y), x_46);
  u_xlat1.x = x_47.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat26.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_61);
  let x_65 : vec3<f32> = u_xlat26;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec3<f32> = (vec3<f32>(x_65.x, x_65.x, x_65.x) * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_74 : vec3<f32> = vs_TEXCOORD7;
  let x_87 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres0;
  u_xlat26 = (x_74 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_92 : vec3<f32> = vs_TEXCOORD7;
  let x_95 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_92 + -(vec3<f32>(x_95.x, x_95.y, x_95.z)));
  let x_100 : vec3<f32> = vs_TEXCOORD7;
  let x_103 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres2;
  let x_106 : vec3<f32> = (x_100 + -(vec3<f32>(x_103.x, x_103.y, x_103.z)));
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec3<f32> = vs_TEXCOORD7;
  let x_113 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres3;
  let x_116 : vec3<f32> = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_117 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec3<f32> = u_xlat26;
  let x_121 : vec3<f32> = u_xlat26;
  u_xlat6.x = dot(x_120, x_121);
  let x_124 : vec3<f32> = u_xlat3;
  let x_125 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_124, x_125);
  let x_129 : vec4<f32> = u_xlat4;
  let x_131 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_129.x, x_129.y, x_129.z), vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_136 : vec4<f32> = u_xlat5;
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = u_xlat6;
  let x_150 : vec4<f32> = x_83.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_147 < x_150);
  let x_154 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_154);
  let x_160 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.x;
  u_xlat26.x = select(-0.0f, -1.0f, x_172);
  let x_178 : bool = u_xlatb3.y;
  u_xlat26.y = select(-0.0f, -1.0f, x_178);
  let x_182 : bool = u_xlatb3.z;
  u_xlat26.z = select(-0.0f, -1.0f, x_182);
  let x_185 : vec3<f32> = u_xlat26;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat26 = (x_185 + vec3<f32>(x_186.y, x_186.z, x_186.w));
  let x_189 : vec3<f32> = u_xlat26;
  let x_191 : vec3<f32> = max(x_189, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat26.x = dot(x_194, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat26.x;
  u_xlat26.x = (-(x_202) + 4.0f);
  let x_209 : f32 = u_xlat26.x;
  u_xlatu26 = u32(x_209);
  let x_213 : u32 = u_xlatu26;
  u_xlati26 = (bitcast<i32>(x_213) << bitcast<u32>(2i));
  let x_216 : vec3<f32> = vs_TEXCOORD7;
  let x_218 : i32 = u_xlati26;
  let x_221 : i32 = u_xlati26;
  let x_225 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_218 + 1i) / 4i)][((x_221 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_216.y, x_216.y, x_216.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : i32 = u_xlati26;
  let x_230 : i32 = u_xlati26;
  let x_233 : vec4<f32> = x_83.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD7;
  let x_238 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + x_238);
  let x_240 : i32 = u_xlati26;
  let x_243 : i32 = u_xlati26;
  let x_247 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_240 + 2i) / 4i)][((x_243 + 2i) % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD7;
  let x_252 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + x_252);
  let x_254 : vec3<f32> = u_xlat3;
  let x_255 : i32 = u_xlati26;
  let x_258 : i32 = u_xlati26;
  let x_262 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_255 + 3i) / 4i)][((x_258 + 3i) % 4i)];
  u_xlat26 = (x_254 + vec3<f32>(x_262.x, x_262.y, x_262.z));
  u_xlat2.w = 1.0f;
  let x_272 : vec4<f32> = x_269.unity_SHAr;
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_272, x_273);
  let x_278 : vec4<f32> = x_269.unity_SHAg;
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_278, x_279);
  let x_284 : vec4<f32> = x_269.unity_SHAb;
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_284, x_285);
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_288.y, x_288.z, x_288.z, x_288.x) * vec4<f32>(x_290.x, x_290.y, x_290.z, x_290.z));
  let x_295 : vec4<f32> = x_269.unity_SHBr;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_295, x_296);
  let x_301 : vec4<f32> = x_269.unity_SHBg;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_301, x_302);
  let x_307 : vec4<f32> = x_269.unity_SHBb;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_307, x_308);
  let x_313 : f32 = u_xlat2.y;
  let x_315 : f32 = u_xlat2.y;
  u_xlat77 = (x_313 * x_315);
  let x_318 : f32 = u_xlat2.x;
  let x_320 : f32 = u_xlat2.x;
  let x_322 : f32 = u_xlat77;
  u_xlat77 = ((x_318 * x_320) + -(x_322));
  let x_327 : vec4<f32> = x_269.unity_SHC;
  let x_329 : f32 = u_xlat77;
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329, x_329, x_329)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec3<f32> = u_xlat3;
  let x_338 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_337 + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_341, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_344 : f32 = u_xlat1.x;
  u_xlat77 = ((-(x_344) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_350 : f32 = u_xlat77;
  u_xlat78 = (-(x_350) + 1.0f);
  let x_353 : vec4<f32> = u_xlat0;
  let x_355 : f32 = u_xlat77;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355, x_355, x_355));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat0;
  let x_364 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat1;
  let x_369 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.x, x_367.x) * vec3<f32>(x_369.x, x_369.y, x_369.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_378) + 1.0f);
  let x_383 : f32 = u_xlat1.x;
  let x_385 : f32 = u_xlat1.x;
  u_xlat77 = (x_383 * x_385);
  let x_387 : f32 = u_xlat77;
  u_xlat77 = max(x_387, 0.0078125f);
  let x_391 : f32 = u_xlat77;
  let x_392 : f32 = u_xlat77;
  u_xlat79 = (x_391 * x_392);
  let x_396 : f32 = u_xlat0.w;
  let x_397 : f32 = u_xlat78;
  u_xlat75 = (x_396 + x_397);
  let x_399 : f32 = u_xlat75;
  u_xlat75 = clamp(x_399, 0.0f, 1.0f);
  let x_401 : f32 = u_xlat77;
  u_xlat78 = ((x_401 * 4.0f) + 2.0f);
  let x_407 : f32 = x_83.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_407);
  let x_409 : bool = u_xlatb5;
  if (x_409) {
    let x_413 : f32 = x_83.x_MainLightShadowParams.y;
    u_xlatb5 = (x_413 == 1.0f);
    let x_415 : bool = u_xlatb5;
    if (x_415) {
      let x_418 : vec3<f32> = u_xlat26;
      let x_422 : vec4<f32> = x_83.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_418.x, x_418.y, x_418.x, x_418.y) + x_422);
      let x_426 : vec4<f32> = u_xlat5;
      let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
      let x_429 : f32 = u_xlat26.z;
      txVec0 = vec3<f32>(x_427.x, x_427.y, x_429);
      let x_441 : vec3<f32> = txVec0;
      let x_443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_441.xy, x_441.z);
      u_xlat6.x = x_443;
      let x_446 : vec4<f32> = u_xlat5;
      let x_447 : vec2<f32> = vec2<f32>(x_446.z, x_446.w);
      let x_449 : f32 = u_xlat26.z;
      txVec1 = vec3<f32>(x_447.x, x_447.y, x_449);
      let x_456 : vec3<f32> = txVec1;
      let x_458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_456.xy, x_456.z);
      u_xlat6.y = x_458;
      let x_460 : vec3<f32> = u_xlat26;
      let x_464 : vec4<f32> = x_83.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_460.x, x_460.y, x_460.x, x_460.y) + x_464);
      let x_467 : vec4<f32> = u_xlat5;
      let x_468 : vec2<f32> = vec2<f32>(x_467.x, x_467.y);
      let x_470 : f32 = u_xlat26.z;
      txVec2 = vec3<f32>(x_468.x, x_468.y, x_470);
      let x_477 : vec3<f32> = txVec2;
      let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_477.xy, x_477.z);
      u_xlat6.z = x_479;
      let x_482 : vec4<f32> = u_xlat5;
      let x_483 : vec2<f32> = vec2<f32>(x_482.z, x_482.w);
      let x_485 : f32 = u_xlat26.z;
      txVec3 = vec3<f32>(x_483.x, x_483.y, x_485);
      let x_492 : vec3<f32> = txVec3;
      let x_494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_492.xy, x_492.z);
      u_xlat6.w = x_494;
      let x_496 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_496, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_504 : f32 = x_83.x_MainLightShadowParams.y;
      u_xlatb30 = (x_504 == 2.0f);
      let x_506 : bool = u_xlatb30;
      if (x_506) {
        let x_511 : vec3<f32> = u_xlat26;
        let x_515 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat30 = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_515.z, x_515.w)) + vec2<f32>(0.5f, 0.5f));
        let x_521 : vec2<f32> = u_xlat30;
        u_xlat30 = floor(x_521);
        let x_523 : vec3<f32> = u_xlat26;
        let x_526 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_529 : vec2<f32> = u_xlat30;
        let x_531 : vec2<f32> = ((vec2<f32>(x_523.x, x_523.y) * vec2<f32>(x_526.z, x_526.w)) + -(x_529));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
        let x_535 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_535.x, x_535.x, x_535.y, x_535.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_540 : vec4<f32> = u_xlat7;
        let x_542 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_540.x, x_540.x, x_540.z, x_540.z) * vec4<f32>(x_542.x, x_542.x, x_542.z, x_542.z));
        let x_546 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_546.y, x_546.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_551 : vec4<f32> = u_xlat8;
        let x_554 : vec4<f32> = u_xlat6;
        let x_557 : vec2<f32> = ((vec2<f32>(x_551.x, x_551.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_554.x, x_554.y)));
        let x_558 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_557.x, x_558.y, x_557.y, x_558.w);
        let x_560 : vec4<f32> = u_xlat6;
        let x_564 : vec2<f32> = (-(vec2<f32>(x_560.x, x_560.y)) + vec2<f32>(1.0f, 1.0f));
        let x_565 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_568.x, x_568.y), vec2<f32>(0.0f, 0.0f));
        let x_572 : vec2<f32> = u_xlat58;
        let x_574 : vec2<f32> = u_xlat58;
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_572) * x_574) + vec2<f32>(x_576.x, x_576.y));
        let x_579 : vec4<f32> = u_xlat6;
        let x_581 : vec2<f32> = max(vec2<f32>(x_579.x, x_579.y), vec2<f32>(0.0f, 0.0f));
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
        let x_584 : vec4<f32> = u_xlat6;
        let x_587 : vec4<f32> = u_xlat6;
        let x_590 : vec4<f32> = u_xlat7;
        let x_592 : vec2<f32> = ((-(vec2<f32>(x_584.x, x_584.y)) * vec2<f32>(x_587.x, x_587.y)) + vec2<f32>(x_590.y, x_590.w));
        let x_593 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_595 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_595 + vec2<f32>(1.0f, 1.0f));
        let x_597 : vec4<f32> = u_xlat6;
        let x_599 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) + vec2<f32>(1.0f, 1.0f));
        let x_600 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_603 : vec4<f32> = u_xlat7;
        let x_607 : vec2<f32> = (vec2<f32>(x_603.x, x_603.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_608 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_611 : vec4<f32> = u_xlat8;
        let x_613 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec2<f32> = u_xlat58;
        let x_617 : vec2<f32> = (x_616 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
        let x_621 : vec4<f32> = u_xlat6;
        let x_623 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_624 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat7;
        let x_628 : vec2<f32> = (vec2<f32>(x_626.y, x_626.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_629 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_632 : f32 = u_xlat8.x;
        u_xlat9.z = x_632;
        let x_635 : f32 = u_xlat6.x;
        u_xlat9.w = x_635;
        let x_638 : f32 = u_xlat11.x;
        u_xlat10.z = x_638;
        let x_641 : f32 = u_xlat56.x;
        u_xlat10.w = x_641;
        let x_643 : vec4<f32> = u_xlat9;
        let x_645 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_643.z, x_643.w, x_643.x, x_643.z) + vec4<f32>(x_645.z, x_645.w, x_645.x, x_645.z));
        let x_649 : f32 = u_xlat9.y;
        u_xlat8.z = x_649;
        let x_652 : f32 = u_xlat6.y;
        u_xlat8.w = x_652;
        let x_655 : f32 = u_xlat10.y;
        u_xlat11.z = x_655;
        let x_658 : f32 = u_xlat56.y;
        u_xlat11.w = x_658;
        let x_660 : vec4<f32> = u_xlat8;
        let x_662 : vec4<f32> = u_xlat11;
        let x_664 : vec3<f32> = (vec3<f32>(x_660.z, x_660.y, x_660.w) + vec3<f32>(x_662.z, x_662.y, x_662.w));
        let x_665 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
        let x_667 : vec4<f32> = u_xlat10;
        let x_669 : vec4<f32> = u_xlat7;
        let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.z, x_667.w) / vec3<f32>(x_669.z, x_669.w, x_669.y));
        let x_672 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat8;
        let x_680 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat11;
        let x_685 : vec4<f32> = u_xlat6;
        let x_687 : vec3<f32> = (vec3<f32>(x_683.z, x_683.y, x_683.w) / vec3<f32>(x_685.x, x_685.y, x_685.z));
        let x_688 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat9;
        let x_692 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_693 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat8;
        let x_698 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_700 : vec3<f32> = (vec3<f32>(x_695.y, x_695.x, x_695.z) * vec3<f32>(x_698.x, x_698.x, x_698.x));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
        let x_703 : vec4<f32> = u_xlat9;
        let x_706 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_708 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) * vec3<f32>(x_706.y, x_706.y, x_706.y));
        let x_709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
        let x_712 : f32 = u_xlat9.x;
        u_xlat8.w = x_712;
        let x_714 : vec2<f32> = u_xlat30;
        let x_717 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_720 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_714.x, x_714.y, x_714.x, x_714.y) * vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y)) + vec4<f32>(x_720.y, x_720.w, x_720.x, x_720.w));
        let x_723 : vec2<f32> = u_xlat30;
        let x_725 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat8;
        let x_730 : vec2<f32> = ((x_723 * vec2<f32>(x_725.x, x_725.y)) + vec2<f32>(x_728.z, x_728.w));
        let x_731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_734 : f32 = u_xlat8.y;
        u_xlat9.w = x_734;
        let x_736 : vec4<f32> = u_xlat9;
        let x_737 : vec2<f32> = vec2<f32>(x_736.y, x_736.z);
        let x_738 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_738.x, x_737.x, x_738.z, x_737.y);
        let x_741 : vec2<f32> = u_xlat30;
        let x_744 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y) * vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y)) + vec4<f32>(x_747.x, x_747.y, x_747.z, x_747.y));
        let x_750 : vec2<f32> = u_xlat30;
        let x_753 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_756 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.y) * vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y)) + vec4<f32>(x_756.w, x_756.y, x_756.w, x_756.z));
        let x_759 : vec2<f32> = u_xlat30;
        let x_762 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_765 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y) * vec4<f32>(x_762.x, x_762.y, x_762.x, x_762.y)) + vec4<f32>(x_765.x, x_765.w, x_765.z, x_765.w));
        let x_769 : vec4<f32> = u_xlat6;
        let x_771 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_769.x, x_769.x, x_769.x, x_769.y) * vec4<f32>(x_771.z, x_771.w, x_771.y, x_771.z));
        let x_775 : vec4<f32> = u_xlat6;
        let x_777 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_775.y, x_775.y, x_775.z, x_775.z) * x_777);
        let x_780 : f32 = u_xlat6.z;
        let x_782 : f32 = u_xlat7.y;
        u_xlat30.x = (x_780 * x_782);
        let x_786 : vec4<f32> = u_xlat10;
        let x_787 : vec2<f32> = vec2<f32>(x_786.x, x_786.y);
        let x_789 : f32 = u_xlat26.z;
        txVec4 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_797 : vec3<f32> = txVec4;
        let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
        u_xlat55 = x_799;
        let x_801 : vec4<f32> = u_xlat10;
        let x_802 : vec2<f32> = vec2<f32>(x_801.z, x_801.w);
        let x_804 : f32 = u_xlat26.z;
        txVec5 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_812 : vec3<f32> = txVec5;
        let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
        u_xlat80 = x_814;
        let x_815 : f32 = u_xlat80;
        let x_817 : f32 = u_xlat13.y;
        u_xlat80 = (x_815 * x_817);
        let x_820 : f32 = u_xlat13.x;
        let x_821 : f32 = u_xlat55;
        let x_823 : f32 = u_xlat80;
        u_xlat55 = ((x_820 * x_821) + x_823);
        let x_826 : vec4<f32> = u_xlat11;
        let x_827 : vec2<f32> = vec2<f32>(x_826.x, x_826.y);
        let x_829 : f32 = u_xlat26.z;
        txVec6 = vec3<f32>(x_827.x, x_827.y, x_829);
        let x_836 : vec3<f32> = txVec6;
        let x_838 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_836.xy, x_836.z);
        u_xlat80 = x_838;
        let x_840 : f32 = u_xlat13.z;
        let x_841 : f32 = u_xlat80;
        let x_843 : f32 = u_xlat55;
        u_xlat55 = ((x_840 * x_841) + x_843);
        let x_846 : vec4<f32> = u_xlat9;
        let x_847 : vec2<f32> = vec2<f32>(x_846.x, x_846.y);
        let x_849 : f32 = u_xlat26.z;
        txVec7 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec7;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
        u_xlat80 = x_858;
        let x_860 : f32 = u_xlat13.w;
        let x_861 : f32 = u_xlat80;
        let x_863 : f32 = u_xlat55;
        u_xlat55 = ((x_860 * x_861) + x_863);
        let x_866 : vec4<f32> = u_xlat12;
        let x_867 : vec2<f32> = vec2<f32>(x_866.x, x_866.y);
        let x_869 : f32 = u_xlat26.z;
        txVec8 = vec3<f32>(x_867.x, x_867.y, x_869);
        let x_876 : vec3<f32> = txVec8;
        let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_876.xy, x_876.z);
        u_xlat80 = x_878;
        let x_880 : f32 = u_xlat14.x;
        let x_881 : f32 = u_xlat80;
        let x_883 : f32 = u_xlat55;
        u_xlat55 = ((x_880 * x_881) + x_883);
        let x_886 : vec4<f32> = u_xlat12;
        let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
        let x_889 : f32 = u_xlat26.z;
        txVec9 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_896 : vec3<f32> = txVec9;
        let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_896.xy, x_896.z);
        u_xlat80 = x_898;
        let x_900 : f32 = u_xlat14.y;
        let x_901 : f32 = u_xlat80;
        let x_903 : f32 = u_xlat55;
        u_xlat55 = ((x_900 * x_901) + x_903);
        let x_906 : vec4<f32> = u_xlat9;
        let x_907 : vec2<f32> = vec2<f32>(x_906.z, x_906.w);
        let x_909 : f32 = u_xlat26.z;
        txVec10 = vec3<f32>(x_907.x, x_907.y, x_909);
        let x_916 : vec3<f32> = txVec10;
        let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_916.xy, x_916.z);
        u_xlat80 = x_918;
        let x_920 : f32 = u_xlat14.z;
        let x_921 : f32 = u_xlat80;
        let x_923 : f32 = u_xlat55;
        u_xlat55 = ((x_920 * x_921) + x_923);
        let x_926 : vec4<f32> = u_xlat8;
        let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
        let x_929 : f32 = u_xlat26.z;
        txVec11 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec11;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_936.xy, x_936.z);
        u_xlat80 = x_938;
        let x_940 : f32 = u_xlat14.w;
        let x_941 : f32 = u_xlat80;
        let x_943 : f32 = u_xlat55;
        u_xlat55 = ((x_940 * x_941) + x_943);
        let x_946 : vec4<f32> = u_xlat8;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = u_xlat26.z;
        txVec12 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec12;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
        u_xlat80 = x_958;
        let x_960 : f32 = u_xlat30.x;
        let x_961 : f32 = u_xlat80;
        let x_963 : f32 = u_xlat55;
        u_xlat5.x = ((x_960 * x_961) + x_963);
      } else {
        let x_967 : vec3<f32> = u_xlat26;
        let x_970 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat30 = ((vec2<f32>(x_967.x, x_967.y) * vec2<f32>(x_970.z, x_970.w)) + vec2<f32>(0.5f, 0.5f));
        let x_974 : vec2<f32> = u_xlat30;
        u_xlat30 = floor(x_974);
        let x_976 : vec3<f32> = u_xlat26;
        let x_979 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_982 : vec2<f32> = u_xlat30;
        let x_984 : vec2<f32> = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.z, x_979.w)) + -(x_982));
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_987.x, x_987.x, x_987.y, x_987.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_990 : vec4<f32> = u_xlat7;
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_990.x, x_990.x, x_990.z, x_990.z) * vec4<f32>(x_992.x, x_992.x, x_992.z, x_992.z));
        let x_995 : vec4<f32> = u_xlat8;
        let x_999 : vec2<f32> = (vec2<f32>(x_995.y, x_995.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1000.x, x_999.x, x_1000.z, x_999.y);
        let x_1002 : vec4<f32> = u_xlat8;
        let x_1005 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1002.x, x_1002.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1005.x, x_1005.y)));
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1012 : vec2<f32> = (-(vec2<f32>(x_1009.x, x_1009.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1013 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat6;
        let x_1017 : vec2<f32> = min(vec2<f32>(x_1015.x, x_1015.y), vec2<f32>(0.0f, 0.0f));
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat8;
        let x_1023 : vec4<f32> = u_xlat8;
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1028 : vec2<f32> = ((-(vec2<f32>(x_1020.x, x_1020.y)) * vec2<f32>(x_1023.x, x_1023.y)) + vec2<f32>(x_1026.x, x_1026.z));
        let x_1029 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1028.x, x_1029.y, x_1028.y, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat6;
        let x_1033 : vec2<f32> = max(vec2<f32>(x_1031.x, x_1031.y), vec2<f32>(0.0f, 0.0f));
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1042 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = ((-(vec2<f32>(x_1036.x, x_1036.y)) * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.y, x_1042.w));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1047 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1051 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1051 * 0.08163200318813323975f);
        let x_1055 : vec2<f32> = u_xlat56;
        let x_1058 : vec2<f32> = (vec2<f32>(x_1055.y, x_1055.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1061.x, x_1061.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1065 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1065 * 0.08163200318813323975f);
        let x_1069 : f32 = u_xlat10.y;
        u_xlat8.x = x_1069;
        let x_1071 : vec4<f32> = u_xlat6;
        let x_1078 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1079.x, x_1078.x, x_1079.z, x_1078.y);
        let x_1081 : vec4<f32> = u_xlat6;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1085.x, x_1086.y, x_1085.y, x_1086.w);
        let x_1089 : f32 = u_xlat56.x;
        u_xlat7.y = x_1089;
        let x_1092 : f32 = u_xlat9.y;
        u_xlat7.w = x_1092;
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1094 + x_1095);
        let x_1097 : vec4<f32> = u_xlat6;
        let x_1100 : vec2<f32> = ((vec2<f32>(x_1097.y, x_1097.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1101 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1101.x, x_1100.x, x_1101.z, x_1100.y);
        let x_1103 : vec4<f32> = u_xlat6;
        let x_1106 : vec2<f32> = ((vec2<f32>(x_1103.y, x_1103.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1107.y, x_1106.y, x_1107.w);
        let x_1110 : f32 = u_xlat56.y;
        u_xlat9.y = x_1110;
        let x_1112 : vec4<f32> = u_xlat9;
        let x_1113 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1112 + x_1113);
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1115 / x_1116);
        let x_1118 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1118 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1125 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1124 / x_1125);
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1127 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1129.w, x_1129.x, x_1129.y, x_1129.z) * vec4<f32>(x_1132.x, x_1132.x, x_1132.x, x_1132.x));
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1138 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1135.x, x_1135.w, x_1135.y, x_1135.z) * vec4<f32>(x_1138.y, x_1138.y, x_1138.y, x_1138.y));
        let x_1141 : vec4<f32> = u_xlat7;
        let x_1142 : vec3<f32> = vec3<f32>(x_1141.y, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1142.z);
        let x_1146 : f32 = u_xlat9.x;
        u_xlat10.y = x_1146;
        let x_1148 : vec2<f32> = u_xlat30;
        let x_1151 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y) * vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y)) + vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1154.y));
        let x_1157 : vec2<f32> = u_xlat30;
        let x_1159 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat10;
        let x_1164 : vec2<f32> = ((x_1157 * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.w, x_1162.y));
        let x_1165 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1168 : f32 = u_xlat10.y;
        u_xlat7.y = x_1168;
        let x_1171 : f32 = u_xlat9.z;
        u_xlat10.y = x_1171;
        let x_1173 : vec2<f32> = u_xlat30;
        let x_1176 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y) * vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y)) + vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1179.y));
        let x_1183 : vec2<f32> = u_xlat30;
        let x_1185 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1183 * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.w, x_1188.y));
        let x_1192 : f32 = u_xlat10.y;
        u_xlat7.z = x_1192;
        let x_1194 : vec2<f32> = u_xlat30;
        let x_1197 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) * vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y)) + vec4<f32>(x_1200.x, x_1200.y, x_1200.x, x_1200.z));
        let x_1204 : f32 = u_xlat9.w;
        u_xlat10.y = x_1204;
        let x_1207 : vec2<f32> = u_xlat30;
        let x_1210 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1213.y));
        let x_1217 : vec2<f32> = u_xlat30;
        let x_1219 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat10;
        let x_1224 : vec2<f32> = ((x_1217 * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.w, x_1222.y));
        let x_1225 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1224.x, x_1224.y, x_1225.z);
        let x_1228 : f32 = u_xlat10.y;
        u_xlat7.w = x_1228;
        let x_1231 : vec2<f32> = u_xlat30;
        let x_1233 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1238 : vec2<f32> = ((x_1231 * vec2<f32>(x_1233.x, x_1233.y)) + vec2<f32>(x_1236.x, x_1236.w));
        let x_1239 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec3<f32> = vec3<f32>(x_1241.x, x_1241.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1242.x, x_1243.y, x_1242.y, x_1242.z);
        let x_1245 : vec2<f32> = u_xlat30;
        let x_1248 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.y));
        let x_1255 : vec2<f32> = u_xlat30;
        let x_1257 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1255 * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1264 : f32 = u_xlat7.x;
        u_xlat9.x = x_1264;
        let x_1266 : vec2<f32> = u_xlat30;
        let x_1268 : vec4<f32> = x_83.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat9;
        u_xlat30 = ((x_1266 * vec2<f32>(x_1268.x, x_1268.y)) + vec2<f32>(x_1271.x, x_1271.y));
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1275.x, x_1275.x, x_1275.x, x_1275.x) * x_1277);
        let x_1280 : vec4<f32> = u_xlat6;
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1280.y, x_1280.y, x_1280.y, x_1280.y) * x_1282);
        let x_1285 : vec4<f32> = u_xlat6;
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1285.z, x_1285.z, x_1285.z, x_1285.z) * x_1287);
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1291 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1289.w, x_1289.w, x_1289.w, x_1289.w) * x_1291);
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1295 : vec2<f32> = vec2<f32>(x_1294.x, x_1294.y);
        let x_1297 : f32 = u_xlat26.z;
        txVec13 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec13;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1304.xy, x_1304.z);
        u_xlat80 = x_1306;
        let x_1308 : vec4<f32> = u_xlat11;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.z, x_1308.w);
        let x_1311 : f32 = u_xlat26.z;
        txVec14 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec14;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1318.xy, x_1318.z);
        u_xlat7.x = x_1320;
        let x_1323 : f32 = u_xlat7.x;
        let x_1325 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1323 * x_1325);
        let x_1329 : f32 = u_xlat17.x;
        let x_1330 : f32 = u_xlat80;
        let x_1333 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1329 * x_1330) + x_1333);
        let x_1336 : vec4<f32> = u_xlat12;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.x, x_1336.y);
        let x_1339 : f32 = u_xlat26.z;
        txVec15 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec15;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1346.xy, x_1346.z);
        u_xlat7.x = x_1348;
        let x_1351 : f32 = u_xlat17.z;
        let x_1353 : f32 = u_xlat7.x;
        let x_1355 : f32 = u_xlat80;
        u_xlat80 = ((x_1351 * x_1353) + x_1355);
        let x_1358 : vec4<f32> = u_xlat14;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = u_xlat26.z;
        txVec16 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec16;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1368.xy, x_1368.z);
        u_xlat7.x = x_1370;
        let x_1373 : f32 = u_xlat17.w;
        let x_1375 : f32 = u_xlat7.x;
        let x_1377 : f32 = u_xlat80;
        u_xlat80 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec4<f32> = u_xlat13;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.x, x_1380.y);
        let x_1383 : f32 = u_xlat26.z;
        txVec17 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec17;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1390.xy, x_1390.z);
        u_xlat7.x = x_1392;
        let x_1395 : f32 = u_xlat18.x;
        let x_1397 : f32 = u_xlat7.x;
        let x_1399 : f32 = u_xlat80;
        u_xlat80 = ((x_1395 * x_1397) + x_1399);
        let x_1402 : vec4<f32> = u_xlat13;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.z, x_1402.w);
        let x_1405 : f32 = u_xlat26.z;
        txVec18 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec18;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat7.x = x_1414;
        let x_1417 : f32 = u_xlat18.y;
        let x_1419 : f32 = u_xlat7.x;
        let x_1421 : f32 = u_xlat80;
        u_xlat80 = ((x_1417 * x_1419) + x_1421);
        let x_1424 : vec2<f32> = u_xlat62;
        let x_1426 : f32 = u_xlat26.z;
        txVec19 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec19;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat7.x = x_1435;
        let x_1438 : f32 = u_xlat18.z;
        let x_1440 : f32 = u_xlat7.x;
        let x_1442 : f32 = u_xlat80;
        u_xlat80 = ((x_1438 * x_1440) + x_1442);
        let x_1445 : vec4<f32> = u_xlat14;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.z, x_1445.w);
        let x_1448 : f32 = u_xlat26.z;
        txVec20 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec20;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1455.xy, x_1455.z);
        u_xlat7.x = x_1457;
        let x_1460 : f32 = u_xlat18.w;
        let x_1462 : f32 = u_xlat7.x;
        let x_1464 : f32 = u_xlat80;
        u_xlat80 = ((x_1460 * x_1462) + x_1464);
        let x_1467 : vec4<f32> = u_xlat15;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
        let x_1470 : f32 = u_xlat26.z;
        txVec21 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec21;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat7.x = x_1479;
        let x_1482 : f32 = u_xlat19.x;
        let x_1484 : f32 = u_xlat7.x;
        let x_1486 : f32 = u_xlat80;
        u_xlat80 = ((x_1482 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat15;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.z, x_1489.w);
        let x_1492 : f32 = u_xlat26.z;
        txVec22 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec22;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
        u_xlat7.x = x_1501;
        let x_1504 : f32 = u_xlat19.y;
        let x_1506 : f32 = u_xlat7.x;
        let x_1508 : f32 = u_xlat80;
        u_xlat80 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec3<f32> = u_xlat32;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.x, x_1511.y);
        let x_1514 : f32 = u_xlat26.z;
        txVec23 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec23;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1521.xy, x_1521.z);
        u_xlat7.x = x_1523;
        let x_1526 : f32 = u_xlat19.z;
        let x_1528 : f32 = u_xlat7.x;
        let x_1530 : f32 = u_xlat80;
        u_xlat80 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec4<f32> = u_xlat16;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = u_xlat26.z;
        txVec24 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec24;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1543.xy, x_1543.z);
        u_xlat7.x = x_1545;
        let x_1548 : f32 = u_xlat19.w;
        let x_1550 : f32 = u_xlat7.x;
        let x_1552 : f32 = u_xlat80;
        u_xlat80 = ((x_1548 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat10;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.x, x_1555.y);
        let x_1558 : f32 = u_xlat26.z;
        txVec25 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec25;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat7.x = x_1567;
        let x_1570 : f32 = u_xlat6.x;
        let x_1572 : f32 = u_xlat7.x;
        let x_1574 : f32 = u_xlat80;
        u_xlat80 = ((x_1570 * x_1572) + x_1574);
        let x_1577 : vec4<f32> = u_xlat10;
        let x_1578 : vec2<f32> = vec2<f32>(x_1577.z, x_1577.w);
        let x_1580 : f32 = u_xlat26.z;
        txVec26 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec26;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1587.xy, x_1587.z);
        u_xlat6.x = x_1589;
        let x_1592 : f32 = u_xlat6.y;
        let x_1594 : f32 = u_xlat6.x;
        let x_1596 : f32 = u_xlat80;
        u_xlat80 = ((x_1592 * x_1594) + x_1596);
        let x_1599 : vec2<f32> = u_xlat59;
        let x_1601 : f32 = u_xlat26.z;
        txVec27 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec27;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1608.xy, x_1608.z);
        u_xlat6.x = x_1610;
        let x_1613 : f32 = u_xlat6.z;
        let x_1615 : f32 = u_xlat6.x;
        let x_1617 : f32 = u_xlat80;
        u_xlat80 = ((x_1613 * x_1615) + x_1617);
        let x_1620 : vec2<f32> = u_xlat30;
        let x_1622 : f32 = u_xlat26.z;
        txVec28 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec28;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat30.x = x_1631;
        let x_1634 : f32 = u_xlat6.w;
        let x_1636 : f32 = u_xlat30.x;
        let x_1638 : f32 = u_xlat80;
        u_xlat5.x = ((x_1634 * x_1636) + x_1638);
      }
    }
  } else {
    let x_1643 : vec3<f32> = u_xlat26;
    let x_1644 : vec2<f32> = vec2<f32>(x_1643.x, x_1643.y);
    let x_1646 : f32 = u_xlat26.z;
    txVec29 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
    let x_1653 : vec3<f32> = txVec29;
    let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1653.xy, x_1653.z);
    u_xlat5.x = x_1655;
  }
  let x_1658 : f32 = x_83.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1658) + 1.0f);
  let x_1663 : f32 = u_xlat5.x;
  let x_1665 : f32 = x_83.x_MainLightShadowParams.x;
  let x_1668 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1663 * x_1665) + x_1668);
  let x_1673 : f32 = u_xlat26.z;
  u_xlatb51 = (0.0f >= x_1673);
  let x_1677 : f32 = u_xlat26.z;
  u_xlatb76 = (x_1677 >= 1.0f);
  let x_1679 : bool = u_xlatb76;
  let x_1680 : bool = u_xlatb51;
  u_xlatb51 = (x_1679 | x_1680);
  let x_1682 : bool = u_xlatb51;
  if (x_1682) {
    x_1684 = 1.0f;
  } else {
    let x_1689 : f32 = u_xlat26.x;
    x_1684 = x_1689;
  }
  let x_1690 : f32 = x_1684;
  u_xlat26.x = x_1690;
  let x_1692 : vec3<f32> = vs_TEXCOORD7;
  let x_1695 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1697 : vec3<f32> = (x_1692 + -(x_1695));
  let x_1698 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
  let x_1701 : vec4<f32> = u_xlat5;
  let x_1703 : vec4<f32> = u_xlat5;
  u_xlat51 = dot(vec3<f32>(x_1701.x, x_1701.y, x_1701.z), vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1707 : f32 = u_xlat51;
  let x_1709 : f32 = x_83.x_MainLightShadowParams.z;
  let x_1712 : f32 = x_83.x_MainLightShadowParams.w;
  u_xlat76 = ((x_1707 * x_1709) + x_1712);
  let x_1714 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1714, 0.0f, 1.0f);
  let x_1717 : f32 = u_xlat26.x;
  u_xlat5.x = (-(x_1717) + 1.0f);
  let x_1721 : f32 = u_xlat76;
  let x_1723 : f32 = u_xlat5.x;
  let x_1726 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1721 * x_1723) + x_1726);
  let x_1731 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_1731;
  let x_1735 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_1735;
  let x_1739 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_1739;
  let x_1741 : vec4<f32> = u_xlat5;
  let x_1744 : vec4<f32> = u_xlat2;
  u_xlat76 = dot(-(vec3<f32>(x_1741.x, x_1741.y, x_1741.z)), vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
  let x_1747 : f32 = u_xlat76;
  let x_1748 : f32 = u_xlat76;
  u_xlat76 = (x_1747 + x_1748);
  let x_1750 : vec4<f32> = u_xlat2;
  let x_1752 : f32 = u_xlat76;
  let x_1756 : vec4<f32> = u_xlat5;
  let x_1759 : vec3<f32> = ((vec3<f32>(x_1750.x, x_1750.y, x_1750.z) * -(vec3<f32>(x_1752, x_1752, x_1752))) + -(vec3<f32>(x_1756.x, x_1756.y, x_1756.z)));
  let x_1760 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
  let x_1762 : vec4<f32> = u_xlat2;
  let x_1764 : vec4<f32> = u_xlat5;
  u_xlat76 = dot(vec3<f32>(x_1762.x, x_1762.y, x_1762.z), vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1767 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1767, 0.0f, 1.0f);
  let x_1769 : f32 = u_xlat76;
  u_xlat76 = (-(x_1769) + 1.0f);
  let x_1772 : f32 = u_xlat76;
  let x_1773 : f32 = u_xlat76;
  u_xlat76 = (x_1772 * x_1773);
  let x_1775 : f32 = u_xlat76;
  let x_1776 : f32 = u_xlat76;
  u_xlat76 = (x_1775 * x_1776);
  let x_1779 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_1779) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1786 : f32 = u_xlat1.x;
  let x_1787 : f32 = u_xlat80;
  u_xlat1.x = (x_1786 * x_1787);
  let x_1791 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1791 * 6.0f);
  let x_1803 : vec4<f32> = u_xlat6;
  let x_1806 : f32 = u_xlat1.x;
  let x_1807 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1803.x, x_1803.y, x_1803.z), x_1806);
  u_xlat6 = x_1807;
  let x_1809 : f32 = u_xlat6.w;
  u_xlat1.x = (x_1809 + -1.0f);
  let x_1813 : f32 = x_269.unity_SpecCube0_HDR.w;
  let x_1815 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1813 * x_1815) + 1.0f);
  let x_1820 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1820, 0.0f);
  let x_1824 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1824);
  let x_1828 : f32 = u_xlat1.x;
  let x_1830 : f32 = x_269.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1828 * x_1830);
  let x_1834 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1834);
  let x_1838 : f32 = u_xlat1.x;
  let x_1840 : f32 = x_269.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1838 * x_1840);
  let x_1843 : vec4<f32> = u_xlat6;
  let x_1845 : vec4<f32> = u_xlat1;
  let x_1847 : vec3<f32> = (vec3<f32>(x_1843.x, x_1843.y, x_1843.z) * vec3<f32>(x_1845.x, x_1845.x, x_1845.x));
  let x_1848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
  let x_1850 : f32 = u_xlat77;
  let x_1852 : f32 = u_xlat77;
  let x_1856 : vec2<f32> = ((vec2<f32>(x_1850, x_1850) * vec2<f32>(x_1852, x_1852)) + vec2<f32>(-1.0f, 1.0f));
  let x_1857 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1856.x, x_1856.y, x_1857.z, x_1857.w);
  let x_1860 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_1860);
  let x_1863 : vec4<f32> = u_xlat0;
  let x_1866 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1863.x, x_1863.y, x_1863.z)) + vec3<f32>(x_1866, x_1866, x_1866));
  let x_1869 : f32 = u_xlat76;
  let x_1871 : vec3<f32> = u_xlat32;
  let x_1873 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1869, x_1869, x_1869) * x_1871) + vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1876 : vec4<f32> = u_xlat1;
  let x_1878 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1876.x, x_1876.x, x_1876.x) * x_1878);
  let x_1880 : vec4<f32> = u_xlat6;
  let x_1882 : vec3<f32> = u_xlat32;
  let x_1883 : vec3<f32> = (vec3<f32>(x_1880.x, x_1880.y, x_1880.z) * x_1882);
  let x_1884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
  let x_1886 : vec3<f32> = u_xlat3;
  let x_1887 : vec4<f32> = u_xlat4;
  let x_1890 : vec4<f32> = u_xlat6;
  u_xlat3 = ((x_1886 * vec3<f32>(x_1887.x, x_1887.y, x_1887.z)) + vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
  let x_1894 : f32 = u_xlat26.x;
  let x_1896 : f32 = x_269.unity_LightData.z;
  u_xlat75 = (x_1894 * x_1896);
  let x_1898 : vec4<f32> = u_xlat2;
  let x_1901 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1898.x, x_1898.y, x_1898.z), vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1906 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1906, 0.0f, 1.0f);
  let x_1909 : f32 = u_xlat75;
  let x_1911 : f32 = u_xlat1.x;
  u_xlat75 = (x_1909 * x_1911);
  let x_1913 : f32 = u_xlat75;
  let x_1916 : vec4<f32> = x_28.x_MainLightColor;
  let x_1918 : vec3<f32> = (vec3<f32>(x_1913, x_1913, x_1913) * vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1918.x, x_1918.y, x_1919.z, x_1918.z);
  let x_1921 : vec4<f32> = u_xlat5;
  let x_1924 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1926 : vec3<f32> = (vec3<f32>(x_1921.x, x_1921.y, x_1921.z) + vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
  let x_1929 : vec4<f32> = u_xlat6;
  let x_1931 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1929.x, x_1929.y, x_1929.z), vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : f32 = u_xlat75;
  u_xlat75 = max(x_1934, 1.17549435e-38f);
  let x_1937 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1937);
  let x_1939 : f32 = u_xlat75;
  let x_1941 : vec4<f32> = u_xlat6;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1939, x_1939, x_1939) * vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec4<f32> = u_xlat2;
  let x_1948 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(vec3<f32>(x_1946.x, x_1946.y, x_1946.z), vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1951, 0.0f, 1.0f);
  let x_1954 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1956 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_1954.x, x_1954.y, x_1954.z), vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
  let x_1959 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1959, 0.0f, 1.0f);
  let x_1961 : f32 = u_xlat75;
  let x_1962 : f32 = u_xlat75;
  u_xlat75 = (x_1961 * x_1962);
  let x_1964 : f32 = u_xlat75;
  let x_1966 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1964 * x_1966) + 1.00001001358032226562f);
  let x_1970 : f32 = u_xlat77;
  let x_1971 : f32 = u_xlat77;
  u_xlat77 = (x_1970 * x_1971);
  let x_1973 : f32 = u_xlat75;
  let x_1974 : f32 = u_xlat75;
  u_xlat75 = (x_1973 * x_1974);
  let x_1976 : f32 = u_xlat77;
  u_xlat77 = max(x_1976, 0.10000000149011611938f);
  let x_1979 : f32 = u_xlat75;
  let x_1980 : f32 = u_xlat77;
  u_xlat75 = (x_1979 * x_1980);
  let x_1982 : f32 = u_xlat78;
  let x_1983 : f32 = u_xlat75;
  u_xlat75 = (x_1982 * x_1983);
  let x_1985 : f32 = u_xlat79;
  let x_1986 : f32 = u_xlat75;
  u_xlat75 = (x_1985 / x_1986);
  let x_1988 : vec4<f32> = u_xlat0;
  let x_1990 : f32 = u_xlat75;
  let x_1993 : vec4<f32> = u_xlat4;
  let x_1995 : vec3<f32> = ((vec3<f32>(x_1988.x, x_1988.y, x_1988.z) * vec3<f32>(x_1990, x_1990, x_1990)) + vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
  let x_1999 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2001 : f32 = x_269.unity_LightData.y;
  u_xlat75 = min(x_1999, x_2001);
  let x_2004 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2004));
  let x_2007 : f32 = u_xlat51;
  let x_2010 : f32 = x_83.x_AdditionalShadowFadeParams.x;
  let x_2013 : f32 = x_83.x_AdditionalShadowFadeParams.y;
  u_xlat51 = ((x_2007 * x_2010) + x_2013);
  let x_2015 : f32 = u_xlat51;
  u_xlat51 = clamp(x_2015, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2027 : u32 = u_xlatu_loop_1;
    let x_2028 : u32 = u_xlatu75;
    if ((x_2027 < x_2028)) {
    } else {
      break;
    }
    let x_2031 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2031 >> 2u);
    let x_2034 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2034 & 3u));
    let x_2037 : u32 = u_xlatu80;
    let x_2040 : vec4<f32> = x_269.unity_LightIndices[bitcast<i32>(x_2037)];
    let x_2050 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2055 : vec4<u32> = indexable[x_2050];
    u_xlat80 = dot(x_2040, bitcast<vec4<f32>>(x_2055));
    let x_2059 : f32 = u_xlat80;
    u_xlati80 = i32(x_2059);
    let x_2061 : vec3<f32> = vs_TEXCOORD7;
    let x_2072 : i32 = u_xlati80;
    let x_2074 : vec4<f32> = x_2071.x_AdditionalLightsPosition[x_2072];
    let x_2077 : i32 = u_xlati80;
    let x_2079 : vec4<f32> = x_2071.x_AdditionalLightsPosition[x_2077];
    let x_2081 : vec3<f32> = ((-(x_2061) * vec3<f32>(x_2074.w, x_2074.w, x_2074.w)) + vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
    let x_2082 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
    let x_2085 : vec4<f32> = u_xlat8;
    let x_2087 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2085.x, x_2085.y, x_2085.z), vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
    let x_2090 : f32 = u_xlat81;
    u_xlat81 = max(x_2090, 0.00006103515625f);
    let x_2094 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2094);
    let x_2096 : f32 = u_xlat83;
    let x_2098 : vec4<f32> = u_xlat8;
    let x_2100 : vec3<f32> = (vec3<f32>(x_2096, x_2096, x_2096) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
    let x_2101 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
    let x_2104 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2104);
    let x_2106 : f32 = u_xlat81;
    let x_2107 : i32 = u_xlati80;
    let x_2109 : f32 = x_2071.x_AdditionalLightsAttenuation[x_2107].x;
    u_xlat81 = (x_2106 * x_2109);
    let x_2111 : f32 = u_xlat81;
    let x_2113 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2111) * x_2113) + 1.0f);
    let x_2116 : f32 = u_xlat81;
    u_xlat81 = max(x_2116, 0.0f);
    let x_2118 : f32 = u_xlat81;
    let x_2119 : f32 = u_xlat81;
    u_xlat81 = (x_2118 * x_2119);
    let x_2121 : f32 = u_xlat81;
    let x_2122 : f32 = u_xlat84;
    u_xlat81 = (x_2121 * x_2122);
    let x_2124 : i32 = u_xlati80;
    let x_2126 : vec4<f32> = x_2071.x_AdditionalLightsSpotDir[x_2124];
    let x_2128 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2126.x, x_2126.y, x_2126.z), vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
    let x_2131 : f32 = u_xlat84;
    let x_2132 : i32 = u_xlati80;
    let x_2134 : f32 = x_2071.x_AdditionalLightsAttenuation[x_2132].z;
    let x_2136 : i32 = u_xlati80;
    let x_2138 : f32 = x_2071.x_AdditionalLightsAttenuation[x_2136].w;
    u_xlat84 = ((x_2131 * x_2134) + x_2138);
    let x_2140 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2140, 0.0f, 1.0f);
    let x_2142 : f32 = u_xlat84;
    let x_2143 : f32 = u_xlat84;
    u_xlat84 = (x_2142 * x_2143);
    let x_2145 : f32 = u_xlat81;
    let x_2146 : f32 = u_xlat84;
    u_xlat81 = (x_2145 * x_2146);
    let x_2150 : i32 = u_xlati80;
    let x_2152 : f32 = x_83.x_AdditionalShadowParams[x_2150].w;
    u_xlati84 = i32(x_2152);
    let x_2157 : i32 = u_xlati84;
    u_xlatb10.x = (x_2157 >= 0i);
    let x_2161 : bool = u_xlatb10.x;
    if (x_2161) {
      let x_2165 : i32 = u_xlati80;
      let x_2167 : f32 = x_83.x_AdditionalShadowParams[x_2165].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2167, x_2167, x_2167, x_2167))));
      let x_2173 : bool = u_xlatb10.x;
      if (x_2173) {
        let x_2176 : vec4<f32> = u_xlat9;
        let x_2179 : vec4<f32> = u_xlat9;
        let x_2182 : vec4<bool> = (abs(vec4<f32>(x_2176.z, x_2176.z, x_2176.y, x_2176.z)) >= abs(vec4<f32>(x_2179.x, x_2179.y, x_2179.x, x_2179.x)));
        u_xlatb10 = vec3<bool>(x_2182.x, x_2182.y, x_2182.z);
        let x_2185 : bool = u_xlatb10.y;
        let x_2187 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2185 & x_2187);
        let x_2191 : vec4<f32> = u_xlat9;
        let x_2194 : vec4<bool> = (-(vec4<f32>(x_2191.z, x_2191.y, x_2191.x, x_2191.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2194.x, x_2194.y, x_2194.z);
        let x_2198 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2198);
        let x_2203 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2203);
        let x_2207 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2207);
        let x_2212 : bool = u_xlatb10.z;
        if (x_2212) {
          let x_2217 : f32 = u_xlat35.z;
          x_2213 = x_2217;
        } else {
          let x_2220 : f32 = u_xlat11.x;
          x_2213 = x_2220;
        }
        let x_2221 : f32 = x_2213;
        u_xlat60 = x_2221;
        let x_2223 : bool = u_xlatb10.x;
        if (x_2223) {
          let x_2228 : f32 = u_xlat35.x;
          x_2224 = x_2228;
        } else {
          let x_2230 : f32 = u_xlat60;
          x_2224 = x_2230;
        }
        let x_2231 : f32 = x_2224;
        u_xlat10.x = x_2231;
        let x_2233 : i32 = u_xlati80;
        let x_2235 : f32 = x_83.x_AdditionalShadowParams[x_2233].w;
        u_xlat35.x = trunc(x_2235);
        let x_2239 : f32 = u_xlat10.x;
        let x_2241 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2239 + x_2241);
        let x_2245 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2245);
      }
      let x_2247 : i32 = u_xlati84;
      u_xlati84 = (x_2247 << bitcast<u32>(2i));
      let x_2249 : vec3<f32> = vs_TEXCOORD7;
      let x_2252 : i32 = u_xlati84;
      let x_2255 : i32 = u_xlati84;
      let x_2259 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2252 + 1i) / 4i)][((x_2255 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2249.y, x_2249.y, x_2249.y, x_2249.y) * x_2259);
      let x_2261 : i32 = u_xlati84;
      let x_2263 : i32 = u_xlati84;
      let x_2266 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[(x_2261 / 4i)][(x_2263 % 4i)];
      let x_2267 : vec3<f32> = vs_TEXCOORD7;
      let x_2270 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2266 * vec4<f32>(x_2267.x, x_2267.x, x_2267.x, x_2267.x)) + x_2270);
      let x_2272 : i32 = u_xlati84;
      let x_2275 : i32 = u_xlati84;
      let x_2279 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2272 + 2i) / 4i)][((x_2275 + 2i) % 4i)];
      let x_2280 : vec3<f32> = vs_TEXCOORD7;
      let x_2283 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2279 * vec4<f32>(x_2280.z, x_2280.z, x_2280.z, x_2280.z)) + x_2283);
      let x_2285 : vec4<f32> = u_xlat10;
      let x_2286 : i32 = u_xlati84;
      let x_2289 : i32 = u_xlati84;
      let x_2293 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_2286 + 3i) / 4i)][((x_2289 + 3i) % 4i)];
      u_xlat10 = (x_2285 + x_2293);
      let x_2295 : vec4<f32> = u_xlat10;
      let x_2297 : vec4<f32> = u_xlat10;
      let x_2299 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) / vec3<f32>(x_2297.w, x_2297.w, x_2297.w));
      let x_2300 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
      let x_2303 : i32 = u_xlati80;
      let x_2305 : f32 = x_83.x_AdditionalShadowParams[x_2303].y;
      u_xlatb84 = (0.0f < x_2305);
      let x_2307 : bool = u_xlatb84;
      if (x_2307) {
        let x_2310 : i32 = u_xlati80;
        let x_2312 : f32 = x_83.x_AdditionalShadowParams[x_2310].y;
        u_xlatb84 = (1.0f == x_2312);
        let x_2314 : bool = u_xlatb84;
        if (x_2314) {
          let x_2317 : vec4<f32> = u_xlat10;
          let x_2321 : vec4<f32> = x_83.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2317.x, x_2317.y, x_2317.x, x_2317.y) + x_2321);
          let x_2324 : vec4<f32> = u_xlat11;
          let x_2325 : vec2<f32> = vec2<f32>(x_2324.x, x_2324.y);
          let x_2327 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2325.x, x_2325.y, x_2327);
          let x_2335 : vec3<f32> = txVec30;
          let x_2337 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2335.xy, x_2335.z);
          u_xlat12.x = x_2337;
          let x_2340 : vec4<f32> = u_xlat11;
          let x_2341 : vec2<f32> = vec2<f32>(x_2340.z, x_2340.w);
          let x_2343 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2341.x, x_2341.y, x_2343);
          let x_2350 : vec3<f32> = txVec31;
          let x_2352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2350.xy, x_2350.z);
          u_xlat12.y = x_2352;
          let x_2354 : vec4<f32> = u_xlat10;
          let x_2358 : vec4<f32> = x_83.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y) + x_2358);
          let x_2361 : vec4<f32> = u_xlat11;
          let x_2362 : vec2<f32> = vec2<f32>(x_2361.x, x_2361.y);
          let x_2364 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
          let x_2371 : vec3<f32> = txVec32;
          let x_2373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
          u_xlat12.z = x_2373;
          let x_2376 : vec4<f32> = u_xlat11;
          let x_2377 : vec2<f32> = vec2<f32>(x_2376.z, x_2376.w);
          let x_2379 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2377.x, x_2377.y, x_2379);
          let x_2386 : vec3<f32> = txVec33;
          let x_2388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2386.xy, x_2386.z);
          u_xlat12.w = x_2388;
          let x_2390 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2390, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2394 : i32 = u_xlati80;
          let x_2396 : f32 = x_83.x_AdditionalShadowParams[x_2394].y;
          u_xlatb85 = (2.0f == x_2396);
          let x_2398 : bool = u_xlatb85;
          if (x_2398) {
            let x_2401 : vec4<f32> = u_xlat10;
            let x_2405 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2408 : vec2<f32> = ((vec2<f32>(x_2401.x, x_2401.y) * vec2<f32>(x_2405.z, x_2405.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2409 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2408.x, x_2408.y, x_2409.z, x_2409.w);
            let x_2411 : vec4<f32> = u_xlat11;
            let x_2413 : vec2<f32> = floor(vec2<f32>(x_2411.x, x_2411.y));
            let x_2414 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2413.x, x_2413.y, x_2414.z, x_2414.w);
            let x_2417 : vec4<f32> = u_xlat10;
            let x_2420 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2423 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2417.x, x_2417.y) * vec2<f32>(x_2420.z, x_2420.w)) + -(vec2<f32>(x_2423.x, x_2423.y)));
            let x_2427 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2427.x, x_2427.x, x_2427.y, x_2427.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2430 : vec4<f32> = u_xlat12;
            let x_2432 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2430.x, x_2430.x, x_2430.z, x_2430.z) * vec4<f32>(x_2432.x, x_2432.x, x_2432.z, x_2432.z));
            let x_2435 : vec4<f32> = u_xlat13;
            let x_2437 : vec2<f32> = (vec2<f32>(x_2435.y, x_2435.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2438 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2437.x, x_2438.y, x_2437.y, x_2438.w);
            let x_2440 : vec4<f32> = u_xlat13;
            let x_2443 : vec2<f32> = u_xlat61;
            let x_2445 : vec2<f32> = ((vec2<f32>(x_2440.x, x_2440.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2443));
            let x_2446 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2449 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2449) + vec2<f32>(1.0f, 1.0f));
            let x_2452 : vec2<f32> = u_xlat61;
            let x_2453 : vec2<f32> = min(x_2452, vec2<f32>(0.0f, 0.0f));
            let x_2454 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2453.x, x_2453.y, x_2454.z, x_2454.w);
            let x_2456 : vec4<f32> = u_xlat14;
            let x_2459 : vec4<f32> = u_xlat14;
            let x_2462 : vec2<f32> = u_xlat63;
            let x_2463 : vec2<f32> = ((-(vec2<f32>(x_2456.x, x_2456.y)) * vec2<f32>(x_2459.x, x_2459.y)) + x_2462);
            let x_2464 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
            let x_2466 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2466, vec2<f32>(0.0f, 0.0f));
            let x_2468 : vec2<f32> = u_xlat61;
            let x_2470 : vec2<f32> = u_xlat61;
            let x_2472 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2468) * x_2470) + vec2<f32>(x_2472.y, x_2472.w));
            let x_2475 : vec4<f32> = u_xlat14;
            let x_2477 : vec2<f32> = (vec2<f32>(x_2475.x, x_2475.y) + vec2<f32>(1.0f, 1.0f));
            let x_2478 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2477.x, x_2477.y, x_2478.z, x_2478.w);
            let x_2480 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2480 + vec2<f32>(1.0f, 1.0f));
            let x_2482 : vec4<f32> = u_xlat13;
            let x_2484 : vec2<f32> = (vec2<f32>(x_2482.x, x_2482.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2485 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
            let x_2487 : vec2<f32> = u_xlat63;
            let x_2488 : vec2<f32> = (x_2487 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2489 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2488.x, x_2488.y, x_2489.z, x_2489.w);
            let x_2491 : vec4<f32> = u_xlat14;
            let x_2493 : vec2<f32> = (vec2<f32>(x_2491.x, x_2491.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2494 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2493.x, x_2493.y, x_2494.z, x_2494.w);
            let x_2496 : vec2<f32> = u_xlat61;
            let x_2497 : vec2<f32> = (x_2496 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2498 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2497.x, x_2497.y, x_2498.z, x_2498.w);
            let x_2500 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2500.y, x_2500.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2504 : f32 = u_xlat14.x;
            u_xlat15.z = x_2504;
            let x_2507 : f32 = u_xlat61.x;
            u_xlat15.w = x_2507;
            let x_2510 : f32 = u_xlat16.x;
            u_xlat13.z = x_2510;
            let x_2513 : f32 = u_xlat12.x;
            u_xlat13.w = x_2513;
            let x_2515 : vec4<f32> = u_xlat13;
            let x_2517 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2515.z, x_2515.w, x_2515.x, x_2515.z) + vec4<f32>(x_2517.z, x_2517.w, x_2517.x, x_2517.z));
            let x_2521 : f32 = u_xlat15.y;
            u_xlat14.z = x_2521;
            let x_2524 : f32 = u_xlat61.y;
            u_xlat14.w = x_2524;
            let x_2527 : f32 = u_xlat13.y;
            u_xlat16.z = x_2527;
            let x_2530 : f32 = u_xlat12.z;
            u_xlat16.w = x_2530;
            let x_2532 : vec4<f32> = u_xlat14;
            let x_2534 : vec4<f32> = u_xlat16;
            let x_2536 : vec3<f32> = (vec3<f32>(x_2532.z, x_2532.y, x_2532.w) + vec3<f32>(x_2534.z, x_2534.y, x_2534.w));
            let x_2537 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2537.w);
            let x_2539 : vec4<f32> = u_xlat13;
            let x_2541 : vec4<f32> = u_xlat17;
            let x_2543 : vec3<f32> = (vec3<f32>(x_2539.x, x_2539.z, x_2539.w) / vec3<f32>(x_2541.z, x_2541.w, x_2541.y));
            let x_2544 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
            let x_2546 : vec4<f32> = u_xlat13;
            let x_2548 : vec3<f32> = (vec3<f32>(x_2546.x, x_2546.y, x_2546.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2549 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
            let x_2551 : vec4<f32> = u_xlat16;
            let x_2553 : vec4<f32> = u_xlat12;
            let x_2555 : vec3<f32> = (vec3<f32>(x_2551.z, x_2551.y, x_2551.w) / vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
            let x_2556 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2555.x, x_2555.y, x_2555.z, x_2556.w);
            let x_2558 : vec4<f32> = u_xlat14;
            let x_2560 : vec3<f32> = (vec3<f32>(x_2558.x, x_2558.y, x_2558.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2561 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
            let x_2563 : vec4<f32> = u_xlat13;
            let x_2566 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2568 : vec3<f32> = (vec3<f32>(x_2563.y, x_2563.x, x_2563.z) * vec3<f32>(x_2566.x, x_2566.x, x_2566.x));
            let x_2569 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
            let x_2571 : vec4<f32> = u_xlat14;
            let x_2574 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2576 : vec3<f32> = (vec3<f32>(x_2571.x, x_2571.y, x_2571.z) * vec3<f32>(x_2574.y, x_2574.y, x_2574.y));
            let x_2577 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
            let x_2580 : f32 = u_xlat14.x;
            u_xlat13.w = x_2580;
            let x_2582 : vec4<f32> = u_xlat11;
            let x_2585 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2588 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2582.x, x_2582.y, x_2582.x, x_2582.y) * vec4<f32>(x_2585.x, x_2585.y, x_2585.x, x_2585.y)) + vec4<f32>(x_2588.y, x_2588.w, x_2588.x, x_2588.w));
            let x_2591 : vec4<f32> = u_xlat11;
            let x_2594 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2597 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2591.x, x_2591.y) * vec2<f32>(x_2594.x, x_2594.y)) + vec2<f32>(x_2597.z, x_2597.w));
            let x_2601 : f32 = u_xlat13.y;
            u_xlat14.w = x_2601;
            let x_2603 : vec4<f32> = u_xlat14;
            let x_2604 : vec2<f32> = vec2<f32>(x_2603.y, x_2603.z);
            let x_2605 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2605.x, x_2604.x, x_2605.z, x_2604.y);
            let x_2607 : vec4<f32> = u_xlat11;
            let x_2610 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2613 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2607.x, x_2607.y, x_2607.x, x_2607.y) * vec4<f32>(x_2610.x, x_2610.y, x_2610.x, x_2610.y)) + vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2613.y));
            let x_2616 : vec4<f32> = u_xlat11;
            let x_2619 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2622 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2616.x, x_2616.y, x_2616.x, x_2616.y) * vec4<f32>(x_2619.x, x_2619.y, x_2619.x, x_2619.y)) + vec4<f32>(x_2622.w, x_2622.y, x_2622.w, x_2622.z));
            let x_2625 : vec4<f32> = u_xlat11;
            let x_2628 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2631 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2625.x, x_2625.y, x_2625.x, x_2625.y) * vec4<f32>(x_2628.x, x_2628.y, x_2628.x, x_2628.y)) + vec4<f32>(x_2631.x, x_2631.w, x_2631.z, x_2631.w));
            let x_2634 : vec4<f32> = u_xlat12;
            let x_2636 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2634.x, x_2634.x, x_2634.x, x_2634.y) * vec4<f32>(x_2636.z, x_2636.w, x_2636.y, x_2636.z));
            let x_2639 : vec4<f32> = u_xlat12;
            let x_2641 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2639.y, x_2639.y, x_2639.z, x_2639.z) * x_2641);
            let x_2645 : f32 = u_xlat12.z;
            let x_2647 : f32 = u_xlat17.y;
            u_xlat85 = (x_2645 * x_2647);
            let x_2650 : vec4<f32> = u_xlat15;
            let x_2651 : vec2<f32> = vec2<f32>(x_2650.x, x_2650.y);
            let x_2653 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2651.x, x_2651.y, x_2653);
            let x_2660 : vec3<f32> = txVec34;
            let x_2662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2660.xy, x_2660.z);
            u_xlat11.x = x_2662;
            let x_2665 : vec4<f32> = u_xlat15;
            let x_2666 : vec2<f32> = vec2<f32>(x_2665.z, x_2665.w);
            let x_2668 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2666.x, x_2666.y, x_2668);
            let x_2676 : vec3<f32> = txVec35;
            let x_2678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
            u_xlat36 = x_2678;
            let x_2679 : f32 = u_xlat36;
            let x_2681 : f32 = u_xlat18.y;
            u_xlat36 = (x_2679 * x_2681);
            let x_2684 : f32 = u_xlat18.x;
            let x_2686 : f32 = u_xlat11.x;
            let x_2688 : f32 = u_xlat36;
            u_xlat11.x = ((x_2684 * x_2686) + x_2688);
            let x_2692 : vec2<f32> = u_xlat61;
            let x_2694 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2692.x, x_2692.y, x_2694);
            let x_2701 : vec3<f32> = txVec36;
            let x_2703 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2701.xy, x_2701.z);
            u_xlat36 = x_2703;
            let x_2705 : f32 = u_xlat18.z;
            let x_2706 : f32 = u_xlat36;
            let x_2709 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2705 * x_2706) + x_2709);
            let x_2713 : vec4<f32> = u_xlat14;
            let x_2714 : vec2<f32> = vec2<f32>(x_2713.x, x_2713.y);
            let x_2716 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2714.x, x_2714.y, x_2716);
            let x_2723 : vec3<f32> = txVec37;
            let x_2725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2723.xy, x_2723.z);
            u_xlat36 = x_2725;
            let x_2727 : f32 = u_xlat18.w;
            let x_2728 : f32 = u_xlat36;
            let x_2731 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2727 * x_2728) + x_2731);
            let x_2735 : vec4<f32> = u_xlat16;
            let x_2736 : vec2<f32> = vec2<f32>(x_2735.x, x_2735.y);
            let x_2738 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2736.x, x_2736.y, x_2738);
            let x_2745 : vec3<f32> = txVec38;
            let x_2747 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2745.xy, x_2745.z);
            u_xlat36 = x_2747;
            let x_2749 : f32 = u_xlat19.x;
            let x_2750 : f32 = u_xlat36;
            let x_2753 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2749 * x_2750) + x_2753);
            let x_2757 : vec4<f32> = u_xlat16;
            let x_2758 : vec2<f32> = vec2<f32>(x_2757.z, x_2757.w);
            let x_2760 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2758.x, x_2758.y, x_2760);
            let x_2767 : vec3<f32> = txVec39;
            let x_2769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2767.xy, x_2767.z);
            u_xlat36 = x_2769;
            let x_2771 : f32 = u_xlat19.y;
            let x_2772 : f32 = u_xlat36;
            let x_2775 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2771 * x_2772) + x_2775);
            let x_2779 : vec4<f32> = u_xlat14;
            let x_2780 : vec2<f32> = vec2<f32>(x_2779.z, x_2779.w);
            let x_2782 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2780.x, x_2780.y, x_2782);
            let x_2789 : vec3<f32> = txVec40;
            let x_2791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2789.xy, x_2789.z);
            u_xlat36 = x_2791;
            let x_2793 : f32 = u_xlat19.z;
            let x_2794 : f32 = u_xlat36;
            let x_2797 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2793 * x_2794) + x_2797);
            let x_2801 : vec4<f32> = u_xlat13;
            let x_2802 : vec2<f32> = vec2<f32>(x_2801.x, x_2801.y);
            let x_2804 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2802.x, x_2802.y, x_2804);
            let x_2811 : vec3<f32> = txVec41;
            let x_2813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2811.xy, x_2811.z);
            u_xlat36 = x_2813;
            let x_2815 : f32 = u_xlat19.w;
            let x_2816 : f32 = u_xlat36;
            let x_2819 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2815 * x_2816) + x_2819);
            let x_2823 : vec4<f32> = u_xlat13;
            let x_2824 : vec2<f32> = vec2<f32>(x_2823.z, x_2823.w);
            let x_2826 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2824.x, x_2824.y, x_2826);
            let x_2833 : vec3<f32> = txVec42;
            let x_2835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2833.xy, x_2833.z);
            u_xlat36 = x_2835;
            let x_2836 : f32 = u_xlat85;
            let x_2837 : f32 = u_xlat36;
            let x_2840 : f32 = u_xlat11.x;
            u_xlat84 = ((x_2836 * x_2837) + x_2840);
          } else {
            let x_2843 : vec4<f32> = u_xlat10;
            let x_2846 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2849 : vec2<f32> = ((vec2<f32>(x_2843.x, x_2843.y) * vec2<f32>(x_2846.z, x_2846.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2850 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2849.x, x_2849.y, x_2850.z, x_2850.w);
            let x_2852 : vec4<f32> = u_xlat11;
            let x_2854 : vec2<f32> = floor(vec2<f32>(x_2852.x, x_2852.y));
            let x_2855 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2854.x, x_2854.y, x_2855.z, x_2855.w);
            let x_2857 : vec4<f32> = u_xlat10;
            let x_2860 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_2863 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.z, x_2860.w)) + -(vec2<f32>(x_2863.x, x_2863.y)));
            let x_2867 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2867.x, x_2867.x, x_2867.y, x_2867.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2870 : vec4<f32> = u_xlat12;
            let x_2872 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2870.x, x_2870.x, x_2870.z, x_2870.z) * vec4<f32>(x_2872.x, x_2872.x, x_2872.z, x_2872.z));
            let x_2875 : vec4<f32> = u_xlat13;
            let x_2877 : vec2<f32> = (vec2<f32>(x_2875.y, x_2875.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2878.x, x_2877.x, x_2878.z, x_2877.y);
            let x_2880 : vec4<f32> = u_xlat13;
            let x_2883 : vec2<f32> = u_xlat61;
            let x_2885 : vec2<f32> = ((vec2<f32>(x_2880.x, x_2880.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2883));
            let x_2886 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2885.x, x_2886.y, x_2885.y, x_2886.w);
            let x_2888 : vec2<f32> = u_xlat61;
            let x_2890 : vec2<f32> = (-(x_2888) + vec2<f32>(1.0f, 1.0f));
            let x_2891 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2890.x, x_2890.y, x_2891.z, x_2891.w);
            let x_2893 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2893, vec2<f32>(0.0f, 0.0f));
            let x_2895 : vec2<f32> = u_xlat63;
            let x_2897 : vec2<f32> = u_xlat63;
            let x_2899 : vec4<f32> = u_xlat13;
            let x_2901 : vec2<f32> = ((-(x_2895) * x_2897) + vec2<f32>(x_2899.x, x_2899.y));
            let x_2902 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2901.x, x_2901.y, x_2902.z, x_2902.w);
            let x_2904 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2904, vec2<f32>(0.0f, 0.0f));
            let x_2907 : vec2<f32> = u_xlat63;
            let x_2909 : vec2<f32> = u_xlat63;
            let x_2911 : vec4<f32> = u_xlat12;
            let x_2913 : vec2<f32> = ((-(x_2907) * x_2909) + vec2<f32>(x_2911.y, x_2911.w));
            let x_2914 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2913.x, x_2914.y, x_2913.y);
            let x_2916 : vec4<f32> = u_xlat13;
            let x_2919 : vec2<f32> = (vec2<f32>(x_2916.x, x_2916.y) + vec2<f32>(2.0f, 2.0f));
            let x_2920 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2919.x, x_2919.y, x_2920.z, x_2920.w);
            let x_2922 : vec3<f32> = u_xlat37;
            let x_2924 : vec2<f32> = (vec2<f32>(x_2922.x, x_2922.z) + vec2<f32>(2.0f, 2.0f));
            let x_2925 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2925.x, x_2924.x, x_2925.z, x_2924.y);
            let x_2928 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2928 * 0.08163200318813323975f);
            let x_2931 : vec4<f32> = u_xlat12;
            let x_2934 : vec3<f32> = (vec3<f32>(x_2931.z, x_2931.x, x_2931.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2935 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2935.w);
            let x_2937 : vec4<f32> = u_xlat13;
            let x_2939 : vec2<f32> = (vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2940 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2939.x, x_2939.y, x_2940.z, x_2940.w);
            let x_2943 : f32 = u_xlat16.y;
            u_xlat15.x = x_2943;
            let x_2945 : vec2<f32> = u_xlat61;
            let x_2948 : vec2<f32> = ((vec2<f32>(x_2945.x, x_2945.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2949 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2949.x, x_2948.x, x_2949.z, x_2948.y);
            let x_2951 : vec2<f32> = u_xlat61;
            let x_2954 : vec2<f32> = ((vec2<f32>(x_2951.x, x_2951.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2954.x, x_2955.y, x_2954.y, x_2955.w);
            let x_2958 : f32 = u_xlat12.x;
            u_xlat13.y = x_2958;
            let x_2961 : f32 = u_xlat14.y;
            u_xlat13.w = x_2961;
            let x_2963 : vec4<f32> = u_xlat13;
            let x_2964 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2963 + x_2964);
            let x_2966 : vec2<f32> = u_xlat61;
            let x_2969 : vec2<f32> = ((vec2<f32>(x_2966.y, x_2966.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2970 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2970.x, x_2969.x, x_2970.z, x_2969.y);
            let x_2972 : vec2<f32> = u_xlat61;
            let x_2975 : vec2<f32> = ((vec2<f32>(x_2972.y, x_2972.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2975.x, x_2976.y, x_2975.y, x_2976.w);
            let x_2979 : f32 = u_xlat12.y;
            u_xlat14.y = x_2979;
            let x_2981 : vec4<f32> = u_xlat14;
            let x_2982 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2981 + x_2982);
            let x_2984 : vec4<f32> = u_xlat13;
            let x_2985 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2984 / x_2985);
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2987 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2989 : vec4<f32> = u_xlat14;
            let x_2990 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2989 / x_2990);
            let x_2992 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2992 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2994 : vec4<f32> = u_xlat13;
            let x_2997 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2994.w, x_2994.x, x_2994.y, x_2994.z) * vec4<f32>(x_2997.x, x_2997.x, x_2997.x, x_2997.x));
            let x_3000 : vec4<f32> = u_xlat14;
            let x_3003 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3000.x, x_3000.w, x_3000.y, x_3000.z) * vec4<f32>(x_3003.y, x_3003.y, x_3003.y, x_3003.y));
            let x_3006 : vec4<f32> = u_xlat13;
            let x_3007 : vec3<f32> = vec3<f32>(x_3006.y, x_3006.z, x_3006.w);
            let x_3008 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3007.x, x_3008.y, x_3007.y, x_3007.z);
            let x_3011 : f32 = u_xlat14.x;
            u_xlat16.y = x_3011;
            let x_3013 : vec4<f32> = u_xlat11;
            let x_3016 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3019.y));
            let x_3022 : vec4<f32> = u_xlat11;
            let x_3025 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3022.x, x_3022.y) * vec2<f32>(x_3025.x, x_3025.y)) + vec2<f32>(x_3028.w, x_3028.y));
            let x_3032 : f32 = u_xlat16.y;
            u_xlat13.y = x_3032;
            let x_3035 : f32 = u_xlat14.z;
            u_xlat16.y = x_3035;
            let x_3037 : vec4<f32> = u_xlat11;
            let x_3040 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.x, x_3043.y, x_3043.z, x_3043.y));
            let x_3046 : vec4<f32> = u_xlat11;
            let x_3049 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat16;
            let x_3054 : vec2<f32> = ((vec2<f32>(x_3046.x, x_3046.y) * vec2<f32>(x_3049.x, x_3049.y)) + vec2<f32>(x_3052.w, x_3052.y));
            let x_3055 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3054.x, x_3054.y, x_3055.z, x_3055.w);
            let x_3058 : f32 = u_xlat16.y;
            u_xlat13.z = x_3058;
            let x_3061 : vec4<f32> = u_xlat11;
            let x_3064 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3067 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3061.x, x_3061.y, x_3061.x, x_3061.y) * vec4<f32>(x_3064.x, x_3064.y, x_3064.x, x_3064.y)) + vec4<f32>(x_3067.x, x_3067.y, x_3067.x, x_3067.z));
            let x_3071 : f32 = u_xlat14.w;
            u_xlat16.y = x_3071;
            let x_3074 : vec4<f32> = u_xlat11;
            let x_3077 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3080 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y) * vec4<f32>(x_3077.x, x_3077.y, x_3077.x, x_3077.y)) + vec4<f32>(x_3080.x, x_3080.y, x_3080.z, x_3080.y));
            let x_3084 : vec4<f32> = u_xlat11;
            let x_3087 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3084.x, x_3084.y) * vec2<f32>(x_3087.x, x_3087.y)) + vec2<f32>(x_3090.w, x_3090.y));
            let x_3094 : f32 = u_xlat16.y;
            u_xlat13.w = x_3094;
            let x_3097 : vec4<f32> = u_xlat11;
            let x_3100 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3097.x, x_3097.y) * vec2<f32>(x_3100.x, x_3100.y)) + vec2<f32>(x_3103.x, x_3103.w));
            let x_3106 : vec4<f32> = u_xlat16;
            let x_3107 : vec3<f32> = vec3<f32>(x_3106.x, x_3106.z, x_3106.w);
            let x_3108 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3107.x, x_3108.y, x_3107.y, x_3107.z);
            let x_3110 : vec4<f32> = u_xlat11;
            let x_3113 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3116 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3110.x, x_3110.y, x_3110.x, x_3110.y) * vec4<f32>(x_3113.x, x_3113.y, x_3113.x, x_3113.y)) + vec4<f32>(x_3116.x, x_3116.y, x_3116.z, x_3116.y));
            let x_3120 : vec4<f32> = u_xlat11;
            let x_3123 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3120.x, x_3120.y) * vec2<f32>(x_3123.x, x_3123.y)) + vec2<f32>(x_3126.w, x_3126.y));
            let x_3130 : f32 = u_xlat13.x;
            u_xlat14.x = x_3130;
            let x_3132 : vec4<f32> = u_xlat11;
            let x_3135 : vec4<f32> = x_83.x_AdditionalShadowmapSize;
            let x_3138 : vec4<f32> = u_xlat14;
            let x_3140 : vec2<f32> = ((vec2<f32>(x_3132.x, x_3132.y) * vec2<f32>(x_3135.x, x_3135.y)) + vec2<f32>(x_3138.x, x_3138.y));
            let x_3141 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3140.x, x_3140.y, x_3141.z, x_3141.w);
            let x_3144 : vec4<f32> = u_xlat12;
            let x_3146 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3144.x, x_3144.x, x_3144.x, x_3144.x) * x_3146);
            let x_3149 : vec4<f32> = u_xlat12;
            let x_3151 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3149.y, x_3149.y, x_3149.y, x_3149.y) * x_3151);
            let x_3154 : vec4<f32> = u_xlat12;
            let x_3156 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3154.z, x_3154.z, x_3154.z, x_3154.z) * x_3156);
            let x_3158 : vec4<f32> = u_xlat12;
            let x_3160 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3158.w, x_3158.w, x_3158.w, x_3158.w) * x_3160);
            let x_3163 : vec4<f32> = u_xlat17;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.x, x_3163.y);
            let x_3166 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec43;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat85 = x_3175;
            let x_3177 : vec4<f32> = u_xlat17;
            let x_3178 : vec2<f32> = vec2<f32>(x_3177.z, x_3177.w);
            let x_3180 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
            let x_3187 : vec3<f32> = txVec44;
            let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
            u_xlat13.x = x_3189;
            let x_3192 : f32 = u_xlat13.x;
            let x_3194 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3192 * x_3194);
            let x_3198 : f32 = u_xlat22.x;
            let x_3199 : f32 = u_xlat85;
            let x_3202 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3198 * x_3199) + x_3202);
            let x_3205 : vec2<f32> = u_xlat61;
            let x_3207 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3205.x, x_3205.y, x_3207);
            let x_3214 : vec3<f32> = txVec45;
            let x_3216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3214.xy, x_3214.z);
            u_xlat61.x = x_3216;
            let x_3219 : f32 = u_xlat22.z;
            let x_3221 : f32 = u_xlat61.x;
            let x_3223 : f32 = u_xlat85;
            u_xlat85 = ((x_3219 * x_3221) + x_3223);
            let x_3226 : vec4<f32> = u_xlat20;
            let x_3227 : vec2<f32> = vec2<f32>(x_3226.x, x_3226.y);
            let x_3229 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3227.x, x_3227.y, x_3229);
            let x_3236 : vec3<f32> = txVec46;
            let x_3238 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3236.xy, x_3236.z);
            u_xlat61.x = x_3238;
            let x_3241 : f32 = u_xlat22.w;
            let x_3243 : f32 = u_xlat61.x;
            let x_3245 : f32 = u_xlat85;
            u_xlat85 = ((x_3241 * x_3243) + x_3245);
            let x_3248 : vec4<f32> = u_xlat18;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.x, x_3248.y);
            let x_3251 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec47;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat61.x = x_3260;
            let x_3263 : f32 = u_xlat23.x;
            let x_3265 : f32 = u_xlat61.x;
            let x_3267 : f32 = u_xlat85;
            u_xlat85 = ((x_3263 * x_3265) + x_3267);
            let x_3270 : vec4<f32> = u_xlat18;
            let x_3271 : vec2<f32> = vec2<f32>(x_3270.z, x_3270.w);
            let x_3273 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3271.x, x_3271.y, x_3273);
            let x_3280 : vec3<f32> = txVec48;
            let x_3282 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3280.xy, x_3280.z);
            u_xlat61.x = x_3282;
            let x_3285 : f32 = u_xlat23.y;
            let x_3287 : f32 = u_xlat61.x;
            let x_3289 : f32 = u_xlat85;
            u_xlat85 = ((x_3285 * x_3287) + x_3289);
            let x_3292 : vec4<f32> = u_xlat19;
            let x_3293 : vec2<f32> = vec2<f32>(x_3292.x, x_3292.y);
            let x_3295 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3293.x, x_3293.y, x_3295);
            let x_3302 : vec3<f32> = txVec49;
            let x_3304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3302.xy, x_3302.z);
            u_xlat61.x = x_3304;
            let x_3307 : f32 = u_xlat23.z;
            let x_3309 : f32 = u_xlat61.x;
            let x_3311 : f32 = u_xlat85;
            u_xlat85 = ((x_3307 * x_3309) + x_3311);
            let x_3314 : vec4<f32> = u_xlat20;
            let x_3315 : vec2<f32> = vec2<f32>(x_3314.z, x_3314.w);
            let x_3317 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec50;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat61.x = x_3326;
            let x_3329 : f32 = u_xlat23.w;
            let x_3331 : f32 = u_xlat61.x;
            let x_3333 : f32 = u_xlat85;
            u_xlat85 = ((x_3329 * x_3331) + x_3333);
            let x_3336 : vec4<f32> = u_xlat21;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
            let x_3339 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec51;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat61.x = x_3348;
            let x_3351 : f32 = u_xlat24.x;
            let x_3353 : f32 = u_xlat61.x;
            let x_3355 : f32 = u_xlat85;
            u_xlat85 = ((x_3351 * x_3353) + x_3355);
            let x_3358 : vec4<f32> = u_xlat21;
            let x_3359 : vec2<f32> = vec2<f32>(x_3358.z, x_3358.w);
            let x_3361 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec52;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat61.x = x_3370;
            let x_3373 : f32 = u_xlat24.y;
            let x_3375 : f32 = u_xlat61.x;
            let x_3377 : f32 = u_xlat85;
            u_xlat85 = ((x_3373 * x_3375) + x_3377);
            let x_3380 : vec2<f32> = u_xlat38;
            let x_3382 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3380.x, x_3380.y, x_3382);
            let x_3389 : vec3<f32> = txVec53;
            let x_3391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3389.xy, x_3389.z);
            u_xlat61.x = x_3391;
            let x_3394 : f32 = u_xlat24.z;
            let x_3396 : f32 = u_xlat61.x;
            let x_3398 : f32 = u_xlat85;
            u_xlat85 = ((x_3394 * x_3396) + x_3398);
            let x_3401 : vec2<f32> = u_xlat69;
            let x_3403 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3401.x, x_3401.y, x_3403);
            let x_3410 : vec3<f32> = txVec54;
            let x_3412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3410.xy, x_3410.z);
            u_xlat61.x = x_3412;
            let x_3415 : f32 = u_xlat24.w;
            let x_3417 : f32 = u_xlat61.x;
            let x_3419 : f32 = u_xlat85;
            u_xlat85 = ((x_3415 * x_3417) + x_3419);
            let x_3422 : vec4<f32> = u_xlat16;
            let x_3423 : vec2<f32> = vec2<f32>(x_3422.x, x_3422.y);
            let x_3425 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec55;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat61.x = x_3434;
            let x_3437 : f32 = u_xlat12.x;
            let x_3439 : f32 = u_xlat61.x;
            let x_3441 : f32 = u_xlat85;
            u_xlat85 = ((x_3437 * x_3439) + x_3441);
            let x_3444 : vec4<f32> = u_xlat16;
            let x_3445 : vec2<f32> = vec2<f32>(x_3444.z, x_3444.w);
            let x_3447 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec56;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat61.x = x_3456;
            let x_3459 : f32 = u_xlat12.y;
            let x_3461 : f32 = u_xlat61.x;
            let x_3463 : f32 = u_xlat85;
            u_xlat85 = ((x_3459 * x_3461) + x_3463);
            let x_3466 : vec2<f32> = u_xlat64;
            let x_3468 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec57;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat61.x = x_3477;
            let x_3480 : f32 = u_xlat12.z;
            let x_3482 : f32 = u_xlat61.x;
            let x_3484 : f32 = u_xlat85;
            u_xlat85 = ((x_3480 * x_3482) + x_3484);
            let x_3487 : vec4<f32> = u_xlat11;
            let x_3488 : vec2<f32> = vec2<f32>(x_3487.x, x_3487.y);
            let x_3490 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3488.x, x_3488.y, x_3490);
            let x_3497 : vec3<f32> = txVec58;
            let x_3499 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3497.xy, x_3497.z);
            u_xlat11.x = x_3499;
            let x_3502 : f32 = u_xlat12.w;
            let x_3504 : f32 = u_xlat11.x;
            let x_3506 : f32 = u_xlat85;
            u_xlat84 = ((x_3502 * x_3504) + x_3506);
          }
        }
      } else {
        let x_3510 : vec4<f32> = u_xlat10;
        let x_3511 : vec2<f32> = vec2<f32>(x_3510.x, x_3510.y);
        let x_3513 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3511.x, x_3511.y, x_3513);
        let x_3520 : vec3<f32> = txVec59;
        let x_3522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3520.xy, x_3520.z);
        u_xlat84 = x_3522;
      }
      let x_3523 : i32 = u_xlati80;
      let x_3525 : f32 = x_83.x_AdditionalShadowParams[x_3523].x;
      u_xlat10.x = (1.0f + -(x_3525));
      let x_3529 : f32 = u_xlat84;
      let x_3530 : i32 = u_xlati80;
      let x_3532 : f32 = x_83.x_AdditionalShadowParams[x_3530].x;
      let x_3535 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3529 * x_3532) + x_3535);
      let x_3538 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3538);
      let x_3543 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3543 >= 1.0f);
      let x_3545 : bool = u_xlatb35;
      let x_3547 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3545 | x_3547);
      let x_3551 : bool = u_xlatb10.x;
      let x_3552 : f32 = u_xlat84;
      u_xlat84 = select(x_3552, 1.0f, x_3551);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3555 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3555) + 1.0f);
    let x_3559 : f32 = u_xlat51;
    let x_3561 : f32 = u_xlat10.x;
    let x_3563 : f32 = u_xlat84;
    u_xlat84 = ((x_3559 * x_3561) + x_3563);
    let x_3565 : f32 = u_xlat81;
    let x_3566 : f32 = u_xlat84;
    u_xlat81 = (x_3565 * x_3566);
    let x_3568 : vec4<f32> = u_xlat2;
    let x_3570 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3568.x, x_3568.y, x_3568.z), vec3<f32>(x_3570.x, x_3570.y, x_3570.z));
    let x_3573 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3573, 0.0f, 1.0f);
    let x_3575 : f32 = u_xlat81;
    let x_3576 : f32 = u_xlat84;
    u_xlat81 = (x_3575 * x_3576);
    let x_3578 : f32 = u_xlat81;
    let x_3580 : i32 = u_xlati80;
    let x_3582 : vec4<f32> = x_2071.x_AdditionalLightsColor[x_3580];
    let x_3584 : vec3<f32> = (vec3<f32>(x_3578, x_3578, x_3578) * vec3<f32>(x_3582.x, x_3582.y, x_3582.z));
    let x_3585 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3584.x, x_3584.y, x_3584.z, x_3585.w);
    let x_3587 : vec4<f32> = u_xlat8;
    let x_3589 : f32 = u_xlat83;
    let x_3592 : vec4<f32> = u_xlat5;
    let x_3594 : vec3<f32> = ((vec3<f32>(x_3587.x, x_3587.y, x_3587.z) * vec3<f32>(x_3589, x_3589, x_3589)) + vec3<f32>(x_3592.x, x_3592.y, x_3592.z));
    let x_3595 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3594.x, x_3594.y, x_3594.z, x_3595.w);
    let x_3597 : vec4<f32> = u_xlat8;
    let x_3599 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3597.x, x_3597.y, x_3597.z), vec3<f32>(x_3599.x, x_3599.y, x_3599.z));
    let x_3602 : f32 = u_xlat80;
    u_xlat80 = max(x_3602, 1.17549435e-38f);
    let x_3604 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_3604);
    let x_3606 : f32 = u_xlat80;
    let x_3608 : vec4<f32> = u_xlat8;
    let x_3610 : vec3<f32> = (vec3<f32>(x_3606, x_3606, x_3606) * vec3<f32>(x_3608.x, x_3608.y, x_3608.z));
    let x_3611 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3610.x, x_3610.y, x_3610.z, x_3611.w);
    let x_3613 : vec4<f32> = u_xlat2;
    let x_3615 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3613.x, x_3613.y, x_3613.z), vec3<f32>(x_3615.x, x_3615.y, x_3615.z));
    let x_3618 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3618, 0.0f, 1.0f);
    let x_3620 : vec4<f32> = u_xlat9;
    let x_3622 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3620.x, x_3620.y, x_3620.z), vec3<f32>(x_3622.x, x_3622.y, x_3622.z));
    let x_3625 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3625, 0.0f, 1.0f);
    let x_3627 : f32 = u_xlat80;
    let x_3628 : f32 = u_xlat80;
    u_xlat80 = (x_3627 * x_3628);
    let x_3630 : f32 = u_xlat80;
    let x_3632 : f32 = u_xlat7.x;
    u_xlat80 = ((x_3630 * x_3632) + 1.00001001358032226562f);
    let x_3635 : f32 = u_xlat81;
    let x_3636 : f32 = u_xlat81;
    u_xlat81 = (x_3635 * x_3636);
    let x_3638 : f32 = u_xlat80;
    let x_3639 : f32 = u_xlat80;
    u_xlat80 = (x_3638 * x_3639);
    let x_3641 : f32 = u_xlat81;
    u_xlat81 = max(x_3641, 0.10000000149011611938f);
    let x_3643 : f32 = u_xlat80;
    let x_3644 : f32 = u_xlat81;
    u_xlat80 = (x_3643 * x_3644);
    let x_3646 : f32 = u_xlat78;
    let x_3647 : f32 = u_xlat80;
    u_xlat80 = (x_3646 * x_3647);
    let x_3649 : f32 = u_xlat79;
    let x_3650 : f32 = u_xlat80;
    u_xlat80 = (x_3649 / x_3650);
    let x_3652 : vec4<f32> = u_xlat0;
    let x_3654 : f32 = u_xlat80;
    let x_3657 : vec4<f32> = u_xlat4;
    let x_3659 : vec3<f32> = ((vec3<f32>(x_3652.x, x_3652.y, x_3652.z) * vec3<f32>(x_3654, x_3654, x_3654)) + vec3<f32>(x_3657.x, x_3657.y, x_3657.z));
    let x_3660 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
    let x_3662 : vec4<f32> = u_xlat8;
    let x_3664 : vec4<f32> = u_xlat10;
    let x_3667 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3662.x, x_3662.y, x_3662.z) * vec3<f32>(x_3664.x, x_3664.y, x_3664.z)) + x_3667);

    continuing {
      let x_3669 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3669 + bitcast<u32>(1i));
    }
  }
  let x_3671 : vec4<f32> = u_xlat6;
  let x_3673 : vec4<f32> = u_xlat1;
  let x_3676 : vec3<f32> = u_xlat3;
  let x_3677 : vec3<f32> = ((vec3<f32>(x_3671.x, x_3671.y, x_3671.z) * vec3<f32>(x_3673.x, x_3673.y, x_3673.w)) + x_3676);
  let x_3678 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3677.x, x_3677.y, x_3677.z, x_3678.w);
  let x_3682 : vec3<f32> = u_xlat32;
  let x_3683 : vec4<f32> = u_xlat0;
  let x_3685 : vec3<f32> = (x_3682 + vec3<f32>(x_3683.x, x_3683.y, x_3683.z));
  let x_3686 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3685.x, x_3685.y, x_3685.z, x_3686.w);
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


