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
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlatb26 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat78 : f32;

@group(1) @binding(2) var<uniform> x_367 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat53 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2119 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var x_106 : vec3<f32>;
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
  var x_1778 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2267 : f32;
  var x_2280 : f32;
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
  var x_3613 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat51;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_91 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_91;
  let x_95 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_95;
  let x_100 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_100;
  let x_104 : bool = u_xlatb26;
  if (x_104) {
    let x_109 : vec4<f32> = u_xlat2;
    x_106 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  } else {
    let x_112 : vec4<f32> = u_xlat3;
    x_106 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  }
  let x_114 : vec3<f32> = x_106;
  u_xlat26 = x_114;
  let x_116 : vec3<f32> = vs_TEXCOORD3;
  let x_117 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_116, x_117);
  let x_121 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_121);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec3<f32> = vs_TEXCOORD3;
  let x_127 : vec3<f32> = (vec3<f32>(x_124.x, x_124.x, x_124.x) * x_126);
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec3<f32> = vs_TEXCOORD7;
  let x_141 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres0;
  let x_144 : vec3<f32> = (x_130 + -(vec3<f32>(x_141.x, x_141.y, x_141.z)));
  let x_145 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec3<f32> = vs_TEXCOORD7;
  let x_150 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres1;
  let x_153 : vec3<f32> = (x_148 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_TEXCOORD7;
  let x_160 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres2;
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD7;
  let x_169 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres3;
  let x_172 : vec3<f32> = (x_167 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_173 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat3;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec4<f32> = u_xlat4;
  let x_183 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : vec4<f32> = u_xlat5;
  let x_189 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec4<f32> = u_xlat6;
  let x_195 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_202 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = x_138.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_202 < x_205);
  let x_208 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_208);
  let x_213 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_213);
  let x_217 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_225);
  let x_231 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_231);
  let x_235 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_235);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) + vec3<f32>(x_240.y, x_240.z, x_240.w));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat3;
  let x_248 : vec3<f32> = max(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_249.x, x_248.x, x_248.y, x_248.z);
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_251, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_259 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_259) + 4.0f);
  let x_266 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_266);
  let x_270 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_270) << bitcast<u32>(2i));
  let x_274 : vec3<f32> = vs_TEXCOORD7;
  let x_276 : i32 = u_xlati3;
  let x_279 : i32 = u_xlati3;
  let x_283 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_276 + 1i) / 4i)][((x_279 + 1i) % 4i)];
  u_xlat28 = (vec3<f32>(x_274.y, x_274.y, x_274.y) * vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : i32 = u_xlati3;
  let x_288 : i32 = u_xlati3;
  let x_291 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_286 / 4i)][(x_288 % 4i)];
  let x_293 : vec3<f32> = vs_TEXCOORD7;
  let x_296 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.x, x_293.x, x_293.x)) + x_296);
  let x_298 : i32 = u_xlati3;
  let x_301 : i32 = u_xlati3;
  let x_305 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_298 + 2i) / 4i)][((x_301 + 2i) % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD7;
  let x_310 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.z, x_307.z, x_307.z)) + x_310);
  let x_312 : vec3<f32> = u_xlat28;
  let x_313 : i32 = u_xlati3;
  let x_316 : i32 = u_xlati3;
  let x_320 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_313 + 3i) / 4i)][((x_316 + 3i) % 4i)];
  let x_322 : vec3<f32> = (x_312 + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_328 : f32 = vs_TEXCOORD7.y;
  let x_330 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_328 * x_330);
  let x_333 : f32 = x_29.unity_MatrixV[0i].z;
  let x_335 : f32 = vs_TEXCOORD7.x;
  let x_337 : f32 = u_xlat78;
  u_xlat78 = ((x_333 * x_335) + x_337);
  let x_340 : f32 = x_29.unity_MatrixV[2i].z;
  let x_342 : f32 = vs_TEXCOORD7.z;
  let x_344 : f32 = u_xlat78;
  u_xlat78 = ((x_340 * x_342) + x_344);
  let x_346 : f32 = u_xlat78;
  let x_348 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_346 + x_348);
  let x_350 : f32 = u_xlat78;
  let x_353 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_350) + -(x_353));
  let x_356 : f32 = u_xlat78;
  u_xlat78 = max(x_356, 0.0f);
  let x_358 : f32 = u_xlat78;
  let x_361 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_358 * x_361);
  u_xlat2.w = 1.0f;
  let x_370 : vec4<f32> = x_367.unity_SHAr;
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_367.unity_SHAg;
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_376, x_377);
  let x_382 : vec4<f32> = x_367.unity_SHAb;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_382, x_383);
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_386.y, x_386.z, x_386.z, x_386.x) * vec4<f32>(x_388.x, x_388.y, x_388.z, x_388.z));
  let x_393 : vec4<f32> = x_367.unity_SHBr;
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_393, x_394);
  let x_399 : vec4<f32> = x_367.unity_SHBg;
  let x_400 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_399, x_400);
  let x_405 : vec4<f32> = x_367.unity_SHBb;
  let x_406 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_405, x_406);
  let x_411 : f32 = u_xlat2.y;
  let x_413 : f32 = u_xlat2.y;
  u_xlat77 = (x_411 * x_413);
  let x_416 : f32 = u_xlat2.x;
  let x_418 : f32 = u_xlat2.x;
  let x_420 : f32 = u_xlat77;
  u_xlat77 = ((x_416 * x_418) + -(x_420));
  let x_425 : vec4<f32> = x_367.unity_SHC;
  let x_427 : f32 = u_xlat77;
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427, x_427, x_427)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat5;
  let x_439 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : vec3<f32> = max(vec3<f32>(x_442.x, x_442.y, x_442.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : f32 = u_xlat1;
  u_xlat77 = ((-(x_447) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_453 : f32 = u_xlat77;
  u_xlat79 = (-(x_453) + 1.0f);
  let x_456 : vec4<f32> = u_xlat0;
  let x_458 : f32 = u_xlat77;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(x_458, x_458, x_458));
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : f32 = u_xlat1;
  let x_472 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_472.x, x_472.y, x_472.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_481) + 1.0f);
  let x_484 : f32 = u_xlat1;
  let x_485 : f32 = u_xlat1;
  u_xlat77 = (x_484 * x_485);
  let x_487 : f32 = u_xlat77;
  u_xlat77 = max(x_487, 0.0078125f);
  let x_491 : f32 = u_xlat77;
  let x_492 : f32 = u_xlat77;
  u_xlat80 = (x_491 * x_492);
  let x_496 : f32 = u_xlat0.w;
  let x_497 : f32 = u_xlat79;
  u_xlat75 = (x_496 + x_497);
  let x_499 : f32 = u_xlat75;
  u_xlat75 = clamp(x_499, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat77;
  u_xlat79 = ((x_501 * 4.0f) + 2.0f);
  let x_507 : f32 = x_138.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_507);
  let x_509 : bool = u_xlatb6;
  if (x_509) {
    let x_513 : f32 = x_138.x_MainLightShadowParams.y;
    u_xlatb6 = (x_513 == 1.0f);
    let x_515 : bool = u_xlatb6;
    if (x_515) {
      let x_518 : vec4<f32> = u_xlat3;
      let x_521 : vec4<f32> = x_138.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_518.x, x_518.y, x_518.x, x_518.y) + x_521);
      let x_524 : vec4<f32> = u_xlat6;
      let x_525 : vec2<f32> = vec2<f32>(x_524.x, x_524.y);
      let x_527 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_525.x, x_525.y, x_527);
      let x_540 : vec3<f32> = txVec0;
      let x_542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_540.xy, x_540.z);
      u_xlat7.x = x_542;
      let x_545 : vec4<f32> = u_xlat6;
      let x_546 : vec2<f32> = vec2<f32>(x_545.z, x_545.w);
      let x_548 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_555 : vec3<f32> = txVec1;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat7.y = x_557;
      let x_559 : vec4<f32> = u_xlat3;
      let x_562 : vec4<f32> = x_138.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) + x_562);
      let x_565 : vec4<f32> = u_xlat6;
      let x_566 : vec2<f32> = vec2<f32>(x_565.x, x_565.y);
      let x_568 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_566.x, x_566.y, x_568);
      let x_575 : vec3<f32> = txVec2;
      let x_577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_575.xy, x_575.z);
      u_xlat7.z = x_577;
      let x_580 : vec4<f32> = u_xlat6;
      let x_581 : vec2<f32> = vec2<f32>(x_580.z, x_580.w);
      let x_583 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_590 : vec3<f32> = txVec3;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_590.xy, x_590.z);
      u_xlat7.w = x_592;
      let x_594 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_594, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_602 : f32 = x_138.x_MainLightShadowParams.y;
      u_xlatb31 = (x_602 == 2.0f);
      let x_604 : bool = u_xlatb31;
      if (x_604) {
        let x_609 : vec4<f32> = u_xlat3;
        let x_612 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_609.x, x_609.y) * vec2<f32>(x_612.z, x_612.w)) + vec2<f32>(0.5f, 0.5f));
        let x_618 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_618);
        let x_620 : vec4<f32> = u_xlat3;
        let x_623 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_626 : vec2<f32> = u_xlat31;
        let x_628 : vec2<f32> = ((vec2<f32>(x_620.x, x_620.y) * vec2<f32>(x_623.z, x_623.w)) + -(x_626));
        let x_629 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_632 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_632.x, x_632.x, x_632.y, x_632.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_637 : vec4<f32> = u_xlat8;
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_637.x, x_637.x, x_637.z, x_637.z) * vec4<f32>(x_639.x, x_639.x, x_639.z, x_639.z));
        let x_643 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_643.y, x_643.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_648 : vec4<f32> = u_xlat9;
        let x_651 : vec4<f32> = u_xlat7;
        let x_654 : vec2<f32> = ((vec2<f32>(x_648.x, x_648.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_651.x, x_651.y)));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_655.y, x_654.y, x_655.w);
        let x_657 : vec4<f32> = u_xlat7;
        let x_661 : vec2<f32> = (-(vec2<f32>(x_657.x, x_657.y)) + vec2<f32>(1.0f, 1.0f));
        let x_662 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_665.x, x_665.y), vec2<f32>(0.0f, 0.0f));
        let x_669 : vec2<f32> = u_xlat59;
        let x_671 : vec2<f32> = u_xlat59;
        let x_673 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_669) * x_671) + vec2<f32>(x_673.x, x_673.y));
        let x_676 : vec4<f32> = u_xlat7;
        let x_678 : vec2<f32> = max(vec2<f32>(x_676.x, x_676.y), vec2<f32>(0.0f, 0.0f));
        let x_679 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec4<f32> = u_xlat7;
        let x_684 : vec4<f32> = u_xlat7;
        let x_687 : vec4<f32> = u_xlat8;
        let x_689 : vec2<f32> = ((-(vec2<f32>(x_681.x, x_681.y)) * vec2<f32>(x_684.x, x_684.y)) + vec2<f32>(x_687.y, x_687.w));
        let x_690 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_692 + vec2<f32>(1.0f, 1.0f));
        let x_694 : vec4<f32> = u_xlat7;
        let x_696 : vec2<f32> = (vec2<f32>(x_694.x, x_694.y) + vec2<f32>(1.0f, 1.0f));
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
        let x_700 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = (vec2<f32>(x_700.x, x_700.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_705 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : vec4<f32> = u_xlat9;
        let x_710 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_711 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_710.x, x_710.y, x_711.z, x_711.w);
        let x_713 : vec2<f32> = u_xlat59;
        let x_714 : vec2<f32> = (x_713 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_715 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
        let x_718 : vec4<f32> = u_xlat7;
        let x_720 : vec2<f32> = (vec2<f32>(x_718.x, x_718.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_721 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat8;
        let x_725 : vec2<f32> = (vec2<f32>(x_723.y, x_723.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_726 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_729 : f32 = u_xlat9.x;
        u_xlat10.z = x_729;
        let x_732 : f32 = u_xlat7.x;
        u_xlat10.w = x_732;
        let x_735 : f32 = u_xlat12.x;
        u_xlat11.z = x_735;
        let x_738 : f32 = u_xlat57.x;
        u_xlat11.w = x_738;
        let x_740 : vec4<f32> = u_xlat10;
        let x_742 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_740.z, x_740.w, x_740.x, x_740.z) + vec4<f32>(x_742.z, x_742.w, x_742.x, x_742.z));
        let x_746 : f32 = u_xlat10.y;
        u_xlat9.z = x_746;
        let x_749 : f32 = u_xlat7.y;
        u_xlat9.w = x_749;
        let x_752 : f32 = u_xlat11.y;
        u_xlat12.z = x_752;
        let x_755 : f32 = u_xlat57.y;
        u_xlat12.w = x_755;
        let x_757 : vec4<f32> = u_xlat9;
        let x_759 : vec4<f32> = u_xlat12;
        let x_761 : vec3<f32> = (vec3<f32>(x_757.z, x_757.y, x_757.w) + vec3<f32>(x_759.z, x_759.y, x_759.w));
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat11;
        let x_766 : vec4<f32> = u_xlat8;
        let x_768 : vec3<f32> = (vec3<f32>(x_764.x, x_764.z, x_764.w) / vec3<f32>(x_766.z, x_766.w, x_766.y));
        let x_769 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
        let x_771 : vec4<f32> = u_xlat9;
        let x_777 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_778 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_780 : vec4<f32> = u_xlat12;
        let x_782 : vec4<f32> = u_xlat7;
        let x_784 : vec3<f32> = (vec3<f32>(x_780.z, x_780.y, x_780.w) / vec3<f32>(x_782.x, x_782.y, x_782.z));
        let x_785 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
        let x_787 : vec4<f32> = u_xlat10;
        let x_789 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_790 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
        let x_792 : vec4<f32> = u_xlat9;
        let x_795 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_797 : vec3<f32> = (vec3<f32>(x_792.y, x_792.x, x_792.z) * vec3<f32>(x_795.x, x_795.x, x_795.x));
        let x_798 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
        let x_800 : vec4<f32> = u_xlat10;
        let x_803 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_805 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_803.y, x_803.y, x_803.y));
        let x_806 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
        let x_809 : f32 = u_xlat10.x;
        u_xlat9.w = x_809;
        let x_811 : vec2<f32> = u_xlat31;
        let x_814 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) * vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y)) + vec4<f32>(x_817.y, x_817.w, x_817.x, x_817.w));
        let x_820 : vec2<f32> = u_xlat31;
        let x_822 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_825 : vec4<f32> = u_xlat9;
        let x_827 : vec2<f32> = ((x_820 * vec2<f32>(x_822.x, x_822.y)) + vec2<f32>(x_825.z, x_825.w));
        let x_828 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_831 : f32 = u_xlat9.y;
        u_xlat10.w = x_831;
        let x_833 : vec4<f32> = u_xlat10;
        let x_834 : vec2<f32> = vec2<f32>(x_833.y, x_833.z);
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_835.x, x_834.x, x_835.z, x_834.y);
        let x_838 : vec2<f32> = u_xlat31;
        let x_841 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_844 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y) * vec4<f32>(x_841.x, x_841.y, x_841.x, x_841.y)) + vec4<f32>(x_844.x, x_844.y, x_844.z, x_844.y));
        let x_847 : vec2<f32> = u_xlat31;
        let x_850 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_853 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_847.x, x_847.y, x_847.x, x_847.y) * vec4<f32>(x_850.x, x_850.y, x_850.x, x_850.y)) + vec4<f32>(x_853.w, x_853.y, x_853.w, x_853.z));
        let x_856 : vec2<f32> = u_xlat31;
        let x_859 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_862 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y) * vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y)) + vec4<f32>(x_862.x, x_862.w, x_862.z, x_862.w));
        let x_866 : vec4<f32> = u_xlat7;
        let x_868 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_866.x, x_866.x, x_866.x, x_866.y) * vec4<f32>(x_868.z, x_868.w, x_868.y, x_868.z));
        let x_872 : vec4<f32> = u_xlat7;
        let x_874 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_872.y, x_872.y, x_872.z, x_872.z) * x_874);
        let x_877 : f32 = u_xlat7.z;
        let x_879 : f32 = u_xlat8.y;
        u_xlat31.x = (x_877 * x_879);
        let x_883 : vec4<f32> = u_xlat11;
        let x_884 : vec2<f32> = vec2<f32>(x_883.x, x_883.y);
        let x_886 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_884.x, x_884.y, x_886);
        let x_894 : vec3<f32> = txVec4;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_894.xy, x_894.z);
        u_xlat56 = x_896;
        let x_898 : vec4<f32> = u_xlat11;
        let x_899 : vec2<f32> = vec2<f32>(x_898.z, x_898.w);
        let x_901 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_899.x, x_899.y, x_901);
        let x_909 : vec3<f32> = txVec5;
        let x_911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_909.xy, x_909.z);
        u_xlat81 = x_911;
        let x_912 : f32 = u_xlat81;
        let x_914 : f32 = u_xlat14.y;
        u_xlat81 = (x_912 * x_914);
        let x_917 : f32 = u_xlat14.x;
        let x_918 : f32 = u_xlat56;
        let x_920 : f32 = u_xlat81;
        u_xlat56 = ((x_917 * x_918) + x_920);
        let x_923 : vec4<f32> = u_xlat12;
        let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
        let x_926 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_924.x, x_924.y, x_926);
        let x_933 : vec3<f32> = txVec6;
        let x_935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_933.xy, x_933.z);
        u_xlat81 = x_935;
        let x_937 : f32 = u_xlat14.z;
        let x_938 : f32 = u_xlat81;
        let x_940 : f32 = u_xlat56;
        u_xlat56 = ((x_937 * x_938) + x_940);
        let x_943 : vec4<f32> = u_xlat10;
        let x_944 : vec2<f32> = vec2<f32>(x_943.x, x_943.y);
        let x_946 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_953 : vec3<f32> = txVec7;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_953.xy, x_953.z);
        u_xlat81 = x_955;
        let x_957 : f32 = u_xlat14.w;
        let x_958 : f32 = u_xlat81;
        let x_960 : f32 = u_xlat56;
        u_xlat56 = ((x_957 * x_958) + x_960);
        let x_963 : vec4<f32> = u_xlat13;
        let x_964 : vec2<f32> = vec2<f32>(x_963.x, x_963.y);
        let x_966 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec8;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_973.xy, x_973.z);
        u_xlat81 = x_975;
        let x_977 : f32 = u_xlat15.x;
        let x_978 : f32 = u_xlat81;
        let x_980 : f32 = u_xlat56;
        u_xlat56 = ((x_977 * x_978) + x_980);
        let x_983 : vec4<f32> = u_xlat13;
        let x_984 : vec2<f32> = vec2<f32>(x_983.z, x_983.w);
        let x_986 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_984.x, x_984.y, x_986);
        let x_993 : vec3<f32> = txVec9;
        let x_995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_993.xy, x_993.z);
        u_xlat81 = x_995;
        let x_997 : f32 = u_xlat15.y;
        let x_998 : f32 = u_xlat81;
        let x_1000 : f32 = u_xlat56;
        u_xlat56 = ((x_997 * x_998) + x_1000);
        let x_1003 : vec4<f32> = u_xlat10;
        let x_1004 : vec2<f32> = vec2<f32>(x_1003.z, x_1003.w);
        let x_1006 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
        let x_1013 : vec3<f32> = txVec10;
        let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1013.xy, x_1013.z);
        u_xlat81 = x_1015;
        let x_1017 : f32 = u_xlat15.z;
        let x_1018 : f32 = u_xlat81;
        let x_1020 : f32 = u_xlat56;
        u_xlat56 = ((x_1017 * x_1018) + x_1020);
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
        let x_1026 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
        let x_1033 : vec3<f32> = txVec11;
        let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
        u_xlat81 = x_1035;
        let x_1037 : f32 = u_xlat15.w;
        let x_1038 : f32 = u_xlat81;
        let x_1040 : f32 = u_xlat56;
        u_xlat56 = ((x_1037 * x_1038) + x_1040);
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.z, x_1043.w);
        let x_1046 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1053 : vec3<f32> = txVec12;
        let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1053.xy, x_1053.z);
        u_xlat81 = x_1055;
        let x_1057 : f32 = u_xlat31.x;
        let x_1058 : f32 = u_xlat81;
        let x_1060 : f32 = u_xlat56;
        u_xlat6.x = ((x_1057 * x_1058) + x_1060);
      } else {
        let x_1064 : vec4<f32> = u_xlat3;
        let x_1067 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.z, x_1067.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1071 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1071);
        let x_1073 : vec4<f32> = u_xlat3;
        let x_1076 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1079 : vec2<f32> = u_xlat31;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.z, x_1076.w)) + -(x_1079));
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1084.x, x_1084.x, x_1084.y, x_1084.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1087 : vec4<f32> = u_xlat8;
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1087.x, x_1087.x, x_1087.z, x_1087.z) * vec4<f32>(x_1089.x, x_1089.x, x_1089.z, x_1089.z));
        let x_1092 : vec4<f32> = u_xlat9;
        let x_1096 : vec2<f32> = (vec2<f32>(x_1092.y, x_1092.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1097 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1097.x, x_1096.x, x_1097.z, x_1096.y);
        let x_1099 : vec4<f32> = u_xlat9;
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1099.x, x_1099.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1102.x, x_1102.y)));
        let x_1106 : vec4<f32> = u_xlat7;
        let x_1109 : vec2<f32> = (-(vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1109.x, x_1110.y, x_1109.y, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat7;
        let x_1114 : vec2<f32> = min(vec2<f32>(x_1112.x, x_1112.y), vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1120 : vec4<f32> = u_xlat9;
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = ((-(vec2<f32>(x_1117.x, x_1117.y)) * vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(x_1123.x, x_1123.z));
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1125.x, x_1126.y, x_1125.y, x_1126.w);
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1130 : vec2<f32> = max(vec2<f32>(x_1128.x, x_1128.y), vec2<f32>(0.0f, 0.0f));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1141 : vec2<f32> = ((-(vec2<f32>(x_1133.x, x_1133.y)) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.y, x_1139.w));
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1144 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1144 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1148 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1148 * 0.08163200318813323975f);
        let x_1152 : vec2<f32> = u_xlat57;
        let x_1155 : vec2<f32> = (vec2<f32>(x_1152.y, x_1152.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1158.x, x_1158.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1162 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1162 * 0.08163200318813323975f);
        let x_1166 : f32 = u_xlat11.y;
        u_xlat9.x = x_1166;
        let x_1168 : vec4<f32> = u_xlat7;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1175.x, x_1176.z, x_1175.y);
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1182 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1183 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1182.x, x_1183.y, x_1182.y, x_1183.w);
        let x_1186 : f32 = u_xlat57.x;
        u_xlat8.y = x_1186;
        let x_1189 : f32 = u_xlat10.y;
        u_xlat8.w = x_1189;
        let x_1191 : vec4<f32> = u_xlat8;
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1191 + x_1192);
        let x_1194 : vec4<f32> = u_xlat7;
        let x_1197 : vec2<f32> = ((vec2<f32>(x_1194.y, x_1194.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1198 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1198.x, x_1197.x, x_1198.z, x_1197.y);
        let x_1200 : vec4<f32> = u_xlat7;
        let x_1203 : vec2<f32> = ((vec2<f32>(x_1200.y, x_1200.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1204.w);
        let x_1207 : f32 = u_xlat57.y;
        u_xlat10.y = x_1207;
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1210 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1209 + x_1210);
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1212 / x_1213);
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1215 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1222 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1221 / x_1222);
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1224 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1226 : vec4<f32> = u_xlat8;
        let x_1229 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1226.w, x_1226.x, x_1226.y, x_1226.z) * vec4<f32>(x_1229.x, x_1229.x, x_1229.x, x_1229.x));
        let x_1232 : vec4<f32> = u_xlat10;
        let x_1235 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1232.x, x_1232.w, x_1232.y, x_1232.z) * vec4<f32>(x_1235.y, x_1235.y, x_1235.y, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat8;
        let x_1239 : vec3<f32> = vec3<f32>(x_1238.y, x_1238.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1239.x, x_1240.y, x_1239.y, x_1239.z);
        let x_1243 : f32 = u_xlat10.x;
        u_xlat11.y = x_1243;
        let x_1245 : vec2<f32> = u_xlat31;
        let x_1248 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.y));
        let x_1254 : vec2<f32> = u_xlat31;
        let x_1256 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1261 : vec2<f32> = ((x_1254 * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
        let x_1265 : f32 = u_xlat11.y;
        u_xlat8.y = x_1265;
        let x_1268 : f32 = u_xlat10.z;
        u_xlat11.y = x_1268;
        let x_1270 : vec2<f32> = u_xlat31;
        let x_1273 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y) * vec4<f32>(x_1273.x, x_1273.y, x_1273.x, x_1273.y)) + vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1276.y));
        let x_1280 : vec2<f32> = u_xlat31;
        let x_1282 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1280 * vec2<f32>(x_1282.x, x_1282.y)) + vec2<f32>(x_1285.w, x_1285.y));
        let x_1289 : f32 = u_xlat11.y;
        u_xlat8.z = x_1289;
        let x_1291 : vec2<f32> = u_xlat31;
        let x_1294 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.z));
        let x_1301 : f32 = u_xlat10.w;
        u_xlat11.y = x_1301;
        let x_1304 : vec2<f32> = u_xlat31;
        let x_1307 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y) * vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y)) + vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1310.y));
        let x_1314 : vec2<f32> = u_xlat31;
        let x_1316 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1314 * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
        let x_1323 : f32 = u_xlat11.y;
        u_xlat8.w = x_1323;
        let x_1326 : vec2<f32> = u_xlat31;
        let x_1328 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat8;
        let x_1333 : vec2<f32> = ((x_1326 * vec2<f32>(x_1328.x, x_1328.y)) + vec2<f32>(x_1331.x, x_1331.w));
        let x_1334 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat11;
        let x_1337 : vec3<f32> = vec3<f32>(x_1336.x, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1337.x, x_1338.y, x_1337.y, x_1337.z);
        let x_1340 : vec2<f32> = u_xlat31;
        let x_1343 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y) * vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y)) + vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1346.y));
        let x_1350 : vec2<f32> = u_xlat31;
        let x_1352 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1350 * vec2<f32>(x_1352.x, x_1352.y)) + vec2<f32>(x_1355.w, x_1355.y));
        let x_1359 : f32 = u_xlat8.x;
        u_xlat10.x = x_1359;
        let x_1361 : vec2<f32> = u_xlat31;
        let x_1363 : vec4<f32> = x_138.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1361 * vec2<f32>(x_1363.x, x_1363.y)) + vec2<f32>(x_1366.x, x_1366.y));
        let x_1370 : vec4<f32> = u_xlat7;
        let x_1372 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1370.x, x_1370.x, x_1370.x, x_1370.x) * x_1372);
        let x_1375 : vec4<f32> = u_xlat7;
        let x_1377 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1375.y, x_1375.y, x_1375.y, x_1375.y) * x_1377);
        let x_1380 : vec4<f32> = u_xlat7;
        let x_1382 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1380.z, x_1380.z, x_1380.z, x_1380.z) * x_1382);
        let x_1384 : vec4<f32> = u_xlat7;
        let x_1386 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1384.w, x_1384.w, x_1384.w, x_1384.w) * x_1386);
        let x_1389 : vec4<f32> = u_xlat12;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec13;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat81 = x_1401;
        let x_1403 : vec4<f32> = u_xlat12;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.z, x_1403.w);
        let x_1406 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec14;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat8.x = x_1415;
        let x_1418 : f32 = u_xlat8.x;
        let x_1420 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1418 * x_1420);
        let x_1424 : f32 = u_xlat18.x;
        let x_1425 : f32 = u_xlat81;
        let x_1428 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1424 * x_1425) + x_1428);
        let x_1431 : vec4<f32> = u_xlat13;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec15;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat8.x = x_1443;
        let x_1446 : f32 = u_xlat18.z;
        let x_1448 : f32 = u_xlat8.x;
        let x_1450 : f32 = u_xlat81;
        u_xlat81 = ((x_1446 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat15;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec16;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat8.x = x_1465;
        let x_1468 : f32 = u_xlat18.w;
        let x_1470 : f32 = u_xlat8.x;
        let x_1472 : f32 = u_xlat81;
        u_xlat81 = ((x_1468 * x_1470) + x_1472);
        let x_1475 : vec4<f32> = u_xlat14;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.x, x_1475.y);
        let x_1478 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec17;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat8.x = x_1487;
        let x_1490 : f32 = u_xlat19.x;
        let x_1492 : f32 = u_xlat8.x;
        let x_1494 : f32 = u_xlat81;
        u_xlat81 = ((x_1490 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat14;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.z, x_1497.w);
        let x_1500 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec18;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat8.x = x_1509;
        let x_1512 : f32 = u_xlat19.y;
        let x_1514 : f32 = u_xlat8.x;
        let x_1516 : f32 = u_xlat81;
        u_xlat81 = ((x_1512 * x_1514) + x_1516);
        let x_1519 : vec2<f32> = u_xlat63;
        let x_1521 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec19;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
        u_xlat8.x = x_1530;
        let x_1533 : f32 = u_xlat19.z;
        let x_1535 : f32 = u_xlat8.x;
        let x_1537 : f32 = u_xlat81;
        u_xlat81 = ((x_1533 * x_1535) + x_1537);
        let x_1540 : vec4<f32> = u_xlat15;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.z, x_1540.w);
        let x_1543 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec20;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat8.x = x_1552;
        let x_1555 : f32 = u_xlat19.w;
        let x_1557 : f32 = u_xlat8.x;
        let x_1559 : f32 = u_xlat81;
        u_xlat81 = ((x_1555 * x_1557) + x_1559);
        let x_1562 : vec4<f32> = u_xlat16;
        let x_1563 : vec2<f32> = vec2<f32>(x_1562.x, x_1562.y);
        let x_1565 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec21;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat8.x = x_1574;
        let x_1577 : f32 = u_xlat20.x;
        let x_1579 : f32 = u_xlat8.x;
        let x_1581 : f32 = u_xlat81;
        u_xlat81 = ((x_1577 * x_1579) + x_1581);
        let x_1584 : vec4<f32> = u_xlat16;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.z, x_1584.w);
        let x_1587 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec22;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat8.x = x_1596;
        let x_1599 : f32 = u_xlat20.y;
        let x_1601 : f32 = u_xlat8.x;
        let x_1603 : f32 = u_xlat81;
        u_xlat81 = ((x_1599 * x_1601) + x_1603);
        let x_1606 : vec2<f32> = u_xlat33;
        let x_1608 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec23;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat8.x = x_1617;
        let x_1620 : f32 = u_xlat20.z;
        let x_1622 : f32 = u_xlat8.x;
        let x_1624 : f32 = u_xlat81;
        u_xlat81 = ((x_1620 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat17;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec24;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat8.x = x_1639;
        let x_1642 : f32 = u_xlat20.w;
        let x_1644 : f32 = u_xlat8.x;
        let x_1646 : f32 = u_xlat81;
        u_xlat81 = ((x_1642 * x_1644) + x_1646);
        let x_1649 : vec4<f32> = u_xlat11;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.x, x_1649.y);
        let x_1652 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec25;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1659.xy, x_1659.z);
        u_xlat8.x = x_1661;
        let x_1664 : f32 = u_xlat7.x;
        let x_1666 : f32 = u_xlat8.x;
        let x_1668 : f32 = u_xlat81;
        u_xlat81 = ((x_1664 * x_1666) + x_1668);
        let x_1671 : vec4<f32> = u_xlat11;
        let x_1672 : vec2<f32> = vec2<f32>(x_1671.z, x_1671.w);
        let x_1674 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1681 : vec3<f32> = txVec26;
        let x_1683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1681.xy, x_1681.z);
        u_xlat7.x = x_1683;
        let x_1686 : f32 = u_xlat7.y;
        let x_1688 : f32 = u_xlat7.x;
        let x_1690 : f32 = u_xlat81;
        u_xlat81 = ((x_1686 * x_1688) + x_1690);
        let x_1693 : vec2<f32> = u_xlat60;
        let x_1695 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec27;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1702.xy, x_1702.z);
        u_xlat7.x = x_1704;
        let x_1707 : f32 = u_xlat7.z;
        let x_1709 : f32 = u_xlat7.x;
        let x_1711 : f32 = u_xlat81;
        u_xlat81 = ((x_1707 * x_1709) + x_1711);
        let x_1714 : vec2<f32> = u_xlat31;
        let x_1716 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec28;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1723.xy, x_1723.z);
        u_xlat31.x = x_1725;
        let x_1728 : f32 = u_xlat7.w;
        let x_1730 : f32 = u_xlat31.x;
        let x_1732 : f32 = u_xlat81;
        u_xlat6.x = ((x_1728 * x_1730) + x_1732);
      }
    }
  } else {
    let x_1737 : vec4<f32> = u_xlat3;
    let x_1738 : vec2<f32> = vec2<f32>(x_1737.x, x_1737.y);
    let x_1740 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
    let x_1747 : vec3<f32> = txVec29;
    let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1747.xy, x_1747.z);
    u_xlat6.x = x_1749;
  }
  let x_1752 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1752) + 1.0f);
  let x_1757 : f32 = u_xlat6.x;
  let x_1759 : f32 = x_138.x_MainLightShadowParams.x;
  let x_1762 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1757 * x_1759) + x_1762);
  let x_1767 : f32 = u_xlat3.z;
  u_xlatb28 = (0.0f >= x_1767);
  let x_1771 : f32 = u_xlat3.z;
  u_xlatb53 = (x_1771 >= 1.0f);
  let x_1773 : bool = u_xlatb53;
  let x_1774 : bool = u_xlatb28;
  u_xlatb28 = (x_1773 | x_1774);
  let x_1776 : bool = u_xlatb28;
  if (x_1776) {
    x_1778 = 1.0f;
  } else {
    let x_1783 : f32 = u_xlat3.x;
    x_1778 = x_1783;
  }
  let x_1784 : f32 = x_1778;
  u_xlat3.x = x_1784;
  let x_1786 : vec3<f32> = vs_TEXCOORD7;
  let x_1788 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1790 : vec3<f32> = (x_1786 + -(x_1788));
  let x_1791 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec4<f32> = u_xlat6;
  let x_1795 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_1793.x, x_1793.y, x_1793.z), vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1801 : f32 = u_xlat28.x;
  let x_1803 : f32 = x_138.x_MainLightShadowParams.z;
  let x_1806 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat53 = ((x_1801 * x_1803) + x_1806);
  let x_1808 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1808, 0.0f, 1.0f);
  let x_1811 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_1811) + 1.0f);
  let x_1815 : f32 = u_xlat53;
  let x_1817 : f32 = u_xlat6.x;
  let x_1820 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1815 * x_1817) + x_1820);
  let x_1823 : vec3<f32> = u_xlat26;
  let x_1825 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(-(x_1823), vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : f32 = u_xlat53;
  let x_1829 : f32 = u_xlat53;
  u_xlat53 = (x_1828 + x_1829);
  let x_1831 : vec4<f32> = u_xlat2;
  let x_1833 : f32 = u_xlat53;
  let x_1837 : vec3<f32> = u_xlat26;
  let x_1839 : vec3<f32> = ((vec3<f32>(x_1831.x, x_1831.y, x_1831.z) * -(vec3<f32>(x_1833, x_1833, x_1833))) + -(x_1837));
  let x_1840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
  let x_1842 : vec4<f32> = u_xlat2;
  let x_1844 : vec3<f32> = u_xlat26;
  u_xlat53 = dot(vec3<f32>(x_1842.x, x_1842.y, x_1842.z), x_1844);
  let x_1846 : f32 = u_xlat53;
  u_xlat53 = clamp(x_1846, 0.0f, 1.0f);
  let x_1848 : f32 = u_xlat53;
  u_xlat53 = (-(x_1848) + 1.0f);
  let x_1851 : f32 = u_xlat53;
  let x_1852 : f32 = u_xlat53;
  u_xlat53 = (x_1851 * x_1852);
  let x_1854 : f32 = u_xlat53;
  let x_1855 : f32 = u_xlat53;
  u_xlat53 = (x_1854 * x_1855);
  let x_1857 : f32 = u_xlat1;
  u_xlat81 = ((-(x_1857) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1863 : f32 = u_xlat1;
  let x_1864 : f32 = u_xlat81;
  u_xlat1 = (x_1863 * x_1864);
  let x_1866 : f32 = u_xlat1;
  u_xlat1 = (x_1866 * 6.0f);
  let x_1877 : vec4<f32> = u_xlat6;
  let x_1879 : f32 = u_xlat1;
  let x_1880 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1877.x, x_1877.y, x_1877.z), x_1879);
  u_xlat6 = x_1880;
  let x_1882 : f32 = u_xlat6.w;
  u_xlat1 = (x_1882 + -1.0f);
  let x_1885 : f32 = x_367.unity_SpecCube0_HDR.w;
  let x_1886 : f32 = u_xlat1;
  u_xlat1 = ((x_1885 * x_1886) + 1.0f);
  let x_1889 : f32 = u_xlat1;
  u_xlat1 = max(x_1889, 0.0f);
  let x_1891 : f32 = u_xlat1;
  u_xlat1 = log2(x_1891);
  let x_1893 : f32 = u_xlat1;
  let x_1895 : f32 = x_367.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1893 * x_1895);
  let x_1897 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1897);
  let x_1899 : f32 = u_xlat1;
  let x_1901 : f32 = x_367.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1899 * x_1901);
  let x_1903 : vec4<f32> = u_xlat6;
  let x_1905 : f32 = u_xlat1;
  let x_1907 : vec3<f32> = (vec3<f32>(x_1903.x, x_1903.y, x_1903.z) * vec3<f32>(x_1905, x_1905, x_1905));
  let x_1908 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  let x_1910 : f32 = u_xlat77;
  let x_1912 : f32 = u_xlat77;
  let x_1916 : vec2<f32> = ((vec2<f32>(x_1910, x_1910) * vec2<f32>(x_1912, x_1912)) + vec2<f32>(-1.0f, 1.0f));
  let x_1917 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1916.x, x_1916.y, x_1917.z, x_1917.w);
  let x_1920 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_1920);
  let x_1923 : vec4<f32> = u_xlat0;
  let x_1926 : f32 = u_xlat75;
  u_xlat32 = (-(vec3<f32>(x_1923.x, x_1923.y, x_1923.z)) + vec3<f32>(x_1926, x_1926, x_1926));
  let x_1929 : f32 = u_xlat53;
  let x_1931 : vec3<f32> = u_xlat32;
  let x_1933 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1929, x_1929, x_1929) * x_1931) + vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
  let x_1936 : f32 = u_xlat1;
  let x_1938 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1936, x_1936, x_1936) * x_1938);
  let x_1940 : vec4<f32> = u_xlat6;
  let x_1942 : vec3<f32> = u_xlat32;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1940.x, x_1940.y, x_1940.z) * x_1942);
  let x_1944 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec4<f32> = u_xlat4;
  let x_1948 : vec4<f32> = u_xlat5;
  let x_1951 : vec4<f32> = u_xlat6;
  let x_1953 : vec3<f32> = ((vec3<f32>(x_1946.x, x_1946.y, x_1946.z) * vec3<f32>(x_1948.x, x_1948.y, x_1948.z)) + vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
  let x_1954 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
  let x_1957 : f32 = u_xlat3.x;
  let x_1959 : f32 = x_367.unity_LightData.z;
  u_xlat75 = (x_1957 * x_1959);
  let x_1961 : vec4<f32> = u_xlat2;
  let x_1964 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_1961.x, x_1961.y, x_1961.z), vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
  let x_1967 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1967, 0.0f, 1.0f);
  let x_1969 : f32 = u_xlat75;
  let x_1970 : f32 = u_xlat1;
  u_xlat75 = (x_1969 * x_1970);
  let x_1972 : f32 = u_xlat75;
  let x_1975 : vec4<f32> = x_29.x_MainLightColor;
  let x_1977 : vec3<f32> = (vec3<f32>(x_1972, x_1972, x_1972) * vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1980 : vec3<f32> = u_xlat26;
  let x_1982 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (x_1980 + vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : vec3<f32> = u_xlat32;
  let x_1986 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1985, x_1986);
  let x_1988 : f32 = u_xlat75;
  u_xlat75 = max(x_1988, 1.17549435e-38f);
  let x_1991 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1991);
  let x_1993 : f32 = u_xlat75;
  let x_1995 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1993, x_1993, x_1993) * x_1995);
  let x_1997 : vec4<f32> = u_xlat2;
  let x_1999 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_1997.x, x_1997.y, x_1997.z), x_1999);
  let x_2001 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2001, 0.0f, 1.0f);
  let x_2004 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2006 : vec3<f32> = u_xlat32;
  u_xlat1 = dot(vec3<f32>(x_2004.x, x_2004.y, x_2004.z), x_2006);
  let x_2008 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2008, 0.0f, 1.0f);
  let x_2010 : f32 = u_xlat75;
  let x_2011 : f32 = u_xlat75;
  u_xlat75 = (x_2010 * x_2011);
  let x_2013 : f32 = u_xlat75;
  let x_2015 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2013 * x_2015) + 1.00001001358032226562f);
  let x_2019 : f32 = u_xlat1;
  let x_2020 : f32 = u_xlat1;
  u_xlat1 = (x_2019 * x_2020);
  let x_2022 : f32 = u_xlat75;
  let x_2023 : f32 = u_xlat75;
  u_xlat75 = (x_2022 * x_2023);
  let x_2025 : f32 = u_xlat1;
  u_xlat1 = max(x_2025, 0.10000000149011611938f);
  let x_2028 : f32 = u_xlat75;
  let x_2029 : f32 = u_xlat1;
  u_xlat75 = (x_2028 * x_2029);
  let x_2031 : f32 = u_xlat79;
  let x_2032 : f32 = u_xlat75;
  u_xlat75 = (x_2031 * x_2032);
  let x_2034 : f32 = u_xlat80;
  let x_2035 : f32 = u_xlat75;
  u_xlat75 = (x_2034 / x_2035);
  let x_2037 : vec4<f32> = u_xlat0;
  let x_2039 : f32 = u_xlat75;
  let x_2042 : vec4<f32> = u_xlat5;
  u_xlat32 = ((vec3<f32>(x_2037.x, x_2037.y, x_2037.z) * vec3<f32>(x_2039, x_2039, x_2039)) + vec3<f32>(x_2042.x, x_2042.y, x_2042.z));
  let x_2046 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2048 : f32 = x_367.unity_LightData.y;
  u_xlat75 = min(x_2046, x_2048);
  let x_2051 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2051));
  let x_2055 : f32 = u_xlat28.x;
  let x_2058 : f32 = x_138.x_AdditionalShadowFadeParams.x;
  let x_2061 : f32 = x_138.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2055 * x_2058) + x_2061);
  let x_2063 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2063, 0.0f, 1.0f);
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2075 : u32 = u_xlatu_loop_1;
    let x_2076 : u32 = u_xlatu75;
    if ((x_2075 < x_2076)) {
    } else {
      break;
    }
    let x_2079 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2079 >> 2u);
    let x_2082 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_2082 & 3u));
    let x_2085 : u32 = u_xlatu81;
    let x_2088 : vec4<f32> = x_367.unity_LightIndices[bitcast<i32>(x_2085)];
    let x_2098 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2103 : vec4<u32> = indexable[x_2098];
    u_xlat81 = dot(x_2088, bitcast<vec4<f32>>(x_2103));
    let x_2107 : f32 = u_xlat81;
    u_xlati81 = i32(x_2107);
    let x_2109 : vec3<f32> = vs_TEXCOORD7;
    let x_2120 : i32 = u_xlati81;
    let x_2122 : vec4<f32> = x_2119.x_AdditionalLightsPosition[x_2120];
    let x_2125 : i32 = u_xlati81;
    let x_2127 : vec4<f32> = x_2119.x_AdditionalLightsPosition[x_2125];
    let x_2129 : vec3<f32> = ((-(x_2109) * vec3<f32>(x_2122.w, x_2122.w, x_2122.w)) + vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
    let x_2130 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
    let x_2133 : vec4<f32> = u_xlat8;
    let x_2135 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2133.x, x_2133.y, x_2133.z), vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
    let x_2138 : f32 = u_xlat83;
    u_xlat83 = max(x_2138, 0.00006103515625f);
    let x_2141 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2141);
    let x_2145 : vec4<f32> = u_xlat8;
    let x_2147 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2145.x, x_2145.y, x_2145.z) * vec3<f32>(x_2147.x, x_2147.x, x_2147.x));
    let x_2150 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2150);
    let x_2153 : f32 = u_xlat83;
    let x_2154 : i32 = u_xlati81;
    let x_2156 : f32 = x_2119.x_AdditionalLightsAttenuation[x_2154].x;
    u_xlat83 = (x_2153 * x_2156);
    let x_2158 : f32 = u_xlat83;
    let x_2160 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2158) * x_2160) + 1.0f);
    let x_2163 : f32 = u_xlat83;
    u_xlat83 = max(x_2163, 0.0f);
    let x_2165 : f32 = u_xlat83;
    let x_2166 : f32 = u_xlat83;
    u_xlat83 = (x_2165 * x_2166);
    let x_2168 : f32 = u_xlat83;
    let x_2170 : f32 = u_xlat10.x;
    u_xlat83 = (x_2168 * x_2170);
    let x_2172 : i32 = u_xlati81;
    let x_2174 : vec4<f32> = x_2119.x_AdditionalLightsSpotDir[x_2172];
    let x_2176 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2174.x, x_2174.y, x_2174.z), x_2176);
    let x_2180 : f32 = u_xlat10.x;
    let x_2181 : i32 = u_xlati81;
    let x_2183 : f32 = x_2119.x_AdditionalLightsAttenuation[x_2181].z;
    let x_2185 : i32 = u_xlati81;
    let x_2187 : f32 = x_2119.x_AdditionalLightsAttenuation[x_2185].w;
    u_xlat10.x = ((x_2180 * x_2183) + x_2187);
    let x_2191 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2191, 0.0f, 1.0f);
    let x_2195 : f32 = u_xlat10.x;
    let x_2197 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2195 * x_2197);
    let x_2200 : f32 = u_xlat83;
    let x_2202 : f32 = u_xlat10.x;
    u_xlat83 = (x_2200 * x_2202);
    let x_2206 : i32 = u_xlati81;
    let x_2208 : f32 = x_138.x_AdditionalShadowParams[x_2206].w;
    u_xlati10 = i32(x_2208);
    let x_2213 : i32 = u_xlati10;
    u_xlatb35.x = (x_2213 >= 0i);
    let x_2217 : bool = u_xlatb35.x;
    if (x_2217) {
      let x_2221 : i32 = u_xlati81;
      let x_2223 : f32 = x_138.x_AdditionalShadowParams[x_2221].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2223, x_2223, x_2223, x_2223))));
      let x_2229 : bool = u_xlatb35.x;
      if (x_2229) {
        let x_2232 : vec3<f32> = u_xlat34;
        let x_2235 : vec3<f32> = u_xlat34;
        let x_2238 : vec4<bool> = (abs(vec4<f32>(x_2232.z, x_2232.z, x_2232.y, x_2232.y)) >= abs(vec4<f32>(x_2235.x, x_2235.y, x_2235.x, x_2235.x)));
        u_xlatb35 = vec3<bool>(x_2238.x, x_2238.y, x_2238.z);
        let x_2241 : bool = u_xlatb35.y;
        let x_2243 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2241 & x_2243);
        let x_2247 : vec3<f32> = u_xlat34;
        let x_2250 : vec4<bool> = (-(vec4<f32>(x_2247.z, x_2247.y, x_2247.x, x_2247.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2250.x, x_2250.y, x_2250.z);
        let x_2253 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2253);
        let x_2258 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2258);
        let x_2262 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2262);
        let x_2266 : bool = u_xlatb35.z;
        if (x_2266) {
          let x_2271 : f32 = u_xlat11.y;
          x_2267 = x_2271;
        } else {
          let x_2274 : f32 = u_xlat60.x;
          x_2267 = x_2274;
        }
        let x_2275 : f32 = x_2267;
        u_xlat60.x = x_2275;
        let x_2279 : bool = u_xlatb35.x;
        if (x_2279) {
          let x_2284 : f32 = u_xlat11.x;
          x_2280 = x_2284;
        } else {
          let x_2287 : f32 = u_xlat60.x;
          x_2280 = x_2287;
        }
        let x_2288 : f32 = x_2280;
        u_xlat35 = x_2288;
        let x_2289 : i32 = u_xlati81;
        let x_2291 : f32 = x_138.x_AdditionalShadowParams[x_2289].w;
        u_xlat60.x = trunc(x_2291);
        let x_2294 : f32 = u_xlat35;
        let x_2296 : f32 = u_xlat60.x;
        u_xlat35 = (x_2294 + x_2296);
        let x_2298 : f32 = u_xlat35;
        u_xlati10 = i32(x_2298);
      }
      let x_2300 : i32 = u_xlati10;
      u_xlati10 = (x_2300 << bitcast<u32>(2i));
      let x_2302 : vec3<f32> = vs_TEXCOORD7;
      let x_2305 : i32 = u_xlati10;
      let x_2308 : i32 = u_xlati10;
      let x_2312 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_2305 + 1i) / 4i)][((x_2308 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2302.y, x_2302.y, x_2302.y, x_2302.y) * x_2312);
      let x_2314 : i32 = u_xlati10;
      let x_2316 : i32 = u_xlati10;
      let x_2319 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[(x_2314 / 4i)][(x_2316 % 4i)];
      let x_2320 : vec3<f32> = vs_TEXCOORD7;
      let x_2323 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2319 * vec4<f32>(x_2320.x, x_2320.x, x_2320.x, x_2320.x)) + x_2323);
      let x_2325 : i32 = u_xlati10;
      let x_2328 : i32 = u_xlati10;
      let x_2332 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_2325 + 2i) / 4i)][((x_2328 + 2i) % 4i)];
      let x_2333 : vec3<f32> = vs_TEXCOORD7;
      let x_2336 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2332 * vec4<f32>(x_2333.z, x_2333.z, x_2333.z, x_2333.z)) + x_2336);
      let x_2338 : vec4<f32> = u_xlat11;
      let x_2339 : i32 = u_xlati10;
      let x_2342 : i32 = u_xlati10;
      let x_2346 : vec4<f32> = x_138.x_AdditionalLightsWorldToShadow[((x_2339 + 3i) / 4i)][((x_2342 + 3i) % 4i)];
      u_xlat10 = (x_2338 + x_2346);
      let x_2348 : vec4<f32> = u_xlat10;
      let x_2350 : vec4<f32> = u_xlat10;
      let x_2352 : vec3<f32> = (vec3<f32>(x_2348.x, x_2348.y, x_2348.z) / vec3<f32>(x_2350.w, x_2350.w, x_2350.w));
      let x_2353 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2353.w);
      let x_2356 : i32 = u_xlati81;
      let x_2358 : f32 = x_138.x_AdditionalShadowParams[x_2356].y;
      u_xlatb85 = (0.0f < x_2358);
      let x_2360 : bool = u_xlatb85;
      if (x_2360) {
        let x_2363 : i32 = u_xlati81;
        let x_2365 : f32 = x_138.x_AdditionalShadowParams[x_2363].y;
        u_xlatb85 = (1.0f == x_2365);
        let x_2367 : bool = u_xlatb85;
        if (x_2367) {
          let x_2370 : vec4<f32> = u_xlat10;
          let x_2374 : vec4<f32> = x_138.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2370.x, x_2370.y, x_2370.x, x_2370.y) + x_2374);
          let x_2377 : vec4<f32> = u_xlat11;
          let x_2378 : vec2<f32> = vec2<f32>(x_2377.x, x_2377.y);
          let x_2380 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2378.x, x_2378.y, x_2380);
          let x_2388 : vec3<f32> = txVec30;
          let x_2390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2388.xy, x_2388.z);
          u_xlat12.x = x_2390;
          let x_2393 : vec4<f32> = u_xlat11;
          let x_2394 : vec2<f32> = vec2<f32>(x_2393.z, x_2393.w);
          let x_2396 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2394.x, x_2394.y, x_2396);
          let x_2403 : vec3<f32> = txVec31;
          let x_2405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2403.xy, x_2403.z);
          u_xlat12.y = x_2405;
          let x_2407 : vec4<f32> = u_xlat10;
          let x_2411 : vec4<f32> = x_138.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2407.x, x_2407.y, x_2407.x, x_2407.y) + x_2411);
          let x_2414 : vec4<f32> = u_xlat11;
          let x_2415 : vec2<f32> = vec2<f32>(x_2414.x, x_2414.y);
          let x_2417 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2415.x, x_2415.y, x_2417);
          let x_2424 : vec3<f32> = txVec32;
          let x_2426 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2424.xy, x_2424.z);
          u_xlat12.z = x_2426;
          let x_2429 : vec4<f32> = u_xlat11;
          let x_2430 : vec2<f32> = vec2<f32>(x_2429.z, x_2429.w);
          let x_2432 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2430.x, x_2430.y, x_2432);
          let x_2439 : vec3<f32> = txVec33;
          let x_2441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2439.xy, x_2439.z);
          u_xlat12.w = x_2441;
          let x_2444 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2444, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2447 : i32 = u_xlati81;
          let x_2449 : f32 = x_138.x_AdditionalShadowParams[x_2447].y;
          u_xlatb11.x = (2.0f == x_2449);
          let x_2453 : bool = u_xlatb11.x;
          if (x_2453) {
            let x_2456 : vec4<f32> = u_xlat10;
            let x_2460 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2463 : vec2<f32> = ((vec2<f32>(x_2456.x, x_2456.y) * vec2<f32>(x_2460.z, x_2460.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2464 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
            let x_2466 : vec4<f32> = u_xlat11;
            let x_2468 : vec2<f32> = floor(vec2<f32>(x_2466.x, x_2466.y));
            let x_2469 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2468.x, x_2468.y, x_2469.z, x_2469.w);
            let x_2472 : vec4<f32> = u_xlat10;
            let x_2475 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2478 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2472.x, x_2472.y) * vec2<f32>(x_2475.z, x_2475.w)) + -(vec2<f32>(x_2478.x, x_2478.y)));
            let x_2482 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2482.x, x_2482.x, x_2482.y, x_2482.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2485 : vec4<f32> = u_xlat12;
            let x_2487 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2485.x, x_2485.x, x_2485.z, x_2485.z) * vec4<f32>(x_2487.x, x_2487.x, x_2487.z, x_2487.z));
            let x_2490 : vec4<f32> = u_xlat13;
            let x_2492 : vec2<f32> = (vec2<f32>(x_2490.y, x_2490.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2493 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2492.x, x_2493.y, x_2492.y, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat13;
            let x_2498 : vec2<f32> = u_xlat61;
            let x_2500 : vec2<f32> = ((vec2<f32>(x_2495.x, x_2495.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2498));
            let x_2501 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2500.x, x_2500.y, x_2501.z, x_2501.w);
            let x_2503 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2503) + vec2<f32>(1.0f, 1.0f));
            let x_2506 : vec2<f32> = u_xlat61;
            let x_2507 : vec2<f32> = min(x_2506, vec2<f32>(0.0f, 0.0f));
            let x_2508 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2507.x, x_2507.y, x_2508.z, x_2508.w);
            let x_2510 : vec4<f32> = u_xlat14;
            let x_2513 : vec4<f32> = u_xlat14;
            let x_2516 : vec2<f32> = u_xlat63;
            let x_2517 : vec2<f32> = ((-(vec2<f32>(x_2510.x, x_2510.y)) * vec2<f32>(x_2513.x, x_2513.y)) + x_2516);
            let x_2518 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2517.x, x_2517.y, x_2518.z, x_2518.w);
            let x_2520 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2520, vec2<f32>(0.0f, 0.0f));
            let x_2522 : vec2<f32> = u_xlat61;
            let x_2524 : vec2<f32> = u_xlat61;
            let x_2526 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2522) * x_2524) + vec2<f32>(x_2526.y, x_2526.w));
            let x_2529 : vec4<f32> = u_xlat14;
            let x_2531 : vec2<f32> = (vec2<f32>(x_2529.x, x_2529.y) + vec2<f32>(1.0f, 1.0f));
            let x_2532 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2531.x, x_2531.y, x_2532.z, x_2532.w);
            let x_2534 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2534 + vec2<f32>(1.0f, 1.0f));
            let x_2536 : vec4<f32> = u_xlat13;
            let x_2538 : vec2<f32> = (vec2<f32>(x_2536.x, x_2536.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2539 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2538.x, x_2538.y, x_2539.z, x_2539.w);
            let x_2541 : vec2<f32> = u_xlat63;
            let x_2542 : vec2<f32> = (x_2541 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2543 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2542.x, x_2542.y, x_2543.z, x_2543.w);
            let x_2545 : vec4<f32> = u_xlat14;
            let x_2547 : vec2<f32> = (vec2<f32>(x_2545.x, x_2545.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2548 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2547.x, x_2547.y, x_2548.z, x_2548.w);
            let x_2550 : vec2<f32> = u_xlat61;
            let x_2551 : vec2<f32> = (x_2550 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2552 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2551.x, x_2551.y, x_2552.z, x_2552.w);
            let x_2554 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2554.y, x_2554.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2558 : f32 = u_xlat14.x;
            u_xlat15.z = x_2558;
            let x_2561 : f32 = u_xlat61.x;
            u_xlat15.w = x_2561;
            let x_2564 : f32 = u_xlat16.x;
            u_xlat13.z = x_2564;
            let x_2567 : f32 = u_xlat12.x;
            u_xlat13.w = x_2567;
            let x_2569 : vec4<f32> = u_xlat13;
            let x_2571 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2569.z, x_2569.w, x_2569.x, x_2569.z) + vec4<f32>(x_2571.z, x_2571.w, x_2571.x, x_2571.z));
            let x_2575 : f32 = u_xlat15.y;
            u_xlat14.z = x_2575;
            let x_2578 : f32 = u_xlat61.y;
            u_xlat14.w = x_2578;
            let x_2581 : f32 = u_xlat13.y;
            u_xlat16.z = x_2581;
            let x_2584 : f32 = u_xlat12.z;
            u_xlat16.w = x_2584;
            let x_2586 : vec4<f32> = u_xlat14;
            let x_2588 : vec4<f32> = u_xlat16;
            let x_2590 : vec3<f32> = (vec3<f32>(x_2586.z, x_2586.y, x_2586.w) + vec3<f32>(x_2588.z, x_2588.y, x_2588.w));
            let x_2591 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2590.x, x_2590.y, x_2590.z, x_2591.w);
            let x_2593 : vec4<f32> = u_xlat13;
            let x_2595 : vec4<f32> = u_xlat17;
            let x_2597 : vec3<f32> = (vec3<f32>(x_2593.x, x_2593.z, x_2593.w) / vec3<f32>(x_2595.z, x_2595.w, x_2595.y));
            let x_2598 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2598.w);
            let x_2600 : vec4<f32> = u_xlat13;
            let x_2602 : vec3<f32> = (vec3<f32>(x_2600.x, x_2600.y, x_2600.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2603 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
            let x_2605 : vec4<f32> = u_xlat16;
            let x_2607 : vec4<f32> = u_xlat12;
            let x_2609 : vec3<f32> = (vec3<f32>(x_2605.z, x_2605.y, x_2605.w) / vec3<f32>(x_2607.x, x_2607.y, x_2607.z));
            let x_2610 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2609.x, x_2609.y, x_2609.z, x_2610.w);
            let x_2612 : vec4<f32> = u_xlat14;
            let x_2614 : vec3<f32> = (vec3<f32>(x_2612.x, x_2612.y, x_2612.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2615 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
            let x_2617 : vec4<f32> = u_xlat13;
            let x_2620 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2622 : vec3<f32> = (vec3<f32>(x_2617.y, x_2617.x, x_2617.z) * vec3<f32>(x_2620.x, x_2620.x, x_2620.x));
            let x_2623 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
            let x_2625 : vec4<f32> = u_xlat14;
            let x_2628 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2630 : vec3<f32> = (vec3<f32>(x_2625.x, x_2625.y, x_2625.z) * vec3<f32>(x_2628.y, x_2628.y, x_2628.y));
            let x_2631 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2630.x, x_2630.y, x_2630.z, x_2631.w);
            let x_2634 : f32 = u_xlat14.x;
            u_xlat13.w = x_2634;
            let x_2636 : vec4<f32> = u_xlat11;
            let x_2639 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2642 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2636.x, x_2636.y, x_2636.x, x_2636.y) * vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.y)) + vec4<f32>(x_2642.y, x_2642.w, x_2642.x, x_2642.w));
            let x_2645 : vec4<f32> = u_xlat11;
            let x_2648 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2651 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2645.x, x_2645.y) * vec2<f32>(x_2648.x, x_2648.y)) + vec2<f32>(x_2651.z, x_2651.w));
            let x_2655 : f32 = u_xlat13.y;
            u_xlat14.w = x_2655;
            let x_2657 : vec4<f32> = u_xlat14;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.y, x_2657.z);
            let x_2659 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2659.x, x_2658.x, x_2659.z, x_2658.y);
            let x_2661 : vec4<f32> = u_xlat11;
            let x_2664 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2667 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2661.x, x_2661.y, x_2661.x, x_2661.y) * vec4<f32>(x_2664.x, x_2664.y, x_2664.x, x_2664.y)) + vec4<f32>(x_2667.x, x_2667.y, x_2667.z, x_2667.y));
            let x_2670 : vec4<f32> = u_xlat11;
            let x_2673 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2676 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2670.x, x_2670.y, x_2670.x, x_2670.y) * vec4<f32>(x_2673.x, x_2673.y, x_2673.x, x_2673.y)) + vec4<f32>(x_2676.w, x_2676.y, x_2676.w, x_2676.z));
            let x_2679 : vec4<f32> = u_xlat11;
            let x_2682 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2685 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2679.x, x_2679.y, x_2679.x, x_2679.y) * vec4<f32>(x_2682.x, x_2682.y, x_2682.x, x_2682.y)) + vec4<f32>(x_2685.x, x_2685.w, x_2685.z, x_2685.w));
            let x_2688 : vec4<f32> = u_xlat12;
            let x_2690 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2688.x, x_2688.x, x_2688.x, x_2688.y) * vec4<f32>(x_2690.z, x_2690.w, x_2690.y, x_2690.z));
            let x_2693 : vec4<f32> = u_xlat12;
            let x_2695 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2693.y, x_2693.y, x_2693.z, x_2693.z) * x_2695);
            let x_2698 : f32 = u_xlat12.z;
            let x_2700 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2698 * x_2700);
            let x_2704 : vec4<f32> = u_xlat15;
            let x_2705 : vec2<f32> = vec2<f32>(x_2704.x, x_2704.y);
            let x_2707 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2705.x, x_2705.y, x_2707);
            let x_2715 : vec3<f32> = txVec34;
            let x_2717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2715.xy, x_2715.z);
            u_xlat36 = x_2717;
            let x_2719 : vec4<f32> = u_xlat15;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.z, x_2719.w);
            let x_2722 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec35;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat12.x = x_2731;
            let x_2734 : f32 = u_xlat12.x;
            let x_2736 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2734 * x_2736);
            let x_2740 : f32 = u_xlat18.x;
            let x_2741 : f32 = u_xlat36;
            let x_2744 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2740 * x_2741) + x_2744);
            let x_2747 : vec2<f32> = u_xlat61;
            let x_2749 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2747.x, x_2747.y, x_2749);
            let x_2756 : vec3<f32> = txVec36;
            let x_2758 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2756.xy, x_2756.z);
            u_xlat61.x = x_2758;
            let x_2761 : f32 = u_xlat18.z;
            let x_2763 : f32 = u_xlat61.x;
            let x_2765 : f32 = u_xlat36;
            u_xlat36 = ((x_2761 * x_2763) + x_2765);
            let x_2768 : vec4<f32> = u_xlat14;
            let x_2769 : vec2<f32> = vec2<f32>(x_2768.x, x_2768.y);
            let x_2771 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2769.x, x_2769.y, x_2771);
            let x_2778 : vec3<f32> = txVec37;
            let x_2780 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2778.xy, x_2778.z);
            u_xlat61.x = x_2780;
            let x_2783 : f32 = u_xlat18.w;
            let x_2785 : f32 = u_xlat61.x;
            let x_2787 : f32 = u_xlat36;
            u_xlat36 = ((x_2783 * x_2785) + x_2787);
            let x_2790 : vec4<f32> = u_xlat16;
            let x_2791 : vec2<f32> = vec2<f32>(x_2790.x, x_2790.y);
            let x_2793 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2791.x, x_2791.y, x_2793);
            let x_2800 : vec3<f32> = txVec38;
            let x_2802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2800.xy, x_2800.z);
            u_xlat61.x = x_2802;
            let x_2805 : f32 = u_xlat19.x;
            let x_2807 : f32 = u_xlat61.x;
            let x_2809 : f32 = u_xlat36;
            u_xlat36 = ((x_2805 * x_2807) + x_2809);
            let x_2812 : vec4<f32> = u_xlat16;
            let x_2813 : vec2<f32> = vec2<f32>(x_2812.z, x_2812.w);
            let x_2815 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2813.x, x_2813.y, x_2815);
            let x_2822 : vec3<f32> = txVec39;
            let x_2824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2822.xy, x_2822.z);
            u_xlat61.x = x_2824;
            let x_2827 : f32 = u_xlat19.y;
            let x_2829 : f32 = u_xlat61.x;
            let x_2831 : f32 = u_xlat36;
            u_xlat36 = ((x_2827 * x_2829) + x_2831);
            let x_2834 : vec4<f32> = u_xlat14;
            let x_2835 : vec2<f32> = vec2<f32>(x_2834.z, x_2834.w);
            let x_2837 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2835.x, x_2835.y, x_2837);
            let x_2844 : vec3<f32> = txVec40;
            let x_2846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2844.xy, x_2844.z);
            u_xlat61.x = x_2846;
            let x_2849 : f32 = u_xlat19.z;
            let x_2851 : f32 = u_xlat61.x;
            let x_2853 : f32 = u_xlat36;
            u_xlat36 = ((x_2849 * x_2851) + x_2853);
            let x_2856 : vec4<f32> = u_xlat13;
            let x_2857 : vec2<f32> = vec2<f32>(x_2856.x, x_2856.y);
            let x_2859 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2857.x, x_2857.y, x_2859);
            let x_2866 : vec3<f32> = txVec41;
            let x_2868 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2866.xy, x_2866.z);
            u_xlat61.x = x_2868;
            let x_2871 : f32 = u_xlat19.w;
            let x_2873 : f32 = u_xlat61.x;
            let x_2875 : f32 = u_xlat36;
            u_xlat36 = ((x_2871 * x_2873) + x_2875);
            let x_2878 : vec4<f32> = u_xlat13;
            let x_2879 : vec2<f32> = vec2<f32>(x_2878.z, x_2878.w);
            let x_2881 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2879.x, x_2879.y, x_2881);
            let x_2888 : vec3<f32> = txVec42;
            let x_2890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2888.xy, x_2888.z);
            u_xlat61.x = x_2890;
            let x_2893 : f32 = u_xlat11.x;
            let x_2895 : f32 = u_xlat61.x;
            let x_2897 : f32 = u_xlat36;
            u_xlat85 = ((x_2893 * x_2895) + x_2897);
          } else {
            let x_2900 : vec4<f32> = u_xlat10;
            let x_2903 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2906 : vec2<f32> = ((vec2<f32>(x_2900.x, x_2900.y) * vec2<f32>(x_2903.z, x_2903.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2907 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2909 : vec4<f32> = u_xlat11;
            let x_2911 : vec2<f32> = floor(vec2<f32>(x_2909.x, x_2909.y));
            let x_2912 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2911.x, x_2911.y, x_2912.z, x_2912.w);
            let x_2914 : vec4<f32> = u_xlat10;
            let x_2917 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_2920 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2914.x, x_2914.y) * vec2<f32>(x_2917.z, x_2917.w)) + -(vec2<f32>(x_2920.x, x_2920.y)));
            let x_2924 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2924.x, x_2924.x, x_2924.y, x_2924.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2927 : vec4<f32> = u_xlat12;
            let x_2929 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2927.x, x_2927.x, x_2927.z, x_2927.z) * vec4<f32>(x_2929.x, x_2929.x, x_2929.z, x_2929.z));
            let x_2932 : vec4<f32> = u_xlat13;
            let x_2934 : vec2<f32> = (vec2<f32>(x_2932.y, x_2932.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2935 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2935.x, x_2934.x, x_2935.z, x_2934.y);
            let x_2937 : vec4<f32> = u_xlat13;
            let x_2940 : vec2<f32> = u_xlat61;
            let x_2942 : vec2<f32> = ((vec2<f32>(x_2937.x, x_2937.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2940));
            let x_2943 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2942.x, x_2943.y, x_2942.y, x_2943.w);
            let x_2945 : vec2<f32> = u_xlat61;
            let x_2947 : vec2<f32> = (-(x_2945) + vec2<f32>(1.0f, 1.0f));
            let x_2948 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2947.x, x_2947.y, x_2948.z, x_2948.w);
            let x_2950 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2950, vec2<f32>(0.0f, 0.0f));
            let x_2952 : vec2<f32> = u_xlat63;
            let x_2954 : vec2<f32> = u_xlat63;
            let x_2956 : vec4<f32> = u_xlat13;
            let x_2958 : vec2<f32> = ((-(x_2952) * x_2954) + vec2<f32>(x_2956.x, x_2956.y));
            let x_2959 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2958.x, x_2958.y, x_2959.z, x_2959.w);
            let x_2961 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2961, vec2<f32>(0.0f, 0.0f));
            let x_2964 : vec2<f32> = u_xlat63;
            let x_2966 : vec2<f32> = u_xlat63;
            let x_2968 : vec4<f32> = u_xlat12;
            let x_2970 : vec2<f32> = ((-(x_2964) * x_2966) + vec2<f32>(x_2968.y, x_2968.w));
            let x_2971 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2970.x, x_2971.y, x_2970.y);
            let x_2973 : vec4<f32> = u_xlat13;
            let x_2976 : vec2<f32> = (vec2<f32>(x_2973.x, x_2973.y) + vec2<f32>(2.0f, 2.0f));
            let x_2977 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2976.x, x_2976.y, x_2977.z, x_2977.w);
            let x_2979 : vec3<f32> = u_xlat37;
            let x_2981 : vec2<f32> = (vec2<f32>(x_2979.x, x_2979.z) + vec2<f32>(2.0f, 2.0f));
            let x_2982 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2982.x, x_2981.x, x_2982.z, x_2981.y);
            let x_2985 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2985 * 0.08163200318813323975f);
            let x_2988 : vec4<f32> = u_xlat12;
            let x_2991 : vec3<f32> = (vec3<f32>(x_2988.z, x_2988.x, x_2988.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2992 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2991.x, x_2991.y, x_2991.z, x_2992.w);
            let x_2994 : vec4<f32> = u_xlat13;
            let x_2996 : vec2<f32> = (vec2<f32>(x_2994.x, x_2994.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2997 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2996.x, x_2996.y, x_2997.z, x_2997.w);
            let x_3000 : f32 = u_xlat16.y;
            u_xlat15.x = x_3000;
            let x_3002 : vec2<f32> = u_xlat61;
            let x_3005 : vec2<f32> = ((vec2<f32>(x_3002.x, x_3002.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3006 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3006.x, x_3005.x, x_3006.z, x_3005.y);
            let x_3008 : vec2<f32> = u_xlat61;
            let x_3011 : vec2<f32> = ((vec2<f32>(x_3008.x, x_3008.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3012 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3011.x, x_3012.y, x_3011.y, x_3012.w);
            let x_3015 : f32 = u_xlat12.x;
            u_xlat13.y = x_3015;
            let x_3018 : f32 = u_xlat14.y;
            u_xlat13.w = x_3018;
            let x_3020 : vec4<f32> = u_xlat13;
            let x_3021 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3020 + x_3021);
            let x_3023 : vec2<f32> = u_xlat61;
            let x_3026 : vec2<f32> = ((vec2<f32>(x_3023.y, x_3023.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3027 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3027.x, x_3026.x, x_3027.z, x_3026.y);
            let x_3029 : vec2<f32> = u_xlat61;
            let x_3032 : vec2<f32> = ((vec2<f32>(x_3029.y, x_3029.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3033 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3032.x, x_3033.y, x_3032.y, x_3033.w);
            let x_3036 : f32 = u_xlat12.y;
            u_xlat14.y = x_3036;
            let x_3038 : vec4<f32> = u_xlat14;
            let x_3039 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3038 + x_3039);
            let x_3041 : vec4<f32> = u_xlat13;
            let x_3042 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3041 / x_3042);
            let x_3044 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3044 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3046 : vec4<f32> = u_xlat14;
            let x_3047 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3046 / x_3047);
            let x_3049 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3049 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3051 : vec4<f32> = u_xlat13;
            let x_3054 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3051.w, x_3051.x, x_3051.y, x_3051.z) * vec4<f32>(x_3054.x, x_3054.x, x_3054.x, x_3054.x));
            let x_3057 : vec4<f32> = u_xlat14;
            let x_3060 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3057.x, x_3057.w, x_3057.y, x_3057.z) * vec4<f32>(x_3060.y, x_3060.y, x_3060.y, x_3060.y));
            let x_3063 : vec4<f32> = u_xlat13;
            let x_3064 : vec3<f32> = vec3<f32>(x_3063.y, x_3063.z, x_3063.w);
            let x_3065 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3064.x, x_3065.y, x_3064.y, x_3064.z);
            let x_3068 : f32 = u_xlat14.x;
            u_xlat16.y = x_3068;
            let x_3070 : vec4<f32> = u_xlat11;
            let x_3073 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3076 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3070.x, x_3070.y, x_3070.x, x_3070.y) * vec4<f32>(x_3073.x, x_3073.y, x_3073.x, x_3073.y)) + vec4<f32>(x_3076.x, x_3076.y, x_3076.z, x_3076.y));
            let x_3079 : vec4<f32> = u_xlat11;
            let x_3082 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3085 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3079.x, x_3079.y) * vec2<f32>(x_3082.x, x_3082.y)) + vec2<f32>(x_3085.w, x_3085.y));
            let x_3089 : f32 = u_xlat16.y;
            u_xlat13.y = x_3089;
            let x_3092 : f32 = u_xlat14.z;
            u_xlat16.y = x_3092;
            let x_3094 : vec4<f32> = u_xlat11;
            let x_3097 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3094.x, x_3094.y, x_3094.x, x_3094.y) * vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y)) + vec4<f32>(x_3100.x, x_3100.y, x_3100.z, x_3100.y));
            let x_3103 : vec4<f32> = u_xlat11;
            let x_3106 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat16;
            let x_3111 : vec2<f32> = ((vec2<f32>(x_3103.x, x_3103.y) * vec2<f32>(x_3106.x, x_3106.y)) + vec2<f32>(x_3109.w, x_3109.y));
            let x_3112 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3111.x, x_3111.y, x_3112.z, x_3112.w);
            let x_3115 : f32 = u_xlat16.y;
            u_xlat13.z = x_3115;
            let x_3117 : vec4<f32> = u_xlat11;
            let x_3120 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3123 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3117.x, x_3117.y, x_3117.x, x_3117.y) * vec4<f32>(x_3120.x, x_3120.y, x_3120.x, x_3120.y)) + vec4<f32>(x_3123.x, x_3123.y, x_3123.x, x_3123.z));
            let x_3127 : f32 = u_xlat14.w;
            u_xlat16.y = x_3127;
            let x_3130 : vec4<f32> = u_xlat11;
            let x_3133 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3136 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3130.x, x_3130.y, x_3130.x, x_3130.y) * vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y)) + vec4<f32>(x_3136.x, x_3136.y, x_3136.z, x_3136.y));
            let x_3140 : vec4<f32> = u_xlat11;
            let x_3143 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3146 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3140.x, x_3140.y) * vec2<f32>(x_3143.x, x_3143.y)) + vec2<f32>(x_3146.w, x_3146.y));
            let x_3150 : f32 = u_xlat16.y;
            u_xlat13.w = x_3150;
            let x_3153 : vec4<f32> = u_xlat11;
            let x_3156 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3153.x, x_3153.y) * vec2<f32>(x_3156.x, x_3156.y)) + vec2<f32>(x_3159.x, x_3159.w));
            let x_3162 : vec4<f32> = u_xlat16;
            let x_3163 : vec3<f32> = vec3<f32>(x_3162.x, x_3162.z, x_3162.w);
            let x_3164 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3163.x, x_3164.y, x_3163.y, x_3163.z);
            let x_3166 : vec4<f32> = u_xlat11;
            let x_3169 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3172 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3166.x, x_3166.y, x_3166.x, x_3166.y) * vec4<f32>(x_3169.x, x_3169.y, x_3169.x, x_3169.y)) + vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3172.y));
            let x_3176 : vec4<f32> = u_xlat11;
            let x_3179 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3182 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3176.x, x_3176.y) * vec2<f32>(x_3179.x, x_3179.y)) + vec2<f32>(x_3182.w, x_3182.y));
            let x_3186 : f32 = u_xlat13.x;
            u_xlat14.x = x_3186;
            let x_3188 : vec4<f32> = u_xlat11;
            let x_3191 : vec4<f32> = x_138.x_AdditionalShadowmapSize;
            let x_3194 : vec4<f32> = u_xlat14;
            let x_3196 : vec2<f32> = ((vec2<f32>(x_3188.x, x_3188.y) * vec2<f32>(x_3191.x, x_3191.y)) + vec2<f32>(x_3194.x, x_3194.y));
            let x_3197 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3196.x, x_3196.y, x_3197.z, x_3197.w);
            let x_3200 : vec4<f32> = u_xlat12;
            let x_3202 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3200.x, x_3200.x, x_3200.x, x_3200.x) * x_3202);
            let x_3205 : vec4<f32> = u_xlat12;
            let x_3207 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3205.y, x_3205.y, x_3205.y, x_3205.y) * x_3207);
            let x_3210 : vec4<f32> = u_xlat12;
            let x_3212 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3210.z, x_3210.z, x_3210.z, x_3210.z) * x_3212);
            let x_3214 : vec4<f32> = u_xlat12;
            let x_3216 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3214.w, x_3214.w, x_3214.w, x_3214.w) * x_3216);
            let x_3219 : vec4<f32> = u_xlat17;
            let x_3220 : vec2<f32> = vec2<f32>(x_3219.x, x_3219.y);
            let x_3222 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3220.x, x_3220.y, x_3222);
            let x_3229 : vec3<f32> = txVec43;
            let x_3231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3229.xy, x_3229.z);
            u_xlat13.x = x_3231;
            let x_3234 : vec4<f32> = u_xlat17;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.z, x_3234.w);
            let x_3237 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3245 : vec3<f32> = txVec44;
            let x_3247 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3245.xy, x_3245.z);
            u_xlat88 = x_3247;
            let x_3248 : f32 = u_xlat88;
            let x_3250 : f32 = u_xlat22.y;
            u_xlat88 = (x_3248 * x_3250);
            let x_3253 : f32 = u_xlat22.x;
            let x_3255 : f32 = u_xlat13.x;
            let x_3257 : f32 = u_xlat88;
            u_xlat13.x = ((x_3253 * x_3255) + x_3257);
            let x_3261 : vec2<f32> = u_xlat61;
            let x_3263 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3261.x, x_3261.y, x_3263);
            let x_3270 : vec3<f32> = txVec45;
            let x_3272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3270.xy, x_3270.z);
            u_xlat61.x = x_3272;
            let x_3275 : f32 = u_xlat22.z;
            let x_3277 : f32 = u_xlat61.x;
            let x_3280 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3275 * x_3277) + x_3280);
            let x_3284 : vec4<f32> = u_xlat20;
            let x_3285 : vec2<f32> = vec2<f32>(x_3284.x, x_3284.y);
            let x_3287 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3285.x, x_3285.y, x_3287);
            let x_3295 : vec3<f32> = txVec46;
            let x_3297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3295.xy, x_3295.z);
            u_xlat86 = x_3297;
            let x_3299 : f32 = u_xlat22.w;
            let x_3300 : f32 = u_xlat86;
            let x_3303 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3299 * x_3300) + x_3303);
            let x_3307 : vec4<f32> = u_xlat18;
            let x_3308 : vec2<f32> = vec2<f32>(x_3307.x, x_3307.y);
            let x_3310 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec47;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat86 = x_3319;
            let x_3321 : f32 = u_xlat23.x;
            let x_3322 : f32 = u_xlat86;
            let x_3325 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3321 * x_3322) + x_3325);
            let x_3329 : vec4<f32> = u_xlat18;
            let x_3330 : vec2<f32> = vec2<f32>(x_3329.z, x_3329.w);
            let x_3332 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
            let x_3339 : vec3<f32> = txVec48;
            let x_3341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3339.xy, x_3339.z);
            u_xlat86 = x_3341;
            let x_3343 : f32 = u_xlat23.y;
            let x_3344 : f32 = u_xlat86;
            let x_3347 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3343 * x_3344) + x_3347);
            let x_3351 : vec4<f32> = u_xlat19;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.x, x_3351.y);
            let x_3354 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3361 : vec3<f32> = txVec49;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat86 = x_3363;
            let x_3365 : f32 = u_xlat23.z;
            let x_3366 : f32 = u_xlat86;
            let x_3369 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3365 * x_3366) + x_3369);
            let x_3373 : vec4<f32> = u_xlat20;
            let x_3374 : vec2<f32> = vec2<f32>(x_3373.z, x_3373.w);
            let x_3376 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3374.x, x_3374.y, x_3376);
            let x_3383 : vec3<f32> = txVec50;
            let x_3385 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3383.xy, x_3383.z);
            u_xlat86 = x_3385;
            let x_3387 : f32 = u_xlat23.w;
            let x_3388 : f32 = u_xlat86;
            let x_3391 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3387 * x_3388) + x_3391);
            let x_3395 : vec4<f32> = u_xlat21;
            let x_3396 : vec2<f32> = vec2<f32>(x_3395.x, x_3395.y);
            let x_3398 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3396.x, x_3396.y, x_3398);
            let x_3405 : vec3<f32> = txVec51;
            let x_3407 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3405.xy, x_3405.z);
            u_xlat86 = x_3407;
            let x_3409 : f32 = u_xlat24.x;
            let x_3410 : f32 = u_xlat86;
            let x_3413 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3409 * x_3410) + x_3413);
            let x_3417 : vec4<f32> = u_xlat21;
            let x_3418 : vec2<f32> = vec2<f32>(x_3417.z, x_3417.w);
            let x_3420 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec52;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat86 = x_3429;
            let x_3431 : f32 = u_xlat24.y;
            let x_3432 : f32 = u_xlat86;
            let x_3435 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3431 * x_3432) + x_3435);
            let x_3439 : vec2<f32> = u_xlat38;
            let x_3441 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3439.x, x_3439.y, x_3441);
            let x_3448 : vec3<f32> = txVec53;
            let x_3450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3448.xy, x_3448.z);
            u_xlat86 = x_3450;
            let x_3452 : f32 = u_xlat24.z;
            let x_3453 : f32 = u_xlat86;
            let x_3456 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3452 * x_3453) + x_3456);
            let x_3460 : vec2<f32> = u_xlat69;
            let x_3462 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3460.x, x_3460.y, x_3462);
            let x_3469 : vec3<f32> = txVec54;
            let x_3471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3469.xy, x_3469.z);
            u_xlat86 = x_3471;
            let x_3473 : f32 = u_xlat24.w;
            let x_3474 : f32 = u_xlat86;
            let x_3477 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3473 * x_3474) + x_3477);
            let x_3481 : vec4<f32> = u_xlat16;
            let x_3482 : vec2<f32> = vec2<f32>(x_3481.x, x_3481.y);
            let x_3484 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3482.x, x_3482.y, x_3484);
            let x_3491 : vec3<f32> = txVec55;
            let x_3493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3491.xy, x_3491.z);
            u_xlat86 = x_3493;
            let x_3495 : f32 = u_xlat12.x;
            let x_3496 : f32 = u_xlat86;
            let x_3499 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3495 * x_3496) + x_3499);
            let x_3503 : vec4<f32> = u_xlat16;
            let x_3504 : vec2<f32> = vec2<f32>(x_3503.z, x_3503.w);
            let x_3506 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3504.x, x_3504.y, x_3506);
            let x_3513 : vec3<f32> = txVec56;
            let x_3515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3513.xy, x_3513.z);
            u_xlat86 = x_3515;
            let x_3517 : f32 = u_xlat12.y;
            let x_3518 : f32 = u_xlat86;
            let x_3521 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3517 * x_3518) + x_3521);
            let x_3525 : vec2<f32> = u_xlat64;
            let x_3527 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3525.x, x_3525.y, x_3527);
            let x_3534 : vec3<f32> = txVec57;
            let x_3536 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3534.xy, x_3534.z);
            u_xlat86 = x_3536;
            let x_3538 : f32 = u_xlat12.z;
            let x_3539 : f32 = u_xlat86;
            let x_3542 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3538 * x_3539) + x_3542);
            let x_3546 : vec4<f32> = u_xlat11;
            let x_3547 : vec2<f32> = vec2<f32>(x_3546.x, x_3546.y);
            let x_3549 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3547.x, x_3547.y, x_3549);
            let x_3556 : vec3<f32> = txVec58;
            let x_3558 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3556.xy, x_3556.z);
            u_xlat11.x = x_3558;
            let x_3561 : f32 = u_xlat12.w;
            let x_3563 : f32 = u_xlat11.x;
            let x_3566 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3561 * x_3563) + x_3566);
          }
        }
      } else {
        let x_3570 : vec4<f32> = u_xlat10;
        let x_3571 : vec2<f32> = vec2<f32>(x_3570.x, x_3570.y);
        let x_3573 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
        let x_3580 : vec3<f32> = txVec59;
        let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
        u_xlat85 = x_3582;
      }
      let x_3583 : i32 = u_xlati81;
      let x_3585 : f32 = x_138.x_AdditionalShadowParams[x_3583].x;
      u_xlat10.x = (1.0f + -(x_3585));
      let x_3589 : f32 = u_xlat85;
      let x_3590 : i32 = u_xlati81;
      let x_3592 : f32 = x_138.x_AdditionalShadowParams[x_3590].x;
      let x_3595 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3589 * x_3592) + x_3595);
      let x_3599 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3599);
      let x_3604 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3604 >= 1.0f);
      let x_3606 : bool = u_xlatb60;
      let x_3608 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3606 | x_3608);
      let x_3612 : bool = u_xlatb35.x;
      if (x_3612) {
        x_3613 = 1.0f;
      } else {
        let x_3618 : f32 = u_xlat10.x;
        x_3613 = x_3618;
      }
      let x_3619 : f32 = x_3613;
      u_xlat10.x = x_3619;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3624 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3624) + 1.0f);
    let x_3627 : f32 = u_xlat1;
    let x_3628 : f32 = u_xlat35;
    let x_3631 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3627 * x_3628) + x_3631);
    let x_3634 : f32 = u_xlat83;
    let x_3636 : f32 = u_xlat10.x;
    u_xlat83 = (x_3634 * x_3636);
    let x_3638 : vec4<f32> = u_xlat2;
    let x_3640 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_3638.x, x_3638.y, x_3638.z), x_3640);
    let x_3644 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3644, 0.0f, 1.0f);
    let x_3647 : f32 = u_xlat83;
    let x_3649 : f32 = u_xlat10.x;
    u_xlat83 = (x_3647 * x_3649);
    let x_3651 : f32 = u_xlat83;
    let x_3653 : i32 = u_xlati81;
    let x_3655 : vec4<f32> = x_2119.x_AdditionalLightsColor[x_3653];
    let x_3657 : vec3<f32> = (vec3<f32>(x_3651, x_3651, x_3651) * vec3<f32>(x_3655.x, x_3655.y, x_3655.z));
    let x_3658 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3657.x, x_3657.y, x_3657.z, x_3658.w);
    let x_3660 : vec4<f32> = u_xlat8;
    let x_3662 : vec4<f32> = u_xlat9;
    let x_3665 : vec3<f32> = u_xlat26;
    let x_3666 : vec3<f32> = ((vec3<f32>(x_3660.x, x_3660.y, x_3660.z) * vec3<f32>(x_3662.x, x_3662.x, x_3662.x)) + x_3665);
    let x_3667 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3666.x, x_3666.y, x_3666.z, x_3667.w);
    let x_3669 : vec4<f32> = u_xlat8;
    let x_3671 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3669.x, x_3669.y, x_3669.z), vec3<f32>(x_3671.x, x_3671.y, x_3671.z));
    let x_3674 : f32 = u_xlat81;
    u_xlat81 = max(x_3674, 1.17549435e-38f);
    let x_3676 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3676);
    let x_3678 : f32 = u_xlat81;
    let x_3680 : vec4<f32> = u_xlat8;
    let x_3682 : vec3<f32> = (vec3<f32>(x_3678, x_3678, x_3678) * vec3<f32>(x_3680.x, x_3680.y, x_3680.z));
    let x_3683 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3682.x, x_3682.y, x_3682.z, x_3683.w);
    let x_3685 : vec4<f32> = u_xlat2;
    let x_3687 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3685.x, x_3685.y, x_3685.z), vec3<f32>(x_3687.x, x_3687.y, x_3687.z));
    let x_3690 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3690, 0.0f, 1.0f);
    let x_3692 : vec3<f32> = u_xlat34;
    let x_3693 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3692, vec3<f32>(x_3693.x, x_3693.y, x_3693.z));
    let x_3698 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3698, 0.0f, 1.0f);
    let x_3701 : f32 = u_xlat81;
    let x_3702 : f32 = u_xlat81;
    u_xlat81 = (x_3701 * x_3702);
    let x_3704 : f32 = u_xlat81;
    let x_3706 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3704 * x_3706) + 1.00001001358032226562f);
    let x_3710 : f32 = u_xlat8.x;
    let x_3712 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3710 * x_3712);
    let x_3715 : f32 = u_xlat81;
    let x_3716 : f32 = u_xlat81;
    u_xlat81 = (x_3715 * x_3716);
    let x_3719 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3719, 0.10000000149011611938f);
    let x_3722 : f32 = u_xlat81;
    let x_3724 : f32 = u_xlat8.x;
    u_xlat81 = (x_3722 * x_3724);
    let x_3726 : f32 = u_xlat79;
    let x_3727 : f32 = u_xlat81;
    u_xlat81 = (x_3726 * x_3727);
    let x_3729 : f32 = u_xlat80;
    let x_3730 : f32 = u_xlat81;
    u_xlat81 = (x_3729 / x_3730);
    let x_3732 : vec4<f32> = u_xlat0;
    let x_3734 : f32 = u_xlat81;
    let x_3737 : vec4<f32> = u_xlat5;
    let x_3739 : vec3<f32> = ((vec3<f32>(x_3732.x, x_3732.y, x_3732.z) * vec3<f32>(x_3734, x_3734, x_3734)) + vec3<f32>(x_3737.x, x_3737.y, x_3737.z));
    let x_3740 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3739.x, x_3739.y, x_3739.z, x_3740.w);
    let x_3742 : vec4<f32> = u_xlat8;
    let x_3744 : vec4<f32> = u_xlat10;
    let x_3747 : vec4<f32> = u_xlat3;
    let x_3749 : vec3<f32> = ((vec3<f32>(x_3742.x, x_3742.y, x_3742.z) * vec3<f32>(x_3744.x, x_3744.y, x_3744.z)) + vec3<f32>(x_3747.x, x_3747.y, x_3747.z));
    let x_3750 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_3749.x, x_3749.y, x_3749.z, x_3750.w);

    continuing {
      let x_3752 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3752 + bitcast<u32>(1i));
    }
  }
  let x_3754 : vec3<f32> = u_xlat32;
  let x_3755 : vec4<f32> = u_xlat6;
  let x_3758 : vec4<f32> = u_xlat4;
  let x_3760 : vec3<f32> = ((x_3754 * vec3<f32>(x_3755.x, x_3755.y, x_3755.z)) + vec3<f32>(x_3758.x, x_3758.y, x_3758.z));
  let x_3761 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);
  let x_3763 : vec4<f32> = u_xlat3;
  let x_3765 : vec4<f32> = u_xlat0;
  let x_3767 : vec3<f32> = (vec3<f32>(x_3763.x, x_3763.y, x_3763.z) + vec3<f32>(x_3765.x, x_3765.y, x_3765.z));
  let x_3768 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3767.x, x_3767.y, x_3767.z, x_3768.w);
  let x_3770 : f32 = u_xlat78;
  let x_3771 : f32 = u_xlat78;
  u_xlat75 = (x_3770 * -(x_3771));
  let x_3774 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3774);
  let x_3776 : vec4<f32> = u_xlat0;
  let x_3779 : vec4<f32> = x_29.unity_FogColor;
  let x_3782 : vec3<f32> = (vec3<f32>(x_3776.x, x_3776.y, x_3776.z) + -(vec3<f32>(x_3779.x, x_3779.y, x_3779.z)));
  let x_3783 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3782.x, x_3782.y, x_3782.z, x_3783.w);
  let x_3787 : f32 = u_xlat75;
  let x_3789 : vec4<f32> = u_xlat0;
  let x_3793 : vec4<f32> = x_29.unity_FogColor;
  let x_3795 : vec3<f32> = ((vec3<f32>(x_3787, x_3787, x_3787) * vec3<f32>(x_3789.x, x_3789.y, x_3789.z)) + vec3<f32>(x_3793.x, x_3793.y, x_3793.z));
  let x_3796 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3795.x, x_3795.y, x_3795.z, x_3796.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


