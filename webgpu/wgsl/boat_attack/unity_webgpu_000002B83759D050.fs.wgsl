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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_76 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat23 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_275 : UnityPerDraw;

var<private> u_xlat64 : f32;

var<private> u_xlatb64 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb65 : bool;

var<private> u_xlat46 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat65 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlat44 : f32;

var<private> u_xlatu64 : u32;

var<private> u_xlatu67 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat67 : f32;

var<private> u_xlati67 : i32;

@group(1) @binding(1) var<uniform> x_1755 : AdditionalLights;

var<private> u_xlat68 : f32;

var<private> u_xlati6 : i32;

var<private> u_xlatb27 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb69 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat69 : f32;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlatb48 : bool;

var<private> u_xlat21 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu66 : u32;

var<private> u_xlatb67 : bool;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1906 : f32;
  var x_1918 : f32;
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
  var x_3252 : f32;
  var x_3336 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_50 : vec3<f32> = vs_TEXCOORD2;
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_50, x_51);
  let x_56 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_56);
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec3<f32> = vs_TEXCOORD2;
  let x_62 : vec3<f32> = (vec3<f32>(x_59.x, x_59.x, x_59.x) * x_61);
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_67 : vec3<f32> = vs_TEXCOORD1;
  let x_78 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres0;
  let x_81 : vec3<f32> = (x_67 + -(vec3<f32>(x_78.x, x_78.y, x_78.z)));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec3<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres1;
  let x_91 : vec3<f32> = (x_85 + -(vec3<f32>(x_88.x, x_88.y, x_88.z)));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec3<f32> = vs_TEXCOORD1;
  let x_98 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres2;
  let x_101 : vec3<f32> = (x_95 + -(vec3<f32>(x_98.x, x_98.y, x_98.z)));
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = vs_TEXCOORD1;
  let x_108 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres3;
  let x_111 : vec3<f32> = (x_105 + -(vec3<f32>(x_108.x, x_108.y, x_108.z)));
  let x_112 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat2;
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_120 : vec4<f32> = u_xlat3;
  let x_122 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_120.x, x_120.y, x_120.z), vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_127 : vec4<f32> = u_xlat4;
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_134 : vec4<f32> = u_xlat5;
  let x_136 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_145 : vec4<f32> = u_xlat2;
  let x_148 : vec4<f32> = x_76.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_145 < x_148);
  let x_152 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_152);
  let x_158 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_158);
  let x_162 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_162);
  let x_166 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_166);
  let x_170 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_170);
  let x_176 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_176);
  let x_180 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_180);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat3;
  let x_187 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_185.y, x_185.z, x_185.w));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat2;
  let x_193 : vec3<f32> = max(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_194.x, x_193.x, x_193.y, x_193.z);
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_196, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_204 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_204) + 4.0f);
  let x_211 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_211);
  let x_215 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_215) << bitcast<u32>(2i));
  let x_220 : vec3<f32> = vs_TEXCOORD1;
  let x_222 : i32 = u_xlati2;
  let x_225 : i32 = u_xlati2;
  let x_229 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_222 + 1i) / 4i)][((x_225 + 1i) % 4i)];
  u_xlat23 = (vec3<f32>(x_220.y, x_220.y, x_220.y) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : i32 = u_xlati2;
  let x_234 : i32 = u_xlati2;
  let x_237 : vec4<f32> = x_76.x_MainLightWorldToShadow[(x_232 / 4i)][(x_234 % 4i)];
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_242 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239.x, x_239.x, x_239.x)) + x_242);
  let x_244 : i32 = u_xlati2;
  let x_247 : i32 = u_xlati2;
  let x_251 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_244 + 2i) / 4i)][((x_247 + 2i) % 4i)];
  let x_253 : vec3<f32> = vs_TEXCOORD1;
  let x_256 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253.z, x_253.z, x_253.z)) + x_256);
  let x_258 : vec3<f32> = u_xlat23;
  let x_259 : i32 = u_xlati2;
  let x_262 : i32 = u_xlati2;
  let x_266 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_259 + 3i) / 4i)][((x_262 + 3i) % 4i)];
  let x_268 : vec3<f32> = (x_258 + vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  u_xlat1.w = 1.0f;
  let x_278 : vec4<f32> = x_275.unity_SHAr;
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_278, x_279);
  let x_284 : vec4<f32> = x_275.unity_SHAg;
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_284, x_285);
  let x_290 : vec4<f32> = x_275.unity_SHAb;
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_290, x_291);
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_294.y, x_294.z, x_294.z, x_294.x) * vec4<f32>(x_296.x, x_296.y, x_296.z, x_296.z));
  let x_301 : vec4<f32> = x_275.unity_SHBr;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_301, x_302);
  let x_307 : vec4<f32> = x_275.unity_SHBg;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_307, x_308);
  let x_313 : vec4<f32> = x_275.unity_SHBb;
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_313, x_314);
  let x_319 : f32 = u_xlat1.y;
  let x_321 : f32 = u_xlat1.y;
  u_xlat64 = (x_319 * x_321);
  let x_324 : f32 = u_xlat1.x;
  let x_326 : f32 = u_xlat1.x;
  let x_328 : f32 = u_xlat64;
  u_xlat64 = ((x_324 * x_326) + -(x_328));
  let x_333 : vec4<f32> = x_275.unity_SHC;
  let x_335 : f32 = u_xlat64;
  let x_338 : vec4<f32> = u_xlat5;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335, x_335, x_335)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat3;
  let x_352 : vec3<f32> = max(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_358 : f32 = x_76.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_358);
  let x_360 : bool = u_xlatb64;
  if (x_360) {
    let x_364 : f32 = x_76.x_MainLightShadowParams.y;
    u_xlatb64 = (x_364 == 1.0f);
    let x_366 : bool = u_xlatb64;
    if (x_366) {
      let x_369 : vec4<f32> = u_xlat2;
      let x_373 : vec4<f32> = x_76.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_369.x, x_369.y, x_369.x, x_369.y) + x_373);
      let x_377 : vec4<f32> = u_xlat4;
      let x_378 : vec2<f32> = vec2<f32>(x_377.x, x_377.y);
      let x_380 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_378.x, x_378.y, x_380);
      let x_392 : vec3<f32> = txVec0;
      let x_394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_392.xy, x_392.z);
      u_xlat5.x = x_394;
      let x_397 : vec4<f32> = u_xlat4;
      let x_398 : vec2<f32> = vec2<f32>(x_397.z, x_397.w);
      let x_400 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_398.x, x_398.y, x_400);
      let x_407 : vec3<f32> = txVec1;
      let x_409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_407.xy, x_407.z);
      u_xlat5.y = x_409;
      let x_411 : vec4<f32> = u_xlat2;
      let x_415 : vec4<f32> = x_76.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_411.x, x_411.y, x_411.x, x_411.y) + x_415);
      let x_418 : vec4<f32> = u_xlat4;
      let x_419 : vec2<f32> = vec2<f32>(x_418.x, x_418.y);
      let x_421 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_419.x, x_419.y, x_421);
      let x_428 : vec3<f32> = txVec2;
      let x_430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_428.xy, x_428.z);
      u_xlat5.z = x_430;
      let x_433 : vec4<f32> = u_xlat4;
      let x_434 : vec2<f32> = vec2<f32>(x_433.z, x_433.w);
      let x_436 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_434.x, x_434.y, x_436);
      let x_443 : vec3<f32> = txVec3;
      let x_445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_443.xy, x_443.z);
      u_xlat5.w = x_445;
      let x_447 : vec4<f32> = u_xlat5;
      u_xlat64 = dot(x_447, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_454 : f32 = x_76.x_MainLightShadowParams.y;
      u_xlatb65 = (x_454 == 2.0f);
      let x_456 : bool = u_xlatb65;
      if (x_456) {
        let x_459 : vec4<f32> = u_xlat2;
        let x_463 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_468 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(x_463.z, x_463.w)) + vec2<f32>(0.5f, 0.5f));
        let x_469 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
        let x_471 : vec4<f32> = u_xlat4;
        let x_473 : vec2<f32> = floor(vec2<f32>(x_471.x, x_471.y));
        let x_474 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_478 : vec4<f32> = u_xlat2;
        let x_481 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_484 : vec4<f32> = u_xlat4;
        u_xlat46 = ((vec2<f32>(x_478.x, x_478.y) * vec2<f32>(x_481.z, x_481.w)) + -(vec2<f32>(x_484.x, x_484.y)));
        let x_488 : vec2<f32> = u_xlat46;
        u_xlat5 = (vec4<f32>(x_488.x, x_488.x, x_488.y, x_488.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_493 : vec4<f32> = u_xlat5;
        let x_495 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_493.x, x_493.x, x_493.z, x_493.z) * vec4<f32>(x_495.x, x_495.x, x_495.z, x_495.z));
        let x_498 : vec4<f32> = u_xlat6;
        let x_502 : vec2<f32> = (vec2<f32>(x_498.y, x_498.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_503 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_502.x, x_503.y, x_502.y, x_503.w);
        let x_505 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = u_xlat46;
        let x_510 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.z) * vec2<f32>(0.5f, 0.5f)) + -(x_508));
        let x_511 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_514 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_514) + vec2<f32>(1.0f, 1.0f));
        let x_519 : vec2<f32> = u_xlat46;
        let x_521 : vec2<f32> = min(x_519, vec2<f32>(0.0f, 0.0f));
        let x_522 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat7;
        let x_527 : vec4<f32> = u_xlat7;
        let x_530 : vec2<f32> = u_xlat48;
        let x_531 : vec2<f32> = ((-(vec2<f32>(x_524.x, x_524.y)) * vec2<f32>(x_527.x, x_527.y)) + x_530);
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
        let x_534 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_534, vec2<f32>(0.0f, 0.0f));
        let x_536 : vec2<f32> = u_xlat46;
        let x_538 : vec2<f32> = u_xlat46;
        let x_540 : vec4<f32> = u_xlat5;
        u_xlat46 = ((-(x_536) * x_538) + vec2<f32>(x_540.y, x_540.w));
        let x_543 : vec4<f32> = u_xlat7;
        let x_545 : vec2<f32> = (vec2<f32>(x_543.x, x_543.y) + vec2<f32>(1.0f, 1.0f));
        let x_546 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_548 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_548 + vec2<f32>(1.0f, 1.0f));
        let x_551 : vec4<f32> = u_xlat6;
        let x_555 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_556 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
        let x_558 : vec2<f32> = u_xlat48;
        let x_559 : vec2<f32> = (x_558 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_560 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat7;
        let x_564 : vec2<f32> = (vec2<f32>(x_562.x, x_562.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_568 : vec2<f32> = u_xlat46;
        let x_569 : vec2<f32> = (x_568 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_570 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat5;
        u_xlat46 = (vec2<f32>(x_572.y, x_572.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_576 : f32 = u_xlat7.x;
        u_xlat8.z = x_576;
        let x_579 : f32 = u_xlat46.x;
        u_xlat8.w = x_579;
        let x_582 : f32 = u_xlat9.x;
        u_xlat6.z = x_582;
        let x_585 : f32 = u_xlat5.x;
        u_xlat6.w = x_585;
        let x_588 : vec4<f32> = u_xlat6;
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_588.z, x_588.w, x_588.x, x_588.z) + vec4<f32>(x_590.z, x_590.w, x_590.x, x_590.z));
        let x_594 : f32 = u_xlat8.y;
        u_xlat7.z = x_594;
        let x_597 : f32 = u_xlat46.y;
        u_xlat7.w = x_597;
        let x_600 : f32 = u_xlat6.y;
        u_xlat9.z = x_600;
        let x_603 : f32 = u_xlat5.z;
        u_xlat9.w = x_603;
        let x_605 : vec4<f32> = u_xlat7;
        let x_607 : vec4<f32> = u_xlat9;
        let x_609 : vec3<f32> = (vec3<f32>(x_605.z, x_605.y, x_605.w) + vec3<f32>(x_607.z, x_607.y, x_607.w));
        let x_610 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat6;
        let x_614 : vec4<f32> = u_xlat10;
        let x_616 : vec3<f32> = (vec3<f32>(x_612.x, x_612.z, x_612.w) / vec3<f32>(x_614.z, x_614.w, x_614.y));
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat6;
        let x_625 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat9;
        let x_630 : vec4<f32> = u_xlat5;
        let x_632 : vec3<f32> = (vec3<f32>(x_628.z, x_628.y, x_628.w) / vec3<f32>(x_630.x, x_630.y, x_630.z));
        let x_633 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat7;
        let x_637 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_638 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat6;
        let x_643 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_645 : vec3<f32> = (vec3<f32>(x_640.y, x_640.x, x_640.z) * vec3<f32>(x_643.x, x_643.x, x_643.x));
        let x_646 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat7;
        let x_651 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_653 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(x_651.y, x_651.y, x_651.y));
        let x_654 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_657 : f32 = u_xlat7.x;
        u_xlat6.w = x_657;
        let x_659 : vec4<f32> = u_xlat4;
        let x_662 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_665 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y) * vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y)) + vec4<f32>(x_665.y, x_665.w, x_665.x, x_665.w));
        let x_668 : vec4<f32> = u_xlat4;
        let x_671 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_674 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_668.x, x_668.y) * vec2<f32>(x_671.x, x_671.y)) + vec2<f32>(x_674.z, x_674.w));
        let x_678 : f32 = u_xlat6.y;
        u_xlat7.w = x_678;
        let x_680 : vec4<f32> = u_xlat7;
        let x_681 : vec2<f32> = vec2<f32>(x_680.y, x_680.z);
        let x_682 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_682.x, x_681.x, x_682.z, x_681.y);
        let x_684 : vec4<f32> = u_xlat4;
        let x_687 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_690 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_684.x, x_684.y, x_684.x, x_684.y) * vec4<f32>(x_687.x, x_687.y, x_687.x, x_687.y)) + vec4<f32>(x_690.x, x_690.y, x_690.z, x_690.y));
        let x_693 : vec4<f32> = u_xlat4;
        let x_696 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_699 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_693.x, x_693.y, x_693.x, x_693.y) * vec4<f32>(x_696.x, x_696.y, x_696.x, x_696.y)) + vec4<f32>(x_699.w, x_699.y, x_699.w, x_699.z));
        let x_702 : vec4<f32> = u_xlat4;
        let x_705 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_708 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y) * vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y)) + vec4<f32>(x_708.x, x_708.w, x_708.z, x_708.w));
        let x_712 : vec4<f32> = u_xlat5;
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_712.x, x_712.x, x_712.x, x_712.y) * vec4<f32>(x_714.z, x_714.w, x_714.y, x_714.z));
        let x_718 : vec4<f32> = u_xlat5;
        let x_720 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_718.y, x_718.y, x_718.z, x_718.z) * x_720);
        let x_724 : f32 = u_xlat5.z;
        let x_726 : f32 = u_xlat10.y;
        u_xlat65 = (x_724 * x_726);
        let x_729 : vec4<f32> = u_xlat8;
        let x_730 : vec2<f32> = vec2<f32>(x_729.x, x_729.y);
        let x_732 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_740 : vec3<f32> = txVec4;
        let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_740.xy, x_740.z);
        u_xlat66 = x_742;
        let x_744 : vec4<f32> = u_xlat8;
        let x_745 : vec2<f32> = vec2<f32>(x_744.z, x_744.w);
        let x_747 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec5;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat4.x = x_756;
        let x_759 : f32 = u_xlat4.x;
        let x_761 : f32 = u_xlat11.y;
        u_xlat4.x = (x_759 * x_761);
        let x_765 : f32 = u_xlat11.x;
        let x_766 : f32 = u_xlat66;
        let x_769 : f32 = u_xlat4.x;
        u_xlat66 = ((x_765 * x_766) + x_769);
        let x_772 : vec2<f32> = u_xlat46;
        let x_774 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec6;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat4.x = x_783;
        let x_786 : f32 = u_xlat11.z;
        let x_788 : f32 = u_xlat4.x;
        let x_790 : f32 = u_xlat66;
        u_xlat66 = ((x_786 * x_788) + x_790);
        let x_793 : vec4<f32> = u_xlat7;
        let x_794 : vec2<f32> = vec2<f32>(x_793.x, x_793.y);
        let x_796 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_794.x, x_794.y, x_796);
        let x_803 : vec3<f32> = txVec7;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_803.xy, x_803.z);
        u_xlat4.x = x_805;
        let x_808 : f32 = u_xlat11.w;
        let x_810 : f32 = u_xlat4.x;
        let x_812 : f32 = u_xlat66;
        u_xlat66 = ((x_808 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat9;
        let x_816 : vec2<f32> = vec2<f32>(x_815.x, x_815.y);
        let x_818 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec8;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_825.xy, x_825.z);
        u_xlat4.x = x_827;
        let x_830 : f32 = u_xlat12.x;
        let x_832 : f32 = u_xlat4.x;
        let x_834 : f32 = u_xlat66;
        u_xlat66 = ((x_830 * x_832) + x_834);
        let x_837 : vec4<f32> = u_xlat9;
        let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
        let x_840 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_847 : vec3<f32> = txVec9;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
        u_xlat4.x = x_849;
        let x_852 : f32 = u_xlat12.y;
        let x_854 : f32 = u_xlat4.x;
        let x_856 : f32 = u_xlat66;
        u_xlat66 = ((x_852 * x_854) + x_856);
        let x_859 : vec4<f32> = u_xlat7;
        let x_860 : vec2<f32> = vec2<f32>(x_859.z, x_859.w);
        let x_862 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_860.x, x_860.y, x_862);
        let x_869 : vec3<f32> = txVec10;
        let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_869.xy, x_869.z);
        u_xlat4.x = x_871;
        let x_874 : f32 = u_xlat12.z;
        let x_876 : f32 = u_xlat4.x;
        let x_878 : f32 = u_xlat66;
        u_xlat66 = ((x_874 * x_876) + x_878);
        let x_881 : vec4<f32> = u_xlat6;
        let x_882 : vec2<f32> = vec2<f32>(x_881.x, x_881.y);
        let x_884 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_882.x, x_882.y, x_884);
        let x_891 : vec3<f32> = txVec11;
        let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
        u_xlat4.x = x_893;
        let x_896 : f32 = u_xlat12.w;
        let x_898 : f32 = u_xlat4.x;
        let x_900 : f32 = u_xlat66;
        u_xlat66 = ((x_896 * x_898) + x_900);
        let x_903 : vec4<f32> = u_xlat6;
        let x_904 : vec2<f32> = vec2<f32>(x_903.z, x_903.w);
        let x_906 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_904.x, x_904.y, x_906);
        let x_913 : vec3<f32> = txVec12;
        let x_915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_913.xy, x_913.z);
        u_xlat4.x = x_915;
        let x_917 : f32 = u_xlat65;
        let x_919 : f32 = u_xlat4.x;
        let x_921 : f32 = u_xlat66;
        u_xlat64 = ((x_917 * x_919) + x_921);
      } else {
        let x_924 : vec4<f32> = u_xlat2;
        let x_927 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_930 : vec2<f32> = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_927.z, x_927.w)) + vec2<f32>(0.5f, 0.5f));
        let x_931 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat4;
        let x_935 : vec2<f32> = floor(vec2<f32>(x_933.x, x_933.y));
        let x_936 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat2;
        let x_941 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_944 : vec4<f32> = u_xlat4;
        u_xlat46 = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.z, x_941.w)) + -(vec2<f32>(x_944.x, x_944.y)));
        let x_948 : vec2<f32> = u_xlat46;
        u_xlat5 = (vec4<f32>(x_948.x, x_948.x, x_948.y, x_948.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_951 : vec4<f32> = u_xlat5;
        let x_953 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_951.x, x_951.x, x_951.z, x_951.z) * vec4<f32>(x_953.x, x_953.x, x_953.z, x_953.z));
        let x_956 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = (vec2<f32>(x_956.y, x_956.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_961.x, x_960.x, x_961.z, x_960.y);
        let x_963 : vec4<f32> = u_xlat6;
        let x_966 : vec2<f32> = u_xlat46;
        let x_968 : vec2<f32> = ((vec2<f32>(x_963.x, x_963.z) * vec2<f32>(0.5f, 0.5f)) + -(x_966));
        let x_969 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_968.x, x_969.y, x_968.y, x_969.w);
        let x_971 : vec2<f32> = u_xlat46;
        let x_973 : vec2<f32> = (-(x_971) + vec2<f32>(1.0f, 1.0f));
        let x_974 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_976, vec2<f32>(0.0f, 0.0f));
        let x_978 : vec2<f32> = u_xlat48;
        let x_980 : vec2<f32> = u_xlat48;
        let x_982 : vec4<f32> = u_xlat6;
        let x_984 : vec2<f32> = ((-(x_978) * x_980) + vec2<f32>(x_982.x, x_982.y));
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_987, vec2<f32>(0.0f, 0.0f));
        let x_990 : vec2<f32> = u_xlat48;
        let x_992 : vec2<f32> = u_xlat48;
        let x_994 : vec4<f32> = u_xlat5;
        let x_996 : vec2<f32> = ((-(x_990) * x_992) + vec2<f32>(x_994.y, x_994.w));
        let x_997 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_996.x, x_997.y, x_996.y);
        let x_999 : vec4<f32> = u_xlat6;
        let x_1002 : vec2<f32> = (vec2<f32>(x_999.x, x_999.y) + vec2<f32>(2.0f, 2.0f));
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1005 : vec3<f32> = u_xlat26;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1005.x, x_1005.z) + vec2<f32>(2.0f, 2.0f));
        let x_1008 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1011 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1011 * 0.08163200318813323975f);
        let x_1015 : vec4<f32> = u_xlat5;
        let x_1018 : vec3<f32> = (vec3<f32>(x_1015.z, x_1015.x, x_1015.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1025 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1028 : f32 = u_xlat9.y;
        u_xlat8.x = x_1028;
        let x_1030 : vec2<f32> = u_xlat46;
        let x_1037 : vec2<f32> = ((vec2<f32>(x_1030.x, x_1030.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1038.x, x_1037.x, x_1038.z, x_1037.y);
        let x_1040 : vec2<f32> = u_xlat46;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1048 : f32 = u_xlat5.x;
        u_xlat6.y = x_1048;
        let x_1051 : f32 = u_xlat7.y;
        u_xlat6.w = x_1051;
        let x_1053 : vec4<f32> = u_xlat6;
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1053 + x_1054);
        let x_1056 : vec2<f32> = u_xlat46;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1056.y, x_1056.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1060.x, x_1059.x, x_1060.z, x_1059.y);
        let x_1062 : vec2<f32> = u_xlat46;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1062.y, x_1062.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1066 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1065.x, x_1066.y, x_1065.y, x_1066.w);
        let x_1069 : f32 = u_xlat5.y;
        u_xlat7.y = x_1069;
        let x_1071 : vec4<f32> = u_xlat7;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1071 + x_1072);
        let x_1074 : vec4<f32> = u_xlat6;
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1074 / x_1075);
        let x_1077 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1077 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1084 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1083 / x_1084);
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1086 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1088 : vec4<f32> = u_xlat6;
        let x_1091 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1088.w, x_1088.x, x_1088.y, x_1088.z) * vec4<f32>(x_1091.x, x_1091.x, x_1091.x, x_1091.x));
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1097 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1094.x, x_1094.w, x_1094.y, x_1094.z) * vec4<f32>(x_1097.y, x_1097.y, x_1097.y, x_1097.y));
        let x_1100 : vec4<f32> = u_xlat6;
        let x_1101 : vec3<f32> = vec3<f32>(x_1100.y, x_1100.z, x_1100.w);
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1101.x, x_1102.y, x_1101.y, x_1101.z);
        let x_1105 : f32 = u_xlat7.x;
        u_xlat9.y = x_1105;
        let x_1107 : vec4<f32> = u_xlat4;
        let x_1110 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y) * vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y)) + vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1113.y));
        let x_1116 : vec4<f32> = u_xlat4;
        let x_1119 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat46 = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.w, x_1122.y));
        let x_1126 : f32 = u_xlat9.y;
        u_xlat6.y = x_1126;
        let x_1129 : f32 = u_xlat7.z;
        u_xlat9.y = x_1129;
        let x_1131 : vec4<f32> = u_xlat4;
        let x_1134 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y) * vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y)) + vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat4;
        let x_1143 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(x_1146.w, x_1146.y));
        let x_1149 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : f32 = u_xlat9.y;
        u_xlat6.z = x_1152;
        let x_1155 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.z));
        let x_1165 : f32 = u_xlat7.w;
        u_xlat9.y = x_1165;
        let x_1168 : vec4<f32> = u_xlat4;
        let x_1171 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y) * vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y)) + vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1174.y));
        let x_1178 : vec4<f32> = u_xlat4;
        let x_1181 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat27 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1188 : f32 = u_xlat9.y;
        u_xlat6.w = x_1188;
        let x_1191 : vec4<f32> = u_xlat4;
        let x_1194 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat6;
        u_xlat54 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.x, x_1197.w));
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1201 : vec3<f32> = vec3<f32>(x_1200.x, x_1200.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1201.x, x_1202.y, x_1201.y, x_1201.z);
        let x_1204 : vec4<f32> = u_xlat4;
        let x_1207 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y) * vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y)) + vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1210.y));
        let x_1214 : vec4<f32> = u_xlat4;
        let x_1217 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1214.x, x_1214.y) * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1224 : f32 = u_xlat6.x;
        u_xlat7.x = x_1224;
        let x_1226 : vec4<f32> = u_xlat4;
        let x_1229 : vec4<f32> = x_76.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat7;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.x, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1240 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1238.x, x_1238.x, x_1238.x, x_1238.x) * x_1240);
        let x_1243 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1243.y, x_1243.y, x_1243.y, x_1243.y) * x_1245);
        let x_1248 : vec4<f32> = u_xlat5;
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1248.z, x_1248.z, x_1248.z, x_1248.z) * x_1250);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1252.w, x_1252.w, x_1252.w, x_1252.w) * x_1254);
        let x_1257 : vec4<f32> = u_xlat10;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.x, x_1257.y);
        let x_1260 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec13;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1267.xy, x_1267.z);
        u_xlat65 = x_1269;
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.z, x_1271.w);
        let x_1274 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec14;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1281.xy, x_1281.z);
        u_xlat66 = x_1283;
        let x_1284 : f32 = u_xlat66;
        let x_1286 : f32 = u_xlat15.y;
        u_xlat66 = (x_1284 * x_1286);
        let x_1289 : f32 = u_xlat15.x;
        let x_1290 : f32 = u_xlat65;
        let x_1292 : f32 = u_xlat66;
        u_xlat65 = ((x_1289 * x_1290) + x_1292);
        let x_1295 : vec2<f32> = u_xlat46;
        let x_1297 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec15;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1304.xy, x_1304.z);
        u_xlat66 = x_1306;
        let x_1308 : f32 = u_xlat15.z;
        let x_1309 : f32 = u_xlat66;
        let x_1311 : f32 = u_xlat65;
        u_xlat65 = ((x_1308 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat13;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec16;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1324.xy, x_1324.z);
        u_xlat66 = x_1326;
        let x_1328 : f32 = u_xlat15.w;
        let x_1329 : f32 = u_xlat66;
        let x_1331 : f32 = u_xlat65;
        u_xlat65 = ((x_1328 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec17;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat66 = x_1346;
        let x_1348 : f32 = u_xlat16.x;
        let x_1349 : f32 = u_xlat66;
        let x_1351 : f32 = u_xlat65;
        u_xlat65 = ((x_1348 * x_1349) + x_1351);
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.z, x_1354.w);
        let x_1357 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec18;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat66 = x_1366;
        let x_1368 : f32 = u_xlat16.y;
        let x_1369 : f32 = u_xlat66;
        let x_1371 : f32 = u_xlat65;
        u_xlat65 = ((x_1368 * x_1369) + x_1371);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.x, x_1374.y);
        let x_1377 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec19;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
        u_xlat66 = x_1386;
        let x_1388 : f32 = u_xlat16.z;
        let x_1389 : f32 = u_xlat66;
        let x_1391 : f32 = u_xlat65;
        u_xlat65 = ((x_1388 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat13;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.z, x_1394.w);
        let x_1397 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec20;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat66 = x_1406;
        let x_1408 : f32 = u_xlat16.w;
        let x_1409 : f32 = u_xlat66;
        let x_1411 : f32 = u_xlat65;
        u_xlat65 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat14;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.x, x_1414.y);
        let x_1417 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec21;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat66 = x_1426;
        let x_1428 : f32 = u_xlat17.x;
        let x_1429 : f32 = u_xlat66;
        let x_1431 : f32 = u_xlat65;
        u_xlat65 = ((x_1428 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat14;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec22;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat66 = x_1446;
        let x_1448 : f32 = u_xlat17.y;
        let x_1449 : f32 = u_xlat66;
        let x_1451 : f32 = u_xlat65;
        u_xlat65 = ((x_1448 * x_1449) + x_1451);
        let x_1454 : vec2<f32> = u_xlat27;
        let x_1456 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec23;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat66 = x_1465;
        let x_1467 : f32 = u_xlat17.z;
        let x_1468 : f32 = u_xlat66;
        let x_1470 : f32 = u_xlat65;
        u_xlat65 = ((x_1467 * x_1468) + x_1470);
        let x_1473 : vec2<f32> = u_xlat54;
        let x_1475 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec24;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1482.xy, x_1482.z);
        u_xlat66 = x_1484;
        let x_1486 : f32 = u_xlat17.w;
        let x_1487 : f32 = u_xlat66;
        let x_1489 : f32 = u_xlat65;
        u_xlat65 = ((x_1486 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat9;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.x, x_1492.y);
        let x_1495 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec25;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat66 = x_1504;
        let x_1506 : f32 = u_xlat5.x;
        let x_1507 : f32 = u_xlat66;
        let x_1509 : f32 = u_xlat65;
        u_xlat65 = ((x_1506 * x_1507) + x_1509);
        let x_1512 : vec4<f32> = u_xlat9;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.z, x_1512.w);
        let x_1515 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec26;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1522.xy, x_1522.z);
        u_xlat66 = x_1524;
        let x_1526 : f32 = u_xlat5.y;
        let x_1527 : f32 = u_xlat66;
        let x_1529 : f32 = u_xlat65;
        u_xlat65 = ((x_1526 * x_1527) + x_1529);
        let x_1532 : vec2<f32> = u_xlat49;
        let x_1534 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec27;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat66 = x_1543;
        let x_1545 : f32 = u_xlat5.z;
        let x_1546 : f32 = u_xlat66;
        let x_1548 : f32 = u_xlat65;
        u_xlat65 = ((x_1545 * x_1546) + x_1548);
        let x_1551 : vec4<f32> = u_xlat4;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.x, x_1551.y);
        let x_1554 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec28;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
        u_xlat66 = x_1563;
        let x_1565 : f32 = u_xlat5.w;
        let x_1566 : f32 = u_xlat66;
        let x_1568 : f32 = u_xlat65;
        u_xlat64 = ((x_1565 * x_1566) + x_1568);
      }
    }
  } else {
    let x_1572 : vec4<f32> = u_xlat2;
    let x_1573 : vec2<f32> = vec2<f32>(x_1572.x, x_1572.y);
    let x_1575 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
    let x_1582 : vec3<f32> = txVec29;
    let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
    u_xlat64 = x_1584;
  }
  let x_1586 : f32 = x_76.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1586) + 1.0f);
  let x_1590 : f32 = u_xlat64;
  let x_1592 : f32 = x_76.x_MainLightShadowParams.x;
  let x_1595 : f32 = u_xlat2.x;
  u_xlat64 = ((x_1590 * x_1592) + x_1595);
  let x_1598 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_1598);
  let x_1603 : f32 = u_xlat2.z;
  u_xlatb23 = (x_1603 >= 1.0f);
  let x_1605 : bool = u_xlatb23;
  let x_1607 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_1605 | x_1607);
  let x_1611 : bool = u_xlatb2.x;
  let x_1612 : f32 = u_xlat64;
  u_xlat64 = select(x_1612, 1.0f, x_1611);
  let x_1614 : vec3<f32> = vs_TEXCOORD1;
  let x_1617 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1619 : vec3<f32> = (x_1614 + -(x_1617));
  let x_1620 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
  let x_1622 : vec4<f32> = u_xlat2;
  let x_1624 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_1622.x, x_1622.y, x_1622.z), vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
  let x_1629 : f32 = u_xlat2.x;
  let x_1631 : f32 = x_76.x_MainLightShadowParams.z;
  let x_1634 : f32 = x_76.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1629 * x_1631) + x_1634);
  let x_1638 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1638, 0.0f, 1.0f);
  let x_1642 : f32 = u_xlat64;
  u_xlat44 = (-(x_1642) + 1.0f);
  let x_1646 : f32 = u_xlat23.x;
  let x_1647 : f32 = u_xlat44;
  let x_1649 : f32 = u_xlat64;
  u_xlat64 = ((x_1646 * x_1647) + x_1649);
  let x_1651 : f32 = u_xlat64;
  let x_1653 : f32 = x_275.unity_LightData.z;
  u_xlat64 = (x_1651 * x_1653);
  let x_1655 : f32 = u_xlat64;
  let x_1658 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat23 = (vec3<f32>(x_1655, x_1655, x_1655) * vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
  let x_1661 : vec4<f32> = u_xlat1;
  let x_1664 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_1661.x, x_1661.y, x_1661.z), vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
  let x_1667 : f32 = u_xlat64;
  u_xlat64 = clamp(x_1667, 0.0f, 1.0f);
  let x_1669 : f32 = u_xlat64;
  let x_1671 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1669, x_1669, x_1669) * x_1671);
  let x_1673 : vec4<f32> = u_xlat0;
  let x_1675 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1673.y, x_1673.z, x_1673.w) * x_1675);
  let x_1678 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1680 : f32 = x_275.unity_LightData.y;
  u_xlat64 = min(x_1678, x_1680);
  let x_1683 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_1683));
  let x_1687 : f32 = u_xlat2.x;
  let x_1690 : f32 = x_76.x_AdditionalShadowFadeParams.x;
  let x_1693 : f32 = x_76.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1687 * x_1690) + x_1693);
  let x_1697 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1697, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1710 : u32 = u_xlatu_loop_1;
    let x_1711 : u32 = u_xlatu64;
    if ((x_1710 < x_1711)) {
    } else {
      break;
    }
    let x_1714 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_1714 >> 2u);
    let x_1717 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1717 & 3u));
    let x_1721 : u32 = u_xlatu67;
    let x_1724 : vec4<f32> = x_275.unity_LightIndices[bitcast<i32>(x_1721)];
    let x_1734 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1739 : vec4<u32> = indexable[x_1734];
    u_xlat67 = dot(x_1724, bitcast<vec4<f32>>(x_1739));
    let x_1743 : f32 = u_xlat67;
    u_xlati67 = i32(x_1743);
    let x_1745 : vec3<f32> = vs_TEXCOORD1;
    let x_1756 : i32 = u_xlati67;
    let x_1758 : vec4<f32> = x_1755.x_AdditionalLightsPosition[x_1756];
    let x_1761 : i32 = u_xlati67;
    let x_1763 : vec4<f32> = x_1755.x_AdditionalLightsPosition[x_1761];
    let x_1765 : vec3<f32> = ((-(x_1745) * vec3<f32>(x_1758.w, x_1758.w, x_1758.w)) + vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
    let x_1766 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
    let x_1769 : vec4<f32> = u_xlat5;
    let x_1771 : vec4<f32> = u_xlat5;
    u_xlat68 = dot(vec3<f32>(x_1769.x, x_1769.y, x_1769.z), vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
    let x_1774 : f32 = u_xlat68;
    u_xlat68 = max(x_1774, 0.00006103515625f);
    let x_1777 : f32 = u_xlat68;
    u_xlat6.x = inverseSqrt(x_1777);
    let x_1780 : vec4<f32> = u_xlat5;
    let x_1782 : vec4<f32> = u_xlat6;
    let x_1784 : vec3<f32> = (vec3<f32>(x_1780.x, x_1780.y, x_1780.z) * vec3<f32>(x_1782.x, x_1782.x, x_1782.x));
    let x_1785 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
    let x_1787 : f32 = u_xlat68;
    u_xlat6.x = (1.0f / x_1787);
    let x_1790 : f32 = u_xlat68;
    let x_1791 : i32 = u_xlati67;
    let x_1793 : f32 = x_1755.x_AdditionalLightsAttenuation[x_1791].x;
    u_xlat68 = (x_1790 * x_1793);
    let x_1795 : f32 = u_xlat68;
    let x_1797 : f32 = u_xlat68;
    u_xlat68 = ((-(x_1795) * x_1797) + 1.0f);
    let x_1800 : f32 = u_xlat68;
    u_xlat68 = max(x_1800, 0.0f);
    let x_1802 : f32 = u_xlat68;
    let x_1803 : f32 = u_xlat68;
    u_xlat68 = (x_1802 * x_1803);
    let x_1805 : f32 = u_xlat68;
    let x_1807 : f32 = u_xlat6.x;
    u_xlat68 = (x_1805 * x_1807);
    let x_1809 : i32 = u_xlati67;
    let x_1811 : vec4<f32> = x_1755.x_AdditionalLightsSpotDir[x_1809];
    let x_1813 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1811.x, x_1811.y, x_1811.z), vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
    let x_1818 : f32 = u_xlat6.x;
    let x_1819 : i32 = u_xlati67;
    let x_1821 : f32 = x_1755.x_AdditionalLightsAttenuation[x_1819].z;
    let x_1823 : i32 = u_xlati67;
    let x_1825 : f32 = x_1755.x_AdditionalLightsAttenuation[x_1823].w;
    u_xlat6.x = ((x_1818 * x_1821) + x_1825);
    let x_1829 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1829, 0.0f, 1.0f);
    let x_1833 : f32 = u_xlat6.x;
    let x_1835 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1833 * x_1835);
    let x_1838 : f32 = u_xlat68;
    let x_1840 : f32 = u_xlat6.x;
    u_xlat68 = (x_1838 * x_1840);
    let x_1844 : i32 = u_xlati67;
    let x_1846 : f32 = x_76.x_AdditionalShadowParams[x_1844].w;
    u_xlati6 = i32(x_1846);
    let x_1851 : i32 = u_xlati6;
    u_xlatb27.x = (x_1851 >= 0i);
    let x_1855 : bool = u_xlatb27.x;
    if (x_1855) {
      let x_1859 : i32 = u_xlati67;
      let x_1861 : f32 = x_76.x_AdditionalShadowParams[x_1859].z;
      u_xlatb27.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1861, x_1861, x_1861, x_1861))));
      let x_1867 : bool = u_xlatb27.x;
      if (x_1867) {
        let x_1870 : vec4<f32> = u_xlat5;
        let x_1873 : vec4<f32> = u_xlat5;
        let x_1876 : vec4<bool> = (abs(vec4<f32>(x_1870.z, x_1870.z, x_1870.y, x_1870.y)) >= abs(vec4<f32>(x_1873.x, x_1873.y, x_1873.x, x_1873.x)));
        u_xlatb27 = vec3<bool>(x_1876.x, x_1876.y, x_1876.z);
        let x_1879 : bool = u_xlatb27.y;
        let x_1881 : bool = u_xlatb27.x;
        u_xlatb27.x = (x_1879 & x_1881);
        let x_1885 : vec4<f32> = u_xlat5;
        let x_1888 : vec4<bool> = (-(vec4<f32>(x_1885.z, x_1885.y, x_1885.x, x_1885.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_1888.x, x_1888.y, x_1888.z);
        let x_1891 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1891);
        let x_1896 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1896);
        let x_1900 : bool = u_xlatb7.z;
        u_xlat48.x = select(0.0f, 1.0f, x_1900);
        let x_1904 : bool = u_xlatb27.z;
        if (x_1904) {
          let x_1910 : f32 = u_xlat7.y;
          x_1906 = x_1910;
        } else {
          let x_1913 : f32 = u_xlat48.x;
          x_1906 = x_1913;
        }
        let x_1914 : f32 = x_1906;
        u_xlat48.x = x_1914;
        let x_1917 : bool = u_xlatb27.x;
        if (x_1917) {
          let x_1922 : f32 = u_xlat7.x;
          x_1918 = x_1922;
        } else {
          let x_1925 : f32 = u_xlat48.x;
          x_1918 = x_1925;
        }
        let x_1926 : f32 = x_1918;
        u_xlat27.x = x_1926;
        let x_1928 : i32 = u_xlati67;
        let x_1930 : f32 = x_76.x_AdditionalShadowParams[x_1928].w;
        u_xlat48.x = trunc(x_1930);
        let x_1934 : f32 = u_xlat27.x;
        let x_1936 : f32 = u_xlat48.x;
        u_xlat27.x = (x_1934 + x_1936);
        let x_1940 : f32 = u_xlat27.x;
        u_xlati6 = i32(x_1940);
      }
      let x_1942 : i32 = u_xlati6;
      u_xlati6 = (x_1942 << bitcast<u32>(2i));
      let x_1944 : vec3<f32> = vs_TEXCOORD1;
      let x_1947 : i32 = u_xlati6;
      let x_1950 : i32 = u_xlati6;
      let x_1954 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_1947 + 1i) / 4i)][((x_1950 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1944.y, x_1944.y, x_1944.y, x_1944.y) * x_1954);
      let x_1956 : i32 = u_xlati6;
      let x_1958 : i32 = u_xlati6;
      let x_1961 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[(x_1956 / 4i)][(x_1958 % 4i)];
      let x_1962 : vec3<f32> = vs_TEXCOORD1;
      let x_1965 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1961 * vec4<f32>(x_1962.x, x_1962.x, x_1962.x, x_1962.x)) + x_1965);
      let x_1967 : i32 = u_xlati6;
      let x_1970 : i32 = u_xlati6;
      let x_1974 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_1967 + 2i) / 4i)][((x_1970 + 2i) % 4i)];
      let x_1975 : vec3<f32> = vs_TEXCOORD1;
      let x_1978 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1974 * vec4<f32>(x_1975.z, x_1975.z, x_1975.z, x_1975.z)) + x_1978);
      let x_1980 : vec4<f32> = u_xlat7;
      let x_1981 : i32 = u_xlati6;
      let x_1984 : i32 = u_xlati6;
      let x_1988 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_1981 + 3i) / 4i)][((x_1984 + 3i) % 4i)];
      u_xlat6 = (x_1980 + x_1988);
      let x_1990 : vec4<f32> = u_xlat6;
      let x_1992 : vec4<f32> = u_xlat6;
      let x_1994 : vec3<f32> = (vec3<f32>(x_1990.x, x_1990.y, x_1990.z) / vec3<f32>(x_1992.w, x_1992.w, x_1992.w));
      let x_1995 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
      let x_1998 : i32 = u_xlati67;
      let x_2000 : f32 = x_76.x_AdditionalShadowParams[x_1998].y;
      u_xlatb69 = (0.0f < x_2000);
      let x_2002 : bool = u_xlatb69;
      if (x_2002) {
        let x_2005 : i32 = u_xlati67;
        let x_2007 : f32 = x_76.x_AdditionalShadowParams[x_2005].y;
        u_xlatb69 = (1.0f == x_2007);
        let x_2009 : bool = u_xlatb69;
        if (x_2009) {
          let x_2012 : vec4<f32> = u_xlat6;
          let x_2016 : vec4<f32> = x_76.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_2012.x, x_2012.y, x_2012.x, x_2012.y) + x_2016);
          let x_2019 : vec4<f32> = u_xlat7;
          let x_2020 : vec2<f32> = vec2<f32>(x_2019.x, x_2019.y);
          let x_2022 : f32 = u_xlat6.z;
          txVec30 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
          let x_2030 : vec3<f32> = txVec30;
          let x_2032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
          u_xlat8.x = x_2032;
          let x_2035 : vec4<f32> = u_xlat7;
          let x_2036 : vec2<f32> = vec2<f32>(x_2035.z, x_2035.w);
          let x_2038 : f32 = u_xlat6.z;
          txVec31 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
          let x_2045 : vec3<f32> = txVec31;
          let x_2047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2045.xy, x_2045.z);
          u_xlat8.y = x_2047;
          let x_2049 : vec4<f32> = u_xlat6;
          let x_2053 : vec4<f32> = x_76.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_2049.x, x_2049.y, x_2049.x, x_2049.y) + x_2053);
          let x_2056 : vec4<f32> = u_xlat7;
          let x_2057 : vec2<f32> = vec2<f32>(x_2056.x, x_2056.y);
          let x_2059 : f32 = u_xlat6.z;
          txVec32 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
          let x_2066 : vec3<f32> = txVec32;
          let x_2068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
          u_xlat8.z = x_2068;
          let x_2071 : vec4<f32> = u_xlat7;
          let x_2072 : vec2<f32> = vec2<f32>(x_2071.z, x_2071.w);
          let x_2074 : f32 = u_xlat6.z;
          txVec33 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
          let x_2081 : vec3<f32> = txVec33;
          let x_2083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2081.xy, x_2081.z);
          u_xlat8.w = x_2083;
          let x_2086 : vec4<f32> = u_xlat8;
          u_xlat69 = dot(x_2086, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2089 : i32 = u_xlati67;
          let x_2091 : f32 = x_76.x_AdditionalShadowParams[x_2089].y;
          u_xlatb7.x = (2.0f == x_2091);
          let x_2095 : bool = u_xlatb7.x;
          if (x_2095) {
            let x_2098 : vec4<f32> = u_xlat6;
            let x_2102 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2105 : vec2<f32> = ((vec2<f32>(x_2098.x, x_2098.y) * vec2<f32>(x_2102.z, x_2102.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2106 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2105.x, x_2105.y, x_2106.z, x_2106.w);
            let x_2108 : vec4<f32> = u_xlat7;
            let x_2110 : vec2<f32> = floor(vec2<f32>(x_2108.x, x_2108.y));
            let x_2111 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2110.x, x_2110.y, x_2111.z, x_2111.w);
            let x_2113 : vec4<f32> = u_xlat6;
            let x_2116 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2119 : vec4<f32> = u_xlat7;
            u_xlat49 = ((vec2<f32>(x_2113.x, x_2113.y) * vec2<f32>(x_2116.z, x_2116.w)) + -(vec2<f32>(x_2119.x, x_2119.y)));
            let x_2123 : vec2<f32> = u_xlat49;
            u_xlat8 = (vec4<f32>(x_2123.x, x_2123.x, x_2123.y, x_2123.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2126 : vec4<f32> = u_xlat8;
            let x_2128 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2126.x, x_2126.x, x_2126.z, x_2126.z) * vec4<f32>(x_2128.x, x_2128.x, x_2128.z, x_2128.z));
            let x_2131 : vec4<f32> = u_xlat9;
            let x_2133 : vec2<f32> = (vec2<f32>(x_2131.y, x_2131.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2134 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2133.x, x_2134.y, x_2133.y, x_2134.w);
            let x_2136 : vec4<f32> = u_xlat9;
            let x_2139 : vec2<f32> = u_xlat49;
            let x_2141 : vec2<f32> = ((vec2<f32>(x_2136.x, x_2136.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2139));
            let x_2142 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2141.x, x_2141.y, x_2142.z, x_2142.w);
            let x_2145 : vec2<f32> = u_xlat49;
            u_xlat51 = (-(x_2145) + vec2<f32>(1.0f, 1.0f));
            let x_2148 : vec2<f32> = u_xlat49;
            let x_2149 : vec2<f32> = min(x_2148, vec2<f32>(0.0f, 0.0f));
            let x_2150 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2149.x, x_2149.y, x_2150.z, x_2150.w);
            let x_2152 : vec4<f32> = u_xlat10;
            let x_2155 : vec4<f32> = u_xlat10;
            let x_2158 : vec2<f32> = u_xlat51;
            let x_2159 : vec2<f32> = ((-(vec2<f32>(x_2152.x, x_2152.y)) * vec2<f32>(x_2155.x, x_2155.y)) + x_2158);
            let x_2160 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
            let x_2162 : vec2<f32> = u_xlat49;
            u_xlat49 = max(x_2162, vec2<f32>(0.0f, 0.0f));
            let x_2164 : vec2<f32> = u_xlat49;
            let x_2166 : vec2<f32> = u_xlat49;
            let x_2168 : vec4<f32> = u_xlat8;
            u_xlat49 = ((-(x_2164) * x_2166) + vec2<f32>(x_2168.y, x_2168.w));
            let x_2171 : vec4<f32> = u_xlat10;
            let x_2173 : vec2<f32> = (vec2<f32>(x_2171.x, x_2171.y) + vec2<f32>(1.0f, 1.0f));
            let x_2174 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2173.x, x_2173.y, x_2174.z, x_2174.w);
            let x_2176 : vec2<f32> = u_xlat49;
            u_xlat49 = (x_2176 + vec2<f32>(1.0f, 1.0f));
            let x_2178 : vec4<f32> = u_xlat9;
            let x_2180 : vec2<f32> = (vec2<f32>(x_2178.x, x_2178.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2181 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
            let x_2183 : vec2<f32> = u_xlat51;
            let x_2184 : vec2<f32> = (x_2183 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2185 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2184.x, x_2184.y, x_2185.z, x_2185.w);
            let x_2187 : vec4<f32> = u_xlat10;
            let x_2189 : vec2<f32> = (vec2<f32>(x_2187.x, x_2187.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2190 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2189.x, x_2189.y, x_2190.z, x_2190.w);
            let x_2192 : vec2<f32> = u_xlat49;
            let x_2193 : vec2<f32> = (x_2192 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2194 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
            let x_2196 : vec4<f32> = u_xlat8;
            u_xlat49 = (vec2<f32>(x_2196.y, x_2196.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2200 : f32 = u_xlat10.x;
            u_xlat11.z = x_2200;
            let x_2203 : f32 = u_xlat49.x;
            u_xlat11.w = x_2203;
            let x_2206 : f32 = u_xlat12.x;
            u_xlat9.z = x_2206;
            let x_2209 : f32 = u_xlat8.x;
            u_xlat9.w = x_2209;
            let x_2211 : vec4<f32> = u_xlat9;
            let x_2213 : vec4<f32> = u_xlat11;
            u_xlat13 = (vec4<f32>(x_2211.z, x_2211.w, x_2211.x, x_2211.z) + vec4<f32>(x_2213.z, x_2213.w, x_2213.x, x_2213.z));
            let x_2217 : f32 = u_xlat11.y;
            u_xlat10.z = x_2217;
            let x_2220 : f32 = u_xlat49.y;
            u_xlat10.w = x_2220;
            let x_2223 : f32 = u_xlat9.y;
            u_xlat12.z = x_2223;
            let x_2226 : f32 = u_xlat8.z;
            u_xlat12.w = x_2226;
            let x_2228 : vec4<f32> = u_xlat10;
            let x_2230 : vec4<f32> = u_xlat12;
            let x_2232 : vec3<f32> = (vec3<f32>(x_2228.z, x_2228.y, x_2228.w) + vec3<f32>(x_2230.z, x_2230.y, x_2230.w));
            let x_2233 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
            let x_2235 : vec4<f32> = u_xlat9;
            let x_2237 : vec4<f32> = u_xlat13;
            let x_2239 : vec3<f32> = (vec3<f32>(x_2235.x, x_2235.z, x_2235.w) / vec3<f32>(x_2237.z, x_2237.w, x_2237.y));
            let x_2240 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
            let x_2242 : vec4<f32> = u_xlat9;
            let x_2244 : vec3<f32> = (vec3<f32>(x_2242.x, x_2242.y, x_2242.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2245 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
            let x_2247 : vec4<f32> = u_xlat12;
            let x_2249 : vec4<f32> = u_xlat8;
            let x_2251 : vec3<f32> = (vec3<f32>(x_2247.z, x_2247.y, x_2247.w) / vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
            let x_2252 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
            let x_2254 : vec4<f32> = u_xlat10;
            let x_2256 : vec3<f32> = (vec3<f32>(x_2254.x, x_2254.y, x_2254.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2257 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
            let x_2259 : vec4<f32> = u_xlat9;
            let x_2262 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2264 : vec3<f32> = (vec3<f32>(x_2259.y, x_2259.x, x_2259.z) * vec3<f32>(x_2262.x, x_2262.x, x_2262.x));
            let x_2265 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
            let x_2267 : vec4<f32> = u_xlat10;
            let x_2270 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2272 : vec3<f32> = (vec3<f32>(x_2267.x, x_2267.y, x_2267.z) * vec3<f32>(x_2270.y, x_2270.y, x_2270.y));
            let x_2273 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
            let x_2276 : f32 = u_xlat10.x;
            u_xlat9.w = x_2276;
            let x_2278 : vec4<f32> = u_xlat7;
            let x_2281 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2284 : vec4<f32> = u_xlat9;
            u_xlat11 = ((vec4<f32>(x_2278.x, x_2278.y, x_2278.x, x_2278.y) * vec4<f32>(x_2281.x, x_2281.y, x_2281.x, x_2281.y)) + vec4<f32>(x_2284.y, x_2284.w, x_2284.x, x_2284.w));
            let x_2287 : vec4<f32> = u_xlat7;
            let x_2290 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2293 : vec4<f32> = u_xlat9;
            u_xlat49 = ((vec2<f32>(x_2287.x, x_2287.y) * vec2<f32>(x_2290.x, x_2290.y)) + vec2<f32>(x_2293.z, x_2293.w));
            let x_2297 : f32 = u_xlat9.y;
            u_xlat10.w = x_2297;
            let x_2299 : vec4<f32> = u_xlat10;
            let x_2300 : vec2<f32> = vec2<f32>(x_2299.y, x_2299.z);
            let x_2301 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2301.x, x_2300.x, x_2301.z, x_2300.y);
            let x_2303 : vec4<f32> = u_xlat7;
            let x_2306 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2309 : vec4<f32> = u_xlat9;
            u_xlat12 = ((vec4<f32>(x_2303.x, x_2303.y, x_2303.x, x_2303.y) * vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y)) + vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2309.y));
            let x_2312 : vec4<f32> = u_xlat7;
            let x_2315 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2318 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2312.x, x_2312.y, x_2312.x, x_2312.y) * vec4<f32>(x_2315.x, x_2315.y, x_2315.x, x_2315.y)) + vec4<f32>(x_2318.w, x_2318.y, x_2318.w, x_2318.z));
            let x_2321 : vec4<f32> = u_xlat7;
            let x_2324 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2327 : vec4<f32> = u_xlat9;
            u_xlat9 = ((vec4<f32>(x_2321.x, x_2321.y, x_2321.x, x_2321.y) * vec4<f32>(x_2324.x, x_2324.y, x_2324.x, x_2324.y)) + vec4<f32>(x_2327.x, x_2327.w, x_2327.z, x_2327.w));
            let x_2330 : vec4<f32> = u_xlat8;
            let x_2332 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2330.x, x_2330.x, x_2330.x, x_2330.y) * vec4<f32>(x_2332.z, x_2332.w, x_2332.y, x_2332.z));
            let x_2335 : vec4<f32> = u_xlat8;
            let x_2337 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2335.y, x_2335.y, x_2335.z, x_2335.z) * x_2337);
            let x_2340 : f32 = u_xlat8.z;
            let x_2342 : f32 = u_xlat13.y;
            u_xlat7.x = (x_2340 * x_2342);
            let x_2346 : vec4<f32> = u_xlat11;
            let x_2347 : vec2<f32> = vec2<f32>(x_2346.x, x_2346.y);
            let x_2349 : f32 = u_xlat6.z;
            txVec34 = vec3<f32>(x_2347.x, x_2347.y, x_2349);
            let x_2357 : vec3<f32> = txVec34;
            let x_2359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2357.xy, x_2357.z);
            u_xlat28 = x_2359;
            let x_2361 : vec4<f32> = u_xlat11;
            let x_2362 : vec2<f32> = vec2<f32>(x_2361.z, x_2361.w);
            let x_2364 : f32 = u_xlat6.z;
            txVec35 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
            let x_2371 : vec3<f32> = txVec35;
            let x_2373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
            u_xlat8.x = x_2373;
            let x_2376 : f32 = u_xlat8.x;
            let x_2378 : f32 = u_xlat14.y;
            u_xlat8.x = (x_2376 * x_2378);
            let x_2382 : f32 = u_xlat14.x;
            let x_2383 : f32 = u_xlat28;
            let x_2386 : f32 = u_xlat8.x;
            u_xlat28 = ((x_2382 * x_2383) + x_2386);
            let x_2389 : vec2<f32> = u_xlat49;
            let x_2391 : f32 = u_xlat6.z;
            txVec36 = vec3<f32>(x_2389.x, x_2389.y, x_2391);
            let x_2398 : vec3<f32> = txVec36;
            let x_2400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2398.xy, x_2398.z);
            u_xlat49.x = x_2400;
            let x_2403 : f32 = u_xlat14.z;
            let x_2405 : f32 = u_xlat49.x;
            let x_2407 : f32 = u_xlat28;
            u_xlat28 = ((x_2403 * x_2405) + x_2407);
            let x_2410 : vec4<f32> = u_xlat10;
            let x_2411 : vec2<f32> = vec2<f32>(x_2410.x, x_2410.y);
            let x_2413 : f32 = u_xlat6.z;
            txVec37 = vec3<f32>(x_2411.x, x_2411.y, x_2413);
            let x_2420 : vec3<f32> = txVec37;
            let x_2422 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2420.xy, x_2420.z);
            u_xlat49.x = x_2422;
            let x_2425 : f32 = u_xlat14.w;
            let x_2427 : f32 = u_xlat49.x;
            let x_2429 : f32 = u_xlat28;
            u_xlat28 = ((x_2425 * x_2427) + x_2429);
            let x_2432 : vec4<f32> = u_xlat12;
            let x_2433 : vec2<f32> = vec2<f32>(x_2432.x, x_2432.y);
            let x_2435 : f32 = u_xlat6.z;
            txVec38 = vec3<f32>(x_2433.x, x_2433.y, x_2435);
            let x_2442 : vec3<f32> = txVec38;
            let x_2444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2442.xy, x_2442.z);
            u_xlat49.x = x_2444;
            let x_2447 : f32 = u_xlat15.x;
            let x_2449 : f32 = u_xlat49.x;
            let x_2451 : f32 = u_xlat28;
            u_xlat28 = ((x_2447 * x_2449) + x_2451);
            let x_2454 : vec4<f32> = u_xlat12;
            let x_2455 : vec2<f32> = vec2<f32>(x_2454.z, x_2454.w);
            let x_2457 : f32 = u_xlat6.z;
            txVec39 = vec3<f32>(x_2455.x, x_2455.y, x_2457);
            let x_2464 : vec3<f32> = txVec39;
            let x_2466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2464.xy, x_2464.z);
            u_xlat49.x = x_2466;
            let x_2469 : f32 = u_xlat15.y;
            let x_2471 : f32 = u_xlat49.x;
            let x_2473 : f32 = u_xlat28;
            u_xlat28 = ((x_2469 * x_2471) + x_2473);
            let x_2476 : vec4<f32> = u_xlat10;
            let x_2477 : vec2<f32> = vec2<f32>(x_2476.z, x_2476.w);
            let x_2479 : f32 = u_xlat6.z;
            txVec40 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
            let x_2486 : vec3<f32> = txVec40;
            let x_2488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2486.xy, x_2486.z);
            u_xlat49.x = x_2488;
            let x_2491 : f32 = u_xlat15.z;
            let x_2493 : f32 = u_xlat49.x;
            let x_2495 : f32 = u_xlat28;
            u_xlat28 = ((x_2491 * x_2493) + x_2495);
            let x_2498 : vec4<f32> = u_xlat9;
            let x_2499 : vec2<f32> = vec2<f32>(x_2498.x, x_2498.y);
            let x_2501 : f32 = u_xlat6.z;
            txVec41 = vec3<f32>(x_2499.x, x_2499.y, x_2501);
            let x_2508 : vec3<f32> = txVec41;
            let x_2510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2508.xy, x_2508.z);
            u_xlat49.x = x_2510;
            let x_2513 : f32 = u_xlat15.w;
            let x_2515 : f32 = u_xlat49.x;
            let x_2517 : f32 = u_xlat28;
            u_xlat28 = ((x_2513 * x_2515) + x_2517);
            let x_2520 : vec4<f32> = u_xlat9;
            let x_2521 : vec2<f32> = vec2<f32>(x_2520.z, x_2520.w);
            let x_2523 : f32 = u_xlat6.z;
            txVec42 = vec3<f32>(x_2521.x, x_2521.y, x_2523);
            let x_2530 : vec3<f32> = txVec42;
            let x_2532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2530.xy, x_2530.z);
            u_xlat49.x = x_2532;
            let x_2535 : f32 = u_xlat7.x;
            let x_2537 : f32 = u_xlat49.x;
            let x_2539 : f32 = u_xlat28;
            u_xlat69 = ((x_2535 * x_2537) + x_2539);
          } else {
            let x_2542 : vec4<f32> = u_xlat6;
            let x_2545 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2548 : vec2<f32> = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2545.z, x_2545.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2549 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2548.x, x_2548.y, x_2549.z, x_2549.w);
            let x_2551 : vec4<f32> = u_xlat7;
            let x_2553 : vec2<f32> = floor(vec2<f32>(x_2551.x, x_2551.y));
            let x_2554 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2553.x, x_2553.y, x_2554.z, x_2554.w);
            let x_2556 : vec4<f32> = u_xlat6;
            let x_2559 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2562 : vec4<f32> = u_xlat7;
            u_xlat49 = ((vec2<f32>(x_2556.x, x_2556.y) * vec2<f32>(x_2559.z, x_2559.w)) + -(vec2<f32>(x_2562.x, x_2562.y)));
            let x_2566 : vec2<f32> = u_xlat49;
            u_xlat8 = (vec4<f32>(x_2566.x, x_2566.x, x_2566.y, x_2566.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2569 : vec4<f32> = u_xlat8;
            let x_2571 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2569.x, x_2569.x, x_2569.z, x_2569.z) * vec4<f32>(x_2571.x, x_2571.x, x_2571.z, x_2571.z));
            let x_2574 : vec4<f32> = u_xlat9;
            let x_2576 : vec2<f32> = (vec2<f32>(x_2574.y, x_2574.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2577 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2577.x, x_2576.x, x_2577.z, x_2576.y);
            let x_2579 : vec4<f32> = u_xlat9;
            let x_2582 : vec2<f32> = u_xlat49;
            let x_2584 : vec2<f32> = ((vec2<f32>(x_2579.x, x_2579.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2582));
            let x_2585 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2584.x, x_2585.y, x_2584.y, x_2585.w);
            let x_2587 : vec2<f32> = u_xlat49;
            let x_2589 : vec2<f32> = (-(x_2587) + vec2<f32>(1.0f, 1.0f));
            let x_2590 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2589.x, x_2589.y, x_2590.z, x_2590.w);
            let x_2592 : vec2<f32> = u_xlat49;
            u_xlat51 = min(x_2592, vec2<f32>(0.0f, 0.0f));
            let x_2594 : vec2<f32> = u_xlat51;
            let x_2596 : vec2<f32> = u_xlat51;
            let x_2598 : vec4<f32> = u_xlat9;
            let x_2600 : vec2<f32> = ((-(x_2594) * x_2596) + vec2<f32>(x_2598.x, x_2598.y));
            let x_2601 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2603 : vec2<f32> = u_xlat49;
            u_xlat51 = max(x_2603, vec2<f32>(0.0f, 0.0f));
            let x_2606 : vec2<f32> = u_xlat51;
            let x_2608 : vec2<f32> = u_xlat51;
            let x_2610 : vec4<f32> = u_xlat8;
            let x_2612 : vec2<f32> = ((-(x_2606) * x_2608) + vec2<f32>(x_2610.y, x_2610.w));
            let x_2613 : vec3<f32> = u_xlat29;
            u_xlat29 = vec3<f32>(x_2612.x, x_2613.y, x_2612.y);
            let x_2615 : vec4<f32> = u_xlat9;
            let x_2617 : vec2<f32> = (vec2<f32>(x_2615.x, x_2615.y) + vec2<f32>(2.0f, 2.0f));
            let x_2618 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2617.x, x_2617.y, x_2618.z, x_2618.w);
            let x_2620 : vec3<f32> = u_xlat29;
            let x_2622 : vec2<f32> = (vec2<f32>(x_2620.x, x_2620.z) + vec2<f32>(2.0f, 2.0f));
            let x_2623 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2623.x, x_2622.x, x_2623.z, x_2622.y);
            let x_2626 : f32 = u_xlat8.y;
            u_xlat11.z = (x_2626 * 0.08163200318813323975f);
            let x_2629 : vec4<f32> = u_xlat8;
            let x_2631 : vec3<f32> = (vec3<f32>(x_2629.z, x_2629.x, x_2629.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2632 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
            let x_2634 : vec4<f32> = u_xlat9;
            let x_2636 : vec2<f32> = (vec2<f32>(x_2634.x, x_2634.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2637 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2636.x, x_2636.y, x_2637.z, x_2637.w);
            let x_2640 : f32 = u_xlat12.y;
            u_xlat11.x = x_2640;
            let x_2642 : vec2<f32> = u_xlat49;
            let x_2645 : vec2<f32> = ((vec2<f32>(x_2642.x, x_2642.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2646 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2646.x, x_2645.x, x_2646.z, x_2645.y);
            let x_2648 : vec2<f32> = u_xlat49;
            let x_2651 : vec2<f32> = ((vec2<f32>(x_2648.x, x_2648.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2652 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2651.x, x_2652.y, x_2651.y, x_2652.w);
            let x_2655 : f32 = u_xlat8.x;
            u_xlat9.y = x_2655;
            let x_2658 : f32 = u_xlat10.y;
            u_xlat9.w = x_2658;
            let x_2660 : vec4<f32> = u_xlat9;
            let x_2661 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2660 + x_2661);
            let x_2663 : vec2<f32> = u_xlat49;
            let x_2666 : vec2<f32> = ((vec2<f32>(x_2663.y, x_2663.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2667 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2667.x, x_2666.x, x_2667.z, x_2666.y);
            let x_2669 : vec2<f32> = u_xlat49;
            let x_2672 : vec2<f32> = ((vec2<f32>(x_2669.y, x_2669.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2673 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2672.x, x_2673.y, x_2672.y, x_2673.w);
            let x_2676 : f32 = u_xlat8.y;
            u_xlat10.y = x_2676;
            let x_2678 : vec4<f32> = u_xlat10;
            let x_2679 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2678 + x_2679);
            let x_2681 : vec4<f32> = u_xlat9;
            let x_2682 : vec4<f32> = u_xlat11;
            u_xlat9 = (x_2681 / x_2682);
            let x_2684 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2684 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2686 : vec4<f32> = u_xlat10;
            let x_2687 : vec4<f32> = u_xlat8;
            u_xlat10 = (x_2686 / x_2687);
            let x_2689 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2689 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2691 : vec4<f32> = u_xlat9;
            let x_2694 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2691.w, x_2691.x, x_2691.y, x_2691.z) * vec4<f32>(x_2694.x, x_2694.x, x_2694.x, x_2694.x));
            let x_2697 : vec4<f32> = u_xlat10;
            let x_2700 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2697.x, x_2697.w, x_2697.y, x_2697.z) * vec4<f32>(x_2700.y, x_2700.y, x_2700.y, x_2700.y));
            let x_2703 : vec4<f32> = u_xlat9;
            let x_2704 : vec3<f32> = vec3<f32>(x_2703.y, x_2703.z, x_2703.w);
            let x_2705 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2704.x, x_2705.y, x_2704.y, x_2704.z);
            let x_2708 : f32 = u_xlat10.x;
            u_xlat12.y = x_2708;
            let x_2710 : vec4<f32> = u_xlat7;
            let x_2713 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2716 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2710.x, x_2710.y, x_2710.x, x_2710.y) * vec4<f32>(x_2713.x, x_2713.y, x_2713.x, x_2713.y)) + vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2716.y));
            let x_2719 : vec4<f32> = u_xlat7;
            let x_2722 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2725 : vec4<f32> = u_xlat12;
            u_xlat49 = ((vec2<f32>(x_2719.x, x_2719.y) * vec2<f32>(x_2722.x, x_2722.y)) + vec2<f32>(x_2725.w, x_2725.y));
            let x_2729 : f32 = u_xlat12.y;
            u_xlat9.y = x_2729;
            let x_2732 : f32 = u_xlat10.z;
            u_xlat12.y = x_2732;
            let x_2734 : vec4<f32> = u_xlat7;
            let x_2737 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2740 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2734.x, x_2734.y, x_2734.x, x_2734.y) * vec4<f32>(x_2737.x, x_2737.y, x_2737.x, x_2737.y)) + vec4<f32>(x_2740.x, x_2740.y, x_2740.z, x_2740.y));
            let x_2743 : vec4<f32> = u_xlat7;
            let x_2746 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2749 : vec4<f32> = u_xlat12;
            let x_2751 : vec2<f32> = ((vec2<f32>(x_2743.x, x_2743.y) * vec2<f32>(x_2746.x, x_2746.y)) + vec2<f32>(x_2749.w, x_2749.y));
            let x_2752 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2751.x, x_2751.y, x_2752.z, x_2752.w);
            let x_2755 : f32 = u_xlat12.y;
            u_xlat9.z = x_2755;
            let x_2757 : vec4<f32> = u_xlat7;
            let x_2760 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2763 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2757.x, x_2757.y, x_2757.x, x_2757.y) * vec4<f32>(x_2760.x, x_2760.y, x_2760.x, x_2760.y)) + vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.z));
            let x_2767 : f32 = u_xlat10.w;
            u_xlat12.y = x_2767;
            let x_2769 : vec4<f32> = u_xlat7;
            let x_2772 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2775 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.y) * vec4<f32>(x_2772.x, x_2772.y, x_2772.x, x_2772.y)) + vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2775.y));
            let x_2779 : vec4<f32> = u_xlat7;
            let x_2782 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2785 : vec4<f32> = u_xlat12;
            u_xlat30 = ((vec2<f32>(x_2779.x, x_2779.y) * vec2<f32>(x_2782.x, x_2782.y)) + vec2<f32>(x_2785.w, x_2785.y));
            let x_2789 : f32 = u_xlat12.y;
            u_xlat9.w = x_2789;
            let x_2792 : vec4<f32> = u_xlat7;
            let x_2795 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2798 : vec4<f32> = u_xlat9;
            u_xlat57 = ((vec2<f32>(x_2792.x, x_2792.y) * vec2<f32>(x_2795.x, x_2795.y)) + vec2<f32>(x_2798.x, x_2798.w));
            let x_2801 : vec4<f32> = u_xlat12;
            let x_2802 : vec3<f32> = vec3<f32>(x_2801.x, x_2801.z, x_2801.w);
            let x_2803 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2802.x, x_2803.y, x_2802.y, x_2802.z);
            let x_2805 : vec4<f32> = u_xlat7;
            let x_2808 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2811 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.y) * vec4<f32>(x_2808.x, x_2808.y, x_2808.x, x_2808.y)) + vec4<f32>(x_2811.x, x_2811.y, x_2811.z, x_2811.y));
            let x_2815 : vec4<f32> = u_xlat7;
            let x_2818 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2821 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2815.x, x_2815.y) * vec2<f32>(x_2818.x, x_2818.y)) + vec2<f32>(x_2821.w, x_2821.y));
            let x_2825 : f32 = u_xlat9.x;
            u_xlat10.x = x_2825;
            let x_2827 : vec4<f32> = u_xlat7;
            let x_2830 : vec4<f32> = x_76.x_AdditionalShadowmapSize;
            let x_2833 : vec4<f32> = u_xlat10;
            let x_2835 : vec2<f32> = ((vec2<f32>(x_2827.x, x_2827.y) * vec2<f32>(x_2830.x, x_2830.y)) + vec2<f32>(x_2833.x, x_2833.y));
            let x_2836 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
            let x_2839 : vec4<f32> = u_xlat8;
            let x_2841 : vec4<f32> = u_xlat11;
            u_xlat18 = (vec4<f32>(x_2839.x, x_2839.x, x_2839.x, x_2839.x) * x_2841);
            let x_2844 : vec4<f32> = u_xlat8;
            let x_2846 : vec4<f32> = u_xlat11;
            u_xlat19 = (vec4<f32>(x_2844.y, x_2844.y, x_2844.y, x_2844.y) * x_2846);
            let x_2849 : vec4<f32> = u_xlat8;
            let x_2851 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2849.z, x_2849.z, x_2849.z, x_2849.z) * x_2851);
            let x_2853 : vec4<f32> = u_xlat8;
            let x_2855 : vec4<f32> = u_xlat11;
            u_xlat8 = (vec4<f32>(x_2853.w, x_2853.w, x_2853.w, x_2853.w) * x_2855);
            let x_2858 : vec4<f32> = u_xlat13;
            let x_2859 : vec2<f32> = vec2<f32>(x_2858.x, x_2858.y);
            let x_2861 : f32 = u_xlat6.z;
            txVec43 = vec3<f32>(x_2859.x, x_2859.y, x_2861);
            let x_2868 : vec3<f32> = txVec43;
            let x_2870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
            u_xlat9.x = x_2870;
            let x_2873 : vec4<f32> = u_xlat13;
            let x_2874 : vec2<f32> = vec2<f32>(x_2873.z, x_2873.w);
            let x_2876 : f32 = u_xlat6.z;
            txVec44 = vec3<f32>(x_2874.x, x_2874.y, x_2876);
            let x_2884 : vec3<f32> = txVec44;
            let x_2886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2884.xy, x_2884.z);
            u_xlat72 = x_2886;
            let x_2887 : f32 = u_xlat72;
            let x_2889 : f32 = u_xlat18.y;
            u_xlat72 = (x_2887 * x_2889);
            let x_2892 : f32 = u_xlat18.x;
            let x_2894 : f32 = u_xlat9.x;
            let x_2896 : f32 = u_xlat72;
            u_xlat9.x = ((x_2892 * x_2894) + x_2896);
            let x_2900 : vec2<f32> = u_xlat49;
            let x_2902 : f32 = u_xlat6.z;
            txVec45 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
            let x_2909 : vec3<f32> = txVec45;
            let x_2911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2909.xy, x_2909.z);
            u_xlat49.x = x_2911;
            let x_2914 : f32 = u_xlat18.z;
            let x_2916 : f32 = u_xlat49.x;
            let x_2919 : f32 = u_xlat9.x;
            u_xlat49.x = ((x_2914 * x_2916) + x_2919);
            let x_2923 : vec4<f32> = u_xlat16;
            let x_2924 : vec2<f32> = vec2<f32>(x_2923.x, x_2923.y);
            let x_2926 : f32 = u_xlat6.z;
            txVec46 = vec3<f32>(x_2924.x, x_2924.y, x_2926);
            let x_2934 : vec3<f32> = txVec46;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat70 = x_2936;
            let x_2938 : f32 = u_xlat18.w;
            let x_2939 : f32 = u_xlat70;
            let x_2942 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2938 * x_2939) + x_2942);
            let x_2946 : vec4<f32> = u_xlat14;
            let x_2947 : vec2<f32> = vec2<f32>(x_2946.x, x_2946.y);
            let x_2949 : f32 = u_xlat6.z;
            txVec47 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
            let x_2956 : vec3<f32> = txVec47;
            let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
            u_xlat70 = x_2958;
            let x_2960 : f32 = u_xlat19.x;
            let x_2961 : f32 = u_xlat70;
            let x_2964 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2960 * x_2961) + x_2964);
            let x_2968 : vec4<f32> = u_xlat14;
            let x_2969 : vec2<f32> = vec2<f32>(x_2968.z, x_2968.w);
            let x_2971 : f32 = u_xlat6.z;
            txVec48 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
            let x_2978 : vec3<f32> = txVec48;
            let x_2980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
            u_xlat70 = x_2980;
            let x_2982 : f32 = u_xlat19.y;
            let x_2983 : f32 = u_xlat70;
            let x_2986 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_2982 * x_2983) + x_2986);
            let x_2990 : vec4<f32> = u_xlat15;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.x, x_2990.y);
            let x_2993 : f32 = u_xlat6.z;
            txVec49 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec49;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat70 = x_3002;
            let x_3004 : f32 = u_xlat19.z;
            let x_3005 : f32 = u_xlat70;
            let x_3008 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3004 * x_3005) + x_3008);
            let x_3012 : vec4<f32> = u_xlat16;
            let x_3013 : vec2<f32> = vec2<f32>(x_3012.z, x_3012.w);
            let x_3015 : f32 = u_xlat6.z;
            txVec50 = vec3<f32>(x_3013.x, x_3013.y, x_3015);
            let x_3022 : vec3<f32> = txVec50;
            let x_3024 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3022.xy, x_3022.z);
            u_xlat70 = x_3024;
            let x_3026 : f32 = u_xlat19.w;
            let x_3027 : f32 = u_xlat70;
            let x_3030 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3026 * x_3027) + x_3030);
            let x_3034 : vec4<f32> = u_xlat17;
            let x_3035 : vec2<f32> = vec2<f32>(x_3034.x, x_3034.y);
            let x_3037 : f32 = u_xlat6.z;
            txVec51 = vec3<f32>(x_3035.x, x_3035.y, x_3037);
            let x_3044 : vec3<f32> = txVec51;
            let x_3046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3044.xy, x_3044.z);
            u_xlat70 = x_3046;
            let x_3048 : f32 = u_xlat20.x;
            let x_3049 : f32 = u_xlat70;
            let x_3052 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3048 * x_3049) + x_3052);
            let x_3056 : vec4<f32> = u_xlat17;
            let x_3057 : vec2<f32> = vec2<f32>(x_3056.z, x_3056.w);
            let x_3059 : f32 = u_xlat6.z;
            txVec52 = vec3<f32>(x_3057.x, x_3057.y, x_3059);
            let x_3066 : vec3<f32> = txVec52;
            let x_3068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3066.xy, x_3066.z);
            u_xlat70 = x_3068;
            let x_3070 : f32 = u_xlat20.y;
            let x_3071 : f32 = u_xlat70;
            let x_3074 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3070 * x_3071) + x_3074);
            let x_3078 : vec2<f32> = u_xlat30;
            let x_3080 : f32 = u_xlat6.z;
            txVec53 = vec3<f32>(x_3078.x, x_3078.y, x_3080);
            let x_3087 : vec3<f32> = txVec53;
            let x_3089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
            u_xlat70 = x_3089;
            let x_3091 : f32 = u_xlat20.z;
            let x_3092 : f32 = u_xlat70;
            let x_3095 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3091 * x_3092) + x_3095);
            let x_3099 : vec2<f32> = u_xlat57;
            let x_3101 : f32 = u_xlat6.z;
            txVec54 = vec3<f32>(x_3099.x, x_3099.y, x_3101);
            let x_3108 : vec3<f32> = txVec54;
            let x_3110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3108.xy, x_3108.z);
            u_xlat70 = x_3110;
            let x_3112 : f32 = u_xlat20.w;
            let x_3113 : f32 = u_xlat70;
            let x_3116 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3112 * x_3113) + x_3116);
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3121 : vec2<f32> = vec2<f32>(x_3120.x, x_3120.y);
            let x_3123 : f32 = u_xlat6.z;
            txVec55 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
            let x_3130 : vec3<f32> = txVec55;
            let x_3132 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
            u_xlat70 = x_3132;
            let x_3134 : f32 = u_xlat8.x;
            let x_3135 : f32 = u_xlat70;
            let x_3138 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3134 * x_3135) + x_3138);
            let x_3142 : vec4<f32> = u_xlat12;
            let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
            let x_3145 : f32 = u_xlat6.z;
            txVec56 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
            let x_3152 : vec3<f32> = txVec56;
            let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
            u_xlat70 = x_3154;
            let x_3156 : f32 = u_xlat8.y;
            let x_3157 : f32 = u_xlat70;
            let x_3160 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3156 * x_3157) + x_3160);
            let x_3164 : vec2<f32> = u_xlat52;
            let x_3166 : f32 = u_xlat6.z;
            txVec57 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec57;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat70 = x_3175;
            let x_3177 : f32 = u_xlat8.z;
            let x_3178 : f32 = u_xlat70;
            let x_3181 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3177 * x_3178) + x_3181);
            let x_3185 : vec4<f32> = u_xlat7;
            let x_3186 : vec2<f32> = vec2<f32>(x_3185.x, x_3185.y);
            let x_3188 : f32 = u_xlat6.z;
            txVec58 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
            let x_3195 : vec3<f32> = txVec58;
            let x_3197 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
            u_xlat7.x = x_3197;
            let x_3200 : f32 = u_xlat8.w;
            let x_3202 : f32 = u_xlat7.x;
            let x_3205 : f32 = u_xlat49.x;
            u_xlat69 = ((x_3200 * x_3202) + x_3205);
          }
        }
      } else {
        let x_3209 : vec4<f32> = u_xlat6;
        let x_3210 : vec2<f32> = vec2<f32>(x_3209.x, x_3209.y);
        let x_3212 : f32 = u_xlat6.z;
        txVec59 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
        let x_3219 : vec3<f32> = txVec59;
        let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
        u_xlat69 = x_3221;
      }
      let x_3222 : i32 = u_xlati67;
      let x_3224 : f32 = x_76.x_AdditionalShadowParams[x_3222].x;
      u_xlat6.x = (1.0f + -(x_3224));
      let x_3228 : f32 = u_xlat69;
      let x_3229 : i32 = u_xlati67;
      let x_3231 : f32 = x_76.x_AdditionalShadowParams[x_3229].x;
      let x_3234 : f32 = u_xlat6.x;
      u_xlat6.x = ((x_3228 * x_3231) + x_3234);
      let x_3238 : f32 = u_xlat6.z;
      u_xlatb27.x = (0.0f >= x_3238);
      let x_3243 : f32 = u_xlat6.z;
      u_xlatb48 = (x_3243 >= 1.0f);
      let x_3245 : bool = u_xlatb48;
      let x_3247 : bool = u_xlatb27.x;
      u_xlatb27.x = (x_3245 | x_3247);
      let x_3251 : bool = u_xlatb27.x;
      if (x_3251) {
        x_3252 = 1.0f;
      } else {
        let x_3257 : f32 = u_xlat6.x;
        x_3252 = x_3257;
      }
      let x_3258 : f32 = x_3252;
      u_xlat6.x = x_3258;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_3263 : f32 = u_xlat6.x;
    u_xlat27.x = (-(x_3263) + 1.0f);
    let x_3268 : f32 = u_xlat2.x;
    let x_3270 : f32 = u_xlat27.x;
    let x_3273 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_3268 * x_3270) + x_3273);
    let x_3276 : f32 = u_xlat68;
    let x_3278 : f32 = u_xlat6.x;
    u_xlat68 = (x_3276 * x_3278);
    let x_3280 : f32 = u_xlat68;
    let x_3282 : i32 = u_xlati67;
    let x_3284 : vec4<f32> = x_1755.x_AdditionalLightsColor[x_3282];
    let x_3286 : vec3<f32> = (vec3<f32>(x_3280, x_3280, x_3280) * vec3<f32>(x_3284.x, x_3284.y, x_3284.z));
    let x_3287 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3286.x, x_3286.y, x_3286.z, x_3287.w);
    let x_3289 : vec4<f32> = u_xlat1;
    let x_3291 : vec4<f32> = u_xlat5;
    u_xlat67 = dot(vec3<f32>(x_3289.x, x_3289.y, x_3289.z), vec3<f32>(x_3291.x, x_3291.y, x_3291.z));
    let x_3294 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3294, 0.0f, 1.0f);
    let x_3296 : f32 = u_xlat67;
    let x_3298 : vec4<f32> = u_xlat6;
    let x_3300 : vec3<f32> = (vec3<f32>(x_3296, x_3296, x_3296) * vec3<f32>(x_3298.x, x_3298.y, x_3298.z));
    let x_3301 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3300.x, x_3300.y, x_3300.z, x_3301.w);
    let x_3303 : vec4<f32> = u_xlat5;
    let x_3305 : vec4<f32> = u_xlat0;
    let x_3308 : vec4<f32> = u_xlat4;
    let x_3310 : vec3<f32> = ((vec3<f32>(x_3303.x, x_3303.y, x_3303.z) * vec3<f32>(x_3305.y, x_3305.z, x_3305.w)) + vec3<f32>(x_3308.x, x_3308.y, x_3308.z));
    let x_3311 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3310.x, x_3310.y, x_3310.z, x_3311.w);

    continuing {
      let x_3313 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3313 + bitcast<u32>(1i));
    }
  }
  let x_3316 : vec4<f32> = u_xlat3;
  let x_3318 : vec4<f32> = u_xlat0;
  let x_3321 : vec3<f32> = u_xlat23;
  u_xlat21 = ((vec3<f32>(x_3316.x, x_3316.y, x_3316.z) * vec3<f32>(x_3318.y, x_3318.z, x_3318.w)) + x_3321);
  let x_3325 : vec4<f32> = u_xlat4;
  let x_3327 : vec3<f32> = u_xlat21;
  let x_3328 : vec3<f32> = (vec3<f32>(x_3325.x, x_3325.y, x_3325.z) + x_3327);
  let x_3329 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3328.x, x_3328.y, x_3328.z, x_3329.w);
  let x_3333 : f32 = x_40.x_Surface;
  u_xlatb21 = (x_3333 == 1.0f);
  let x_3335 : bool = u_xlatb21;
  if (x_3335) {
    let x_3340 : f32 = u_xlat0.x;
    x_3336 = x_3340;
  } else {
    x_3336 = 1.0f;
  }
  let x_3342 : f32 = x_3336;
  SV_Target0.w = x_3342;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


