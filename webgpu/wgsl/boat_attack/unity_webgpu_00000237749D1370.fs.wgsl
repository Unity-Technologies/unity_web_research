diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_163 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(1) @binding(2) var<uniform> x_367 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb66 : bool;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat67 : f32;

var<private> u_xlat68 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb67 : bool;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1843 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu67 : u32;

var<private> u_xlatb68 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
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
  var x_1687 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1980 : f32;
  var x_1990 : f32;
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
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat22 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat44 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat66 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat66;
  let x_88 : f32 = u_xlat44;
  u_xlat44 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat44;
  u_xlat44 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat22;
  let x_95 : f32 = u_xlat44;
  u_xlat22 = (x_94 / x_95);
  let x_97 : f32 = u_xlat22;
  u_xlat22 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat22;
  u_xlat22 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb44;
  if (x_108) {
    let x_112 : f32 = u_xlat22;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres0;
  let x_169 : vec3<f32> = (vec3<f32>(x_153.x, x_153.y, x_153.z) + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = vs_TEXCOORD2;
  let x_177 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres1;
  let x_180 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  let x_188 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres2;
  let x_191 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = vs_TEXCOORD2;
  let x_198 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres3;
  let x_201 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + -(vec3<f32>(x_198.x, x_198.y, x_198.z)));
  let x_202 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_217 : vec4<f32> = u_xlat5;
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_224 : vec4<f32> = u_xlat6;
  let x_226 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_233 : vec4<f32> = u_xlat3;
  let x_236 : vec4<f32> = x_163.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_233 < x_236);
  let x_239 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_247);
  let x_251 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_251);
  let x_255 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_255);
  let x_261 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_261);
  let x_265 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_265);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat4;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(x_270.y, x_270.z, x_270.w));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat3;
  let x_278 : vec3<f32> = max(vec3<f32>(x_275.x, x_275.y, x_275.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_278.x, x_278.y, x_278.z);
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_281, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_289 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_289) + 4.0f);
  let x_296 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_296);
  let x_300 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_300) << bitcast<u32>(2i));
  let x_303 : vec4<f32> = vs_TEXCOORD2;
  let x_305 : i32 = u_xlati0;
  let x_308 : i32 = u_xlati0;
  let x_312 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_305 + 1i) / 4i)][((x_308 + 1i) % 4i)];
  let x_314 : vec3<f32> = (vec3<f32>(x_303.y, x_303.y, x_303.y) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : i32 = u_xlati0;
  let x_319 : i32 = u_xlati0;
  let x_322 : vec4<f32> = x_163.x_MainLightWorldToShadow[(x_317 / 4i)][(x_319 % 4i)];
  let x_324 : vec4<f32> = vs_TEXCOORD2;
  let x_327 : vec4<f32> = u_xlat3;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.x, x_324.x)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : i32 = u_xlati0;
  let x_335 : i32 = u_xlati0;
  let x_339 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_332 + 2i) / 4i)][((x_335 + 2i) % 4i)];
  let x_341 : vec4<f32> = vs_TEXCOORD2;
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.z, x_341.z, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat3;
  let x_351 : i32 = u_xlati0;
  let x_354 : i32 = u_xlati0;
  let x_358 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_351 + 3i) / 4i)][((x_354 + 3i) % 4i)];
  let x_360 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
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
  let x_410 : f32 = u_xlat2.y;
  let x_412 : f32 = u_xlat2.y;
  u_xlat0.x = (x_410 * x_412);
  let x_416 : f32 = u_xlat2.x;
  let x_418 : f32 = u_xlat2.x;
  let x_421 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_416 * x_418) + -(x_421));
  let x_427 : vec4<f32> = x_367.unity_SHC;
  let x_429 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = u_xlat6;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.x, x_429.x, x_429.x)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat4;
  let x_439 : vec4<f32> = u_xlat5;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat4;
  let x_446 : vec3<f32> = max(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_451 : f32 = x_163.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_451);
  let x_453 : bool = u_xlatb0;
  if (x_453) {
    let x_457 : f32 = x_163.x_MainLightShadowParams.y;
    u_xlatb0 = (x_457 == 1.0f);
    let x_459 : bool = u_xlatb0;
    if (x_459) {
      let x_462 : vec4<f32> = u_xlat3;
      let x_466 : vec4<f32> = x_163.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_462.x, x_462.y, x_462.x, x_462.y) + x_466);
      let x_470 : vec4<f32> = u_xlat5;
      let x_471 : vec2<f32> = vec2<f32>(x_470.x, x_470.y);
      let x_473 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_471.x, x_471.y, x_473);
      let x_485 : vec3<f32> = txVec0;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_485.xy, x_485.z);
      u_xlat6.x = x_487;
      let x_490 : vec4<f32> = u_xlat5;
      let x_491 : vec2<f32> = vec2<f32>(x_490.z, x_490.w);
      let x_493 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_491.x, x_491.y, x_493);
      let x_500 : vec3<f32> = txVec1;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat6.y = x_502;
      let x_504 : vec4<f32> = u_xlat3;
      let x_508 : vec4<f32> = x_163.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_504.x, x_504.y, x_504.x, x_504.y) + x_508);
      let x_511 : vec4<f32> = u_xlat5;
      let x_512 : vec2<f32> = vec2<f32>(x_511.x, x_511.y);
      let x_514 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_512.x, x_512.y, x_514);
      let x_521 : vec3<f32> = txVec2;
      let x_523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_521.xy, x_521.z);
      u_xlat6.z = x_523;
      let x_526 : vec4<f32> = u_xlat5;
      let x_527 : vec2<f32> = vec2<f32>(x_526.z, x_526.w);
      let x_529 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_527.x, x_527.y, x_529);
      let x_536 : vec3<f32> = txVec3;
      let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_536.xy, x_536.z);
      u_xlat6.w = x_538;
      let x_540 : vec4<f32> = u_xlat6;
      u_xlat0.x = dot(x_540, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_548 : f32 = x_163.x_MainLightShadowParams.y;
      u_xlatb66 = (x_548 == 2.0f);
      let x_550 : bool = u_xlatb66;
      if (x_550) {
        let x_553 : vec4<f32> = u_xlat3;
        let x_557 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_561 : vec2<f32> = ((vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_557.z, x_557.w)) + vec2<f32>(0.5f, 0.5f));
        let x_562 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat5;
        let x_566 : vec2<f32> = floor(vec2<f32>(x_564.x, x_564.y));
        let x_567 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
        let x_571 : vec4<f32> = u_xlat3;
        let x_574 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_577 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_571.x, x_571.y) * vec2<f32>(x_574.z, x_574.w)) + -(vec2<f32>(x_577.x, x_577.y)));
        let x_581 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_581.x, x_581.x, x_581.y, x_581.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_586 : vec4<f32> = u_xlat6;
        let x_588 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_586.x, x_586.x, x_586.z, x_586.z) * vec4<f32>(x_588.x, x_588.x, x_588.z, x_588.z));
        let x_591 : vec4<f32> = u_xlat7;
        let x_595 : vec2<f32> = (vec2<f32>(x_591.y, x_591.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_595.x, x_596.y, x_595.y, x_596.w);
        let x_598 : vec4<f32> = u_xlat7;
        let x_601 : vec2<f32> = u_xlat49;
        let x_603 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.z) * vec2<f32>(0.5f, 0.5f)) + -(x_601));
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_607 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_607) + vec2<f32>(1.0f, 1.0f));
        let x_612 : vec2<f32> = u_xlat49;
        let x_614 : vec2<f32> = min(x_612, vec2<f32>(0.0f, 0.0f));
        let x_615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat8;
        let x_620 : vec4<f32> = u_xlat8;
        let x_623 : vec2<f32> = u_xlat51;
        let x_624 : vec2<f32> = ((-(vec2<f32>(x_617.x, x_617.y)) * vec2<f32>(x_620.x, x_620.y)) + x_623);
        let x_625 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_627 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_627, vec2<f32>(0.0f, 0.0f));
        let x_629 : vec2<f32> = u_xlat49;
        let x_631 : vec2<f32> = u_xlat49;
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_629) * x_631) + vec2<f32>(x_633.y, x_633.w));
        let x_636 : vec4<f32> = u_xlat8;
        let x_638 : vec2<f32> = (vec2<f32>(x_636.x, x_636.y) + vec2<f32>(1.0f, 1.0f));
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_641 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_641 + vec2<f32>(1.0f, 1.0f));
        let x_644 : vec4<f32> = u_xlat7;
        let x_648 : vec2<f32> = (vec2<f32>(x_644.x, x_644.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_651 : vec2<f32> = u_xlat51;
        let x_652 : vec2<f32> = (x_651 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat8;
        let x_657 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_658 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_661 : vec2<f32> = u_xlat49;
        let x_662 : vec2<f32> = (x_661 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_663 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
        let x_665 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_665.y, x_665.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_669 : f32 = u_xlat8.x;
        u_xlat9.z = x_669;
        let x_672 : f32 = u_xlat49.x;
        u_xlat9.w = x_672;
        let x_675 : f32 = u_xlat10.x;
        u_xlat7.z = x_675;
        let x_678 : f32 = u_xlat6.x;
        u_xlat7.w = x_678;
        let x_681 : vec4<f32> = u_xlat7;
        let x_683 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_681.z, x_681.w, x_681.x, x_681.z) + vec4<f32>(x_683.z, x_683.w, x_683.x, x_683.z));
        let x_687 : f32 = u_xlat9.y;
        u_xlat8.z = x_687;
        let x_690 : f32 = u_xlat49.y;
        u_xlat8.w = x_690;
        let x_693 : f32 = u_xlat7.y;
        u_xlat10.z = x_693;
        let x_696 : f32 = u_xlat6.z;
        u_xlat10.w = x_696;
        let x_698 : vec4<f32> = u_xlat8;
        let x_700 : vec4<f32> = u_xlat10;
        let x_702 : vec3<f32> = (vec3<f32>(x_698.z, x_698.y, x_698.w) + vec3<f32>(x_700.z, x_700.y, x_700.w));
        let x_703 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat7;
        let x_707 : vec4<f32> = u_xlat11;
        let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.z, x_705.w) / vec3<f32>(x_707.z, x_707.w, x_707.y));
        let x_710 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat7;
        let x_718 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat10;
        let x_723 : vec4<f32> = u_xlat6;
        let x_725 : vec3<f32> = (vec3<f32>(x_721.z, x_721.y, x_721.w) / vec3<f32>(x_723.x, x_723.y, x_723.z));
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat8;
        let x_730 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_731 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat7;
        let x_736 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_738 : vec3<f32> = (vec3<f32>(x_733.y, x_733.x, x_733.z) * vec3<f32>(x_736.x, x_736.x, x_736.x));
        let x_739 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat8;
        let x_744 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_746 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_744.y, x_744.y, x_744.y));
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_750 : f32 = u_xlat8.x;
        u_xlat7.w = x_750;
        let x_752 : vec4<f32> = u_xlat5;
        let x_755 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_758 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y) * vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y)) + vec4<f32>(x_758.y, x_758.w, x_758.x, x_758.w));
        let x_761 : vec4<f32> = u_xlat5;
        let x_764 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_761.x, x_761.y) * vec2<f32>(x_764.x, x_764.y)) + vec2<f32>(x_767.z, x_767.w));
        let x_771 : f32 = u_xlat7.y;
        u_xlat8.w = x_771;
        let x_773 : vec4<f32> = u_xlat8;
        let x_774 : vec2<f32> = vec2<f32>(x_773.y, x_773.z);
        let x_775 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_775.x, x_774.x, x_775.z, x_774.y);
        let x_777 : vec4<f32> = u_xlat5;
        let x_780 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_783 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y) * vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y)) + vec4<f32>(x_783.x, x_783.y, x_783.z, x_783.y));
        let x_786 : vec4<f32> = u_xlat5;
        let x_789 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y) * vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y)) + vec4<f32>(x_792.w, x_792.y, x_792.w, x_792.z));
        let x_795 : vec4<f32> = u_xlat5;
        let x_798 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_801 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) * vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y)) + vec4<f32>(x_801.x, x_801.w, x_801.z, x_801.w));
        let x_805 : vec4<f32> = u_xlat6;
        let x_807 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_805.x, x_805.x, x_805.x, x_805.y) * vec4<f32>(x_807.z, x_807.w, x_807.y, x_807.z));
        let x_811 : vec4<f32> = u_xlat6;
        let x_813 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_811.y, x_811.y, x_811.z, x_811.z) * x_813);
        let x_816 : f32 = u_xlat6.z;
        let x_818 : f32 = u_xlat11.y;
        u_xlat66 = (x_816 * x_818);
        let x_821 : vec4<f32> = u_xlat9;
        let x_822 : vec2<f32> = vec2<f32>(x_821.x, x_821.y);
        let x_824 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_832 : vec3<f32> = txVec4;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
        u_xlat67 = x_834;
        let x_836 : vec4<f32> = u_xlat9;
        let x_837 : vec2<f32> = vec2<f32>(x_836.z, x_836.w);
        let x_839 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_847 : vec3<f32> = txVec5;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_847.xy, x_847.z);
        u_xlat68 = x_849;
        let x_850 : f32 = u_xlat68;
        let x_852 : f32 = u_xlat12.y;
        u_xlat68 = (x_850 * x_852);
        let x_855 : f32 = u_xlat12.x;
        let x_856 : f32 = u_xlat67;
        let x_858 : f32 = u_xlat68;
        u_xlat67 = ((x_855 * x_856) + x_858);
        let x_861 : vec2<f32> = u_xlat49;
        let x_863 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec6;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
        u_xlat68 = x_872;
        let x_874 : f32 = u_xlat12.z;
        let x_875 : f32 = u_xlat68;
        let x_877 : f32 = u_xlat67;
        u_xlat67 = ((x_874 * x_875) + x_877);
        let x_880 : vec4<f32> = u_xlat8;
        let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
        let x_883 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec7;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat68 = x_892;
        let x_894 : f32 = u_xlat12.w;
        let x_895 : f32 = u_xlat68;
        let x_897 : f32 = u_xlat67;
        u_xlat67 = ((x_894 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat10;
        let x_901 : vec2<f32> = vec2<f32>(x_900.x, x_900.y);
        let x_903 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec8;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat68 = x_912;
        let x_914 : f32 = u_xlat13.x;
        let x_915 : f32 = u_xlat68;
        let x_917 : f32 = u_xlat67;
        u_xlat67 = ((x_914 * x_915) + x_917);
        let x_920 : vec4<f32> = u_xlat10;
        let x_921 : vec2<f32> = vec2<f32>(x_920.z, x_920.w);
        let x_923 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec9;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
        u_xlat68 = x_932;
        let x_934 : f32 = u_xlat13.y;
        let x_935 : f32 = u_xlat68;
        let x_937 : f32 = u_xlat67;
        u_xlat67 = ((x_934 * x_935) + x_937);
        let x_940 : vec4<f32> = u_xlat8;
        let x_941 : vec2<f32> = vec2<f32>(x_940.z, x_940.w);
        let x_943 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_941.x, x_941.y, x_943);
        let x_950 : vec3<f32> = txVec10;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_950.xy, x_950.z);
        u_xlat68 = x_952;
        let x_954 : f32 = u_xlat13.z;
        let x_955 : f32 = u_xlat68;
        let x_957 : f32 = u_xlat67;
        u_xlat67 = ((x_954 * x_955) + x_957);
        let x_960 : vec4<f32> = u_xlat7;
        let x_961 : vec2<f32> = vec2<f32>(x_960.x, x_960.y);
        let x_963 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_970 : vec3<f32> = txVec11;
        let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_970.xy, x_970.z);
        u_xlat68 = x_972;
        let x_974 : f32 = u_xlat13.w;
        let x_975 : f32 = u_xlat68;
        let x_977 : f32 = u_xlat67;
        u_xlat67 = ((x_974 * x_975) + x_977);
        let x_980 : vec4<f32> = u_xlat7;
        let x_981 : vec2<f32> = vec2<f32>(x_980.z, x_980.w);
        let x_983 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec12;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_990.xy, x_990.z);
        u_xlat68 = x_992;
        let x_993 : f32 = u_xlat66;
        let x_994 : f32 = u_xlat68;
        let x_996 : f32 = u_xlat67;
        u_xlat0.x = ((x_993 * x_994) + x_996);
      } else {
        let x_1000 : vec4<f32> = u_xlat3;
        let x_1003 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1007 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat5;
        let x_1011 : vec2<f32> = floor(vec2<f32>(x_1009.x, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat3;
        let x_1017 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1020 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1017.z, x_1017.w)) + -(vec2<f32>(x_1020.x, x_1020.y)));
        let x_1024 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_1024.x, x_1024.x, x_1024.y, x_1024.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1027 : vec4<f32> = u_xlat6;
        let x_1029 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.z, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat7;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.y, x_1032.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1037.x, x_1036.x, x_1037.z, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1042 : vec2<f32> = u_xlat49;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1042));
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat49;
        let x_1049 : vec2<f32> = (-(x_1047) + vec2<f32>(1.0f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1052, vec2<f32>(0.0f, 0.0f));
        let x_1054 : vec2<f32> = u_xlat51;
        let x_1056 : vec2<f32> = u_xlat51;
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1060 : vec2<f32> = ((-(x_1054) * x_1056) + vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1063, vec2<f32>(0.0f, 0.0f));
        let x_1067 : vec2<f32> = u_xlat51;
        let x_1069 : vec2<f32> = u_xlat51;
        let x_1071 : vec4<f32> = u_xlat6;
        let x_1073 : vec2<f32> = ((-(x_1067) * x_1069) + vec2<f32>(x_1071.y, x_1071.w));
        let x_1074 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1073.x, x_1074.y, x_1073.y);
        let x_1076 : vec4<f32> = u_xlat7;
        let x_1079 : vec2<f32> = (vec2<f32>(x_1076.x, x_1076.y) + vec2<f32>(2.0f, 2.0f));
        let x_1080 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1082 : vec3<f32> = u_xlat28;
        let x_1084 : vec2<f32> = (vec2<f32>(x_1082.x, x_1082.z) + vec2<f32>(2.0f, 2.0f));
        let x_1085 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1085.x, x_1084.x, x_1085.z, x_1084.y);
        let x_1088 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1088 * 0.08163200318813323975f);
        let x_1092 : vec4<f32> = u_xlat6;
        let x_1095 : vec3<f32> = (vec3<f32>(x_1092.z, x_1092.x, x_1092.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1096 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1101 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1102 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1105 : f32 = u_xlat10.y;
        u_xlat9.x = x_1105;
        let x_1107 : vec2<f32> = u_xlat49;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1115.x, x_1114.x, x_1115.z, x_1114.y);
        let x_1117 : vec2<f32> = u_xlat49;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1122 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1121.x, x_1122.y, x_1121.y, x_1122.w);
        let x_1125 : f32 = u_xlat6.x;
        u_xlat7.y = x_1125;
        let x_1128 : f32 = u_xlat8.y;
        u_xlat7.w = x_1128;
        let x_1130 : vec4<f32> = u_xlat7;
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1130 + x_1131);
        let x_1133 : vec2<f32> = u_xlat49;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1133.y, x_1133.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1137.x, x_1136.x, x_1137.z, x_1136.y);
        let x_1139 : vec2<f32> = u_xlat49;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1139.y, x_1139.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1143.w);
        let x_1146 : f32 = u_xlat6.y;
        u_xlat8.y = x_1146;
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1148 + x_1149);
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1152 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1151 / x_1152);
        let x_1154 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1154 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1161 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1160 / x_1161);
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1163 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1165 : vec4<f32> = u_xlat7;
        let x_1168 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1165.w, x_1165.x, x_1165.y, x_1165.z) * vec4<f32>(x_1168.x, x_1168.x, x_1168.x, x_1168.x));
        let x_1171 : vec4<f32> = u_xlat8;
        let x_1174 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1171.x, x_1171.w, x_1171.y, x_1171.z) * vec4<f32>(x_1174.y, x_1174.y, x_1174.y, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1178 : vec3<f32> = vec3<f32>(x_1177.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1178.z);
        let x_1182 : f32 = u_xlat8.x;
        u_xlat10.y = x_1182;
        let x_1184 : vec4<f32> = u_xlat5;
        let x_1187 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1184.x, x_1184.y, x_1184.x, x_1184.y) * vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.y)) + vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat5;
        let x_1196 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat49 = ((vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.w, x_1199.y));
        let x_1203 : f32 = u_xlat10.y;
        u_xlat7.y = x_1203;
        let x_1206 : f32 = u_xlat8.z;
        u_xlat10.y = x_1206;
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1220.x, x_1220.y)) + vec2<f32>(x_1223.w, x_1223.y));
        let x_1226 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1229 : f32 = u_xlat10.y;
        u_xlat7.z = x_1229;
        let x_1232 : vec4<f32> = u_xlat5;
        let x_1235 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.z));
        let x_1242 : f32 = u_xlat8.w;
        u_xlat10.y = x_1242;
        let x_1245 : vec4<f32> = u_xlat5;
        let x_1248 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y) * vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y)) + vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.y));
        let x_1255 : vec4<f32> = u_xlat5;
        let x_1258 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat29 = ((vec2<f32>(x_1255.x, x_1255.y) * vec2<f32>(x_1258.x, x_1258.y)) + vec2<f32>(x_1261.w, x_1261.y));
        let x_1265 : f32 = u_xlat10.y;
        u_xlat7.w = x_1265;
        let x_1268 : vec4<f32> = u_xlat5;
        let x_1271 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1271.x, x_1271.y)) + vec2<f32>(x_1274.x, x_1274.w));
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1278 : vec3<f32> = vec3<f32>(x_1277.x, x_1277.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1278.x, x_1279.y, x_1278.y, x_1278.z);
        let x_1281 : vec4<f32> = u_xlat5;
        let x_1284 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.y) * vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y)) + vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1287.y));
        let x_1291 : vec4<f32> = u_xlat5;
        let x_1294 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(x_1294.x, x_1294.y)) + vec2<f32>(x_1297.w, x_1297.y));
        let x_1301 : f32 = u_xlat7.x;
        u_xlat8.x = x_1301;
        let x_1303 : vec4<f32> = u_xlat5;
        let x_1306 : vec4<f32> = x_163.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat8;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.x, x_1309.y));
        let x_1312 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1315 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.x, x_1315.x) * x_1317);
        let x_1320 : vec4<f32> = u_xlat6;
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1320.y, x_1320.y, x_1320.y, x_1320.y) * x_1322);
        let x_1325 : vec4<f32> = u_xlat6;
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1325.z, x_1325.z, x_1325.z, x_1325.z) * x_1327);
        let x_1329 : vec4<f32> = u_xlat6;
        let x_1331 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1329.w, x_1329.w, x_1329.w, x_1329.w) * x_1331);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec13;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat66 = x_1346;
        let x_1348 : vec4<f32> = u_xlat11;
        let x_1349 : vec2<f32> = vec2<f32>(x_1348.z, x_1348.w);
        let x_1351 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec14;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1358.xy, x_1358.z);
        u_xlat67 = x_1360;
        let x_1361 : f32 = u_xlat67;
        let x_1363 : f32 = u_xlat16.y;
        u_xlat67 = (x_1361 * x_1363);
        let x_1366 : f32 = u_xlat16.x;
        let x_1367 : f32 = u_xlat66;
        let x_1369 : f32 = u_xlat67;
        u_xlat66 = ((x_1366 * x_1367) + x_1369);
        let x_1372 : vec2<f32> = u_xlat49;
        let x_1374 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec15;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat67 = x_1383;
        let x_1385 : f32 = u_xlat16.z;
        let x_1386 : f32 = u_xlat67;
        let x_1388 : f32 = u_xlat66;
        u_xlat66 = ((x_1385 * x_1386) + x_1388);
        let x_1391 : vec4<f32> = u_xlat14;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec16;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat67 = x_1403;
        let x_1405 : f32 = u_xlat16.w;
        let x_1406 : f32 = u_xlat67;
        let x_1408 : f32 = u_xlat66;
        u_xlat66 = ((x_1405 * x_1406) + x_1408);
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec17;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat67 = x_1423;
        let x_1425 : f32 = u_xlat17.x;
        let x_1426 : f32 = u_xlat67;
        let x_1428 : f32 = u_xlat66;
        u_xlat66 = ((x_1425 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat12;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec18;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat67 = x_1443;
        let x_1445 : f32 = u_xlat17.y;
        let x_1446 : f32 = u_xlat67;
        let x_1448 : f32 = u_xlat66;
        u_xlat66 = ((x_1445 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat13;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec19;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat67 = x_1463;
        let x_1465 : f32 = u_xlat17.z;
        let x_1466 : f32 = u_xlat67;
        let x_1468 : f32 = u_xlat66;
        u_xlat66 = ((x_1465 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat14;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec20;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat67 = x_1483;
        let x_1485 : f32 = u_xlat17.w;
        let x_1486 : f32 = u_xlat67;
        let x_1488 : f32 = u_xlat66;
        u_xlat66 = ((x_1485 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat15;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec21;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat67 = x_1503;
        let x_1505 : f32 = u_xlat18.x;
        let x_1506 : f32 = u_xlat67;
        let x_1508 : f32 = u_xlat66;
        u_xlat66 = ((x_1505 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat15;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec22;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1521.xy, x_1521.z);
        u_xlat67 = x_1523;
        let x_1525 : f32 = u_xlat18.y;
        let x_1526 : f32 = u_xlat67;
        let x_1528 : f32 = u_xlat66;
        u_xlat66 = ((x_1525 * x_1526) + x_1528);
        let x_1531 : vec2<f32> = u_xlat29;
        let x_1533 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec23;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1540.xy, x_1540.z);
        u_xlat67 = x_1542;
        let x_1544 : f32 = u_xlat18.z;
        let x_1545 : f32 = u_xlat67;
        let x_1547 : f32 = u_xlat66;
        u_xlat66 = ((x_1544 * x_1545) + x_1547);
        let x_1550 : vec2<f32> = u_xlat57;
        let x_1552 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec24;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
        u_xlat67 = x_1561;
        let x_1563 : f32 = u_xlat18.w;
        let x_1564 : f32 = u_xlat67;
        let x_1566 : f32 = u_xlat66;
        u_xlat66 = ((x_1563 * x_1564) + x_1566);
        let x_1569 : vec4<f32> = u_xlat10;
        let x_1570 : vec2<f32> = vec2<f32>(x_1569.x, x_1569.y);
        let x_1572 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec25;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat67 = x_1581;
        let x_1583 : f32 = u_xlat6.x;
        let x_1584 : f32 = u_xlat67;
        let x_1586 : f32 = u_xlat66;
        u_xlat66 = ((x_1583 * x_1584) + x_1586);
        let x_1589 : vec4<f32> = u_xlat10;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.z, x_1589.w);
        let x_1592 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec26;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat67 = x_1601;
        let x_1603 : f32 = u_xlat6.y;
        let x_1604 : f32 = u_xlat67;
        let x_1606 : f32 = u_xlat66;
        u_xlat66 = ((x_1603 * x_1604) + x_1606);
        let x_1609 : vec2<f32> = u_xlat52;
        let x_1611 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec27;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat67 = x_1620;
        let x_1622 : f32 = u_xlat6.z;
        let x_1623 : f32 = u_xlat67;
        let x_1625 : f32 = u_xlat66;
        u_xlat66 = ((x_1622 * x_1623) + x_1625);
        let x_1628 : vec4<f32> = u_xlat5;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.x, x_1628.y);
        let x_1631 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec28;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat67 = x_1640;
        let x_1642 : f32 = u_xlat6.w;
        let x_1643 : f32 = u_xlat67;
        let x_1645 : f32 = u_xlat66;
        u_xlat0.x = ((x_1642 * x_1643) + x_1645);
      }
    }
  } else {
    let x_1650 : vec4<f32> = u_xlat3;
    let x_1651 : vec2<f32> = vec2<f32>(x_1650.x, x_1650.y);
    let x_1653 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
    let x_1660 : vec3<f32> = txVec29;
    let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
    u_xlat0.x = x_1662;
  }
  let x_1665 : f32 = x_163.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1665) + 1.0f);
  let x_1669 : f32 = u_xlat0.x;
  let x_1671 : f32 = x_163.x_MainLightShadowParams.x;
  let x_1673 : f32 = u_xlat66;
  u_xlat0.x = ((x_1669 * x_1671) + x_1673);
  let x_1677 : f32 = u_xlat3.z;
  u_xlatb66 = (0.0f >= x_1677);
  let x_1681 : f32 = u_xlat3.z;
  u_xlatb67 = (x_1681 >= 1.0f);
  let x_1683 : bool = u_xlatb66;
  let x_1684 : bool = u_xlatb67;
  u_xlatb66 = (x_1683 | x_1684);
  let x_1686 : bool = u_xlatb66;
  if (x_1686) {
    x_1687 = 1.0f;
  } else {
    let x_1692 : f32 = u_xlat0.x;
    x_1687 = x_1692;
  }
  let x_1693 : f32 = x_1687;
  u_xlat0.x = x_1693;
  let x_1695 : vec4<f32> = vs_TEXCOORD2;
  let x_1699 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1695.x, x_1695.y, x_1695.z) + -(x_1699));
  let x_1702 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : vec4<f32> = u_xlat3;
  let x_1706 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(vec3<f32>(x_1704.x, x_1704.y, x_1704.z), vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : f32 = u_xlat66;
  let x_1711 : f32 = x_163.x_MainLightShadowParams.z;
  let x_1714 : f32 = x_163.x_MainLightShadowParams.w;
  u_xlat67 = ((x_1709 * x_1711) + x_1714);
  let x_1716 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1716, 0.0f, 1.0f);
  let x_1719 : f32 = u_xlat0.x;
  u_xlat68 = (-(x_1719) + 1.0f);
  let x_1722 : f32 = u_xlat67;
  let x_1723 : f32 = u_xlat68;
  let x_1726 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1722 * x_1723) + x_1726);
  let x_1730 : f32 = u_xlat0.x;
  let x_1732 : f32 = x_367.unity_LightData.z;
  u_xlat0.x = (x_1730 * x_1732);
  let x_1735 : vec4<f32> = u_xlat0;
  let x_1738 : vec4<f32> = x_27.x_MainLightColor;
  let x_1740 : vec3<f32> = (vec3<f32>(x_1735.x, x_1735.x, x_1735.x) * vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
  let x_1741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);
  let x_1743 : vec4<f32> = u_xlat2;
  let x_1746 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_1743.x, x_1743.y, x_1743.z), vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
  let x_1751 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1751, 0.0f, 1.0f);
  let x_1754 : vec4<f32> = u_xlat0;
  let x_1756 : vec4<f32> = u_xlat3;
  let x_1758 : vec3<f32> = (vec3<f32>(x_1754.x, x_1754.x, x_1754.x) * vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
  let x_1759 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : vec4<f32> = u_xlat1;
  let x_1763 : vec4<f32> = u_xlat3;
  let x_1765 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) * vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1769 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1771 : f32 = x_367.unity_LightData.y;
  u_xlat0.x = min(x_1769, x_1771);
  let x_1775 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1775));
  let x_1778 : f32 = u_xlat66;
  let x_1781 : f32 = x_163.x_AdditionalShadowFadeParams.x;
  let x_1784 : f32 = x_163.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1778 * x_1781) + x_1784);
  let x_1786 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1786, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1798 : u32 = u_xlatu_loop_1;
    let x_1799 : u32 = u_xlatu0;
    if ((x_1798 < x_1799)) {
    } else {
      break;
    }
    let x_1802 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1802 >> 2u);
    let x_1805 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1805 & 3u));
    let x_1808 : u32 = u_xlatu68;
    let x_1811 : vec4<f32> = x_367.unity_LightIndices[bitcast<i32>(x_1808)];
    let x_1821 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1826 : vec4<u32> = indexable[x_1821];
    u_xlat68 = dot(x_1811, bitcast<vec4<f32>>(x_1826));
    let x_1830 : f32 = u_xlat68;
    u_xlati68 = i32(x_1830);
    let x_1832 : vec4<f32> = vs_TEXCOORD2;
    let x_1844 : i32 = u_xlati68;
    let x_1846 : vec4<f32> = x_1843.x_AdditionalLightsPosition[x_1844];
    let x_1849 : i32 = u_xlati68;
    let x_1851 : vec4<f32> = x_1843.x_AdditionalLightsPosition[x_1849];
    let x_1853 : vec3<f32> = ((-(vec3<f32>(x_1832.x, x_1832.y, x_1832.z)) * vec3<f32>(x_1846.w, x_1846.w, x_1846.w)) + vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
    let x_1854 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
    let x_1857 : vec4<f32> = u_xlat6;
    let x_1859 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1857.x, x_1857.y, x_1857.z), vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
    let x_1862 : f32 = u_xlat69;
    u_xlat69 = max(x_1862, 0.00006103515625f);
    let x_1866 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1866);
    let x_1868 : f32 = u_xlat70;
    let x_1870 : vec4<f32> = u_xlat6;
    let x_1872 : vec3<f32> = (vec3<f32>(x_1868, x_1868, x_1868) * vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
    let x_1873 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
    let x_1875 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1875);
    let x_1877 : f32 = u_xlat69;
    let x_1878 : i32 = u_xlati68;
    let x_1880 : f32 = x_1843.x_AdditionalLightsAttenuation[x_1878].x;
    u_xlat69 = (x_1877 * x_1880);
    let x_1882 : f32 = u_xlat69;
    let x_1884 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1882) * x_1884) + 1.0f);
    let x_1887 : f32 = u_xlat69;
    u_xlat69 = max(x_1887, 0.0f);
    let x_1889 : f32 = u_xlat69;
    let x_1890 : f32 = u_xlat69;
    u_xlat69 = (x_1889 * x_1890);
    let x_1892 : f32 = u_xlat69;
    let x_1893 : f32 = u_xlat70;
    u_xlat69 = (x_1892 * x_1893);
    let x_1895 : i32 = u_xlati68;
    let x_1897 : vec4<f32> = x_1843.x_AdditionalLightsSpotDir[x_1895];
    let x_1899 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1897.x, x_1897.y, x_1897.z), vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
    let x_1902 : f32 = u_xlat70;
    let x_1903 : i32 = u_xlati68;
    let x_1905 : f32 = x_1843.x_AdditionalLightsAttenuation[x_1903].z;
    let x_1907 : i32 = u_xlati68;
    let x_1909 : f32 = x_1843.x_AdditionalLightsAttenuation[x_1907].w;
    u_xlat70 = ((x_1902 * x_1905) + x_1909);
    let x_1911 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1911, 0.0f, 1.0f);
    let x_1913 : f32 = u_xlat70;
    let x_1914 : f32 = u_xlat70;
    u_xlat70 = (x_1913 * x_1914);
    let x_1916 : f32 = u_xlat69;
    let x_1917 : f32 = u_xlat70;
    u_xlat69 = (x_1916 * x_1917);
    let x_1921 : i32 = u_xlati68;
    let x_1923 : f32 = x_163.x_AdditionalShadowParams[x_1921].w;
    u_xlati70 = i32(x_1923);
    let x_1926 : i32 = u_xlati70;
    u_xlatb71 = (x_1926 >= 0i);
    let x_1928 : bool = u_xlatb71;
    if (x_1928) {
      let x_1932 : i32 = u_xlati68;
      let x_1934 : f32 = x_163.x_AdditionalShadowParams[x_1932].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1934, x_1934, x_1934, x_1934))));
      let x_1938 : bool = u_xlatb71;
      if (x_1938) {
        let x_1942 : vec4<f32> = u_xlat6;
        let x_1945 : vec4<f32> = u_xlat6;
        let x_1948 : vec4<bool> = (abs(vec4<f32>(x_1942.z, x_1942.z, x_1942.y, x_1942.z)) >= abs(vec4<f32>(x_1945.x, x_1945.y, x_1945.x, x_1945.x)));
        let x_1950 : vec3<bool> = vec3<bool>(x_1948.x, x_1948.y, x_1948.z);
        let x_1951 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
        let x_1954 : bool = u_xlatb7.y;
        let x_1956 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1954 & x_1956);
        let x_1958 : vec4<f32> = u_xlat6;
        let x_1961 : vec4<bool> = (-(vec4<f32>(x_1958.z, x_1958.y, x_1958.z, x_1958.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1962 : vec3<bool> = vec3<bool>(x_1961.x, x_1961.y, x_1961.w);
        let x_1963 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1962.x, x_1962.y, x_1963.z, x_1962.z);
        let x_1966 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1966);
        let x_1971 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1971);
        let x_1976 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1976);
        let x_1979 : bool = u_xlatb7.z;
        if (x_1979) {
          let x_1984 : f32 = u_xlat7.y;
          x_1980 = x_1984;
        } else {
          let x_1986 : f32 = u_xlat72;
          x_1980 = x_1986;
        }
        let x_1987 : f32 = x_1980;
        u_xlat72 = x_1987;
        let x_1989 : bool = u_xlatb71;
        if (x_1989) {
          let x_1994 : f32 = u_xlat7.x;
          x_1990 = x_1994;
        } else {
          let x_1996 : f32 = u_xlat72;
          x_1990 = x_1996;
        }
        let x_1997 : f32 = x_1990;
        u_xlat71 = x_1997;
        let x_1998 : i32 = u_xlati68;
        let x_2000 : f32 = x_163.x_AdditionalShadowParams[x_1998].w;
        u_xlat72 = trunc(x_2000);
        let x_2002 : f32 = u_xlat71;
        let x_2003 : f32 = u_xlat72;
        u_xlat71 = (x_2002 + x_2003);
        let x_2005 : f32 = u_xlat71;
        u_xlati70 = i32(x_2005);
      }
      let x_2007 : i32 = u_xlati70;
      u_xlati70 = (x_2007 << bitcast<u32>(2i));
      let x_2009 : vec4<f32> = vs_TEXCOORD2;
      let x_2012 : i32 = u_xlati70;
      let x_2015 : i32 = u_xlati70;
      let x_2019 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_2012 + 1i) / 4i)][((x_2015 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2009.y, x_2009.y, x_2009.y, x_2009.y) * x_2019);
      let x_2021 : i32 = u_xlati70;
      let x_2023 : i32 = u_xlati70;
      let x_2026 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[(x_2021 / 4i)][(x_2023 % 4i)];
      let x_2027 : vec4<f32> = vs_TEXCOORD2;
      let x_2030 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2026 * vec4<f32>(x_2027.x, x_2027.x, x_2027.x, x_2027.x)) + x_2030);
      let x_2032 : i32 = u_xlati70;
      let x_2035 : i32 = u_xlati70;
      let x_2039 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_2032 + 2i) / 4i)][((x_2035 + 2i) % 4i)];
      let x_2040 : vec4<f32> = vs_TEXCOORD2;
      let x_2043 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2039 * vec4<f32>(x_2040.z, x_2040.z, x_2040.z, x_2040.z)) + x_2043);
      let x_2045 : vec4<f32> = u_xlat7;
      let x_2046 : i32 = u_xlati70;
      let x_2049 : i32 = u_xlati70;
      let x_2053 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_2046 + 3i) / 4i)][((x_2049 + 3i) % 4i)];
      u_xlat7 = (x_2045 + x_2053);
      let x_2055 : vec4<f32> = u_xlat7;
      let x_2057 : vec4<f32> = u_xlat7;
      let x_2059 : vec3<f32> = (vec3<f32>(x_2055.x, x_2055.y, x_2055.z) / vec3<f32>(x_2057.w, x_2057.w, x_2057.w));
      let x_2060 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
      let x_2063 : i32 = u_xlati68;
      let x_2065 : f32 = x_163.x_AdditionalShadowParams[x_2063].y;
      u_xlatb70 = (0.0f < x_2065);
      let x_2067 : bool = u_xlatb70;
      if (x_2067) {
        let x_2070 : i32 = u_xlati68;
        let x_2072 : f32 = x_163.x_AdditionalShadowParams[x_2070].y;
        u_xlatb70 = (1.0f == x_2072);
        let x_2074 : bool = u_xlatb70;
        if (x_2074) {
          let x_2077 : vec4<f32> = u_xlat7;
          let x_2081 : vec4<f32> = x_163.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2077.x, x_2077.y, x_2077.x, x_2077.y) + x_2081);
          let x_2084 : vec4<f32> = u_xlat8;
          let x_2085 : vec2<f32> = vec2<f32>(x_2084.x, x_2084.y);
          let x_2087 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2085.x, x_2085.y, x_2087);
          let x_2095 : vec3<f32> = txVec30;
          let x_2097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2095.xy, x_2095.z);
          u_xlat9.x = x_2097;
          let x_2100 : vec4<f32> = u_xlat8;
          let x_2101 : vec2<f32> = vec2<f32>(x_2100.z, x_2100.w);
          let x_2103 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2101.x, x_2101.y, x_2103);
          let x_2110 : vec3<f32> = txVec31;
          let x_2112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2110.xy, x_2110.z);
          u_xlat9.y = x_2112;
          let x_2114 : vec4<f32> = u_xlat7;
          let x_2118 : vec4<f32> = x_163.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2114.x, x_2114.y, x_2114.x, x_2114.y) + x_2118);
          let x_2121 : vec4<f32> = u_xlat8;
          let x_2122 : vec2<f32> = vec2<f32>(x_2121.x, x_2121.y);
          let x_2124 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2122.x, x_2122.y, x_2124);
          let x_2131 : vec3<f32> = txVec32;
          let x_2133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2131.xy, x_2131.z);
          u_xlat9.z = x_2133;
          let x_2136 : vec4<f32> = u_xlat8;
          let x_2137 : vec2<f32> = vec2<f32>(x_2136.z, x_2136.w);
          let x_2139 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
          let x_2146 : vec3<f32> = txVec33;
          let x_2148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2146.xy, x_2146.z);
          u_xlat9.w = x_2148;
          let x_2150 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_2150, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2153 : i32 = u_xlati68;
          let x_2155 : f32 = x_163.x_AdditionalShadowParams[x_2153].y;
          u_xlatb71 = (2.0f == x_2155);
          let x_2157 : bool = u_xlatb71;
          if (x_2157) {
            let x_2160 : vec4<f32> = u_xlat7;
            let x_2164 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2167 : vec2<f32> = ((vec2<f32>(x_2160.x, x_2160.y) * vec2<f32>(x_2164.z, x_2164.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2168 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2167.x, x_2167.y, x_2168.z, x_2168.w);
            let x_2170 : vec4<f32> = u_xlat8;
            let x_2172 : vec2<f32> = floor(vec2<f32>(x_2170.x, x_2170.y));
            let x_2173 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2172.x, x_2172.y, x_2173.z, x_2173.w);
            let x_2175 : vec4<f32> = u_xlat7;
            let x_2178 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2181 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2175.x, x_2175.y) * vec2<f32>(x_2178.z, x_2178.w)) + -(vec2<f32>(x_2181.x, x_2181.y)));
            let x_2185 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2185.x, x_2185.x, x_2185.y, x_2185.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2188 : vec4<f32> = u_xlat9;
            let x_2190 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2188.x, x_2188.x, x_2188.z, x_2188.z) * vec4<f32>(x_2190.x, x_2190.x, x_2190.z, x_2190.z));
            let x_2193 : vec4<f32> = u_xlat10;
            let x_2195 : vec2<f32> = (vec2<f32>(x_2193.y, x_2193.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2196 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2195.x, x_2196.y, x_2195.y, x_2196.w);
            let x_2198 : vec4<f32> = u_xlat10;
            let x_2201 : vec2<f32> = u_xlat52;
            let x_2203 : vec2<f32> = ((vec2<f32>(x_2198.x, x_2198.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2201));
            let x_2204 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2203.x, x_2203.y, x_2204.z, x_2204.w);
            let x_2207 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2207) + vec2<f32>(1.0f, 1.0f));
            let x_2210 : vec2<f32> = u_xlat52;
            let x_2211 : vec2<f32> = min(x_2210, vec2<f32>(0.0f, 0.0f));
            let x_2212 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2211.x, x_2211.y, x_2212.z, x_2212.w);
            let x_2214 : vec4<f32> = u_xlat11;
            let x_2217 : vec4<f32> = u_xlat11;
            let x_2220 : vec2<f32> = u_xlat54;
            let x_2221 : vec2<f32> = ((-(vec2<f32>(x_2214.x, x_2214.y)) * vec2<f32>(x_2217.x, x_2217.y)) + x_2220);
            let x_2222 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2221.x, x_2221.y, x_2222.z, x_2222.w);
            let x_2224 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2224, vec2<f32>(0.0f, 0.0f));
            let x_2226 : vec2<f32> = u_xlat52;
            let x_2228 : vec2<f32> = u_xlat52;
            let x_2230 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2226) * x_2228) + vec2<f32>(x_2230.y, x_2230.w));
            let x_2233 : vec4<f32> = u_xlat11;
            let x_2235 : vec2<f32> = (vec2<f32>(x_2233.x, x_2233.y) + vec2<f32>(1.0f, 1.0f));
            let x_2236 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
            let x_2238 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2238 + vec2<f32>(1.0f, 1.0f));
            let x_2240 : vec4<f32> = u_xlat10;
            let x_2242 : vec2<f32> = (vec2<f32>(x_2240.x, x_2240.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2243 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2242.x, x_2242.y, x_2243.z, x_2243.w);
            let x_2245 : vec2<f32> = u_xlat54;
            let x_2246 : vec2<f32> = (x_2245 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2247 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
            let x_2249 : vec4<f32> = u_xlat11;
            let x_2251 : vec2<f32> = (vec2<f32>(x_2249.x, x_2249.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2252 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2251.x, x_2251.y, x_2252.z, x_2252.w);
            let x_2254 : vec2<f32> = u_xlat52;
            let x_2255 : vec2<f32> = (x_2254 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2256 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2255.x, x_2255.y, x_2256.z, x_2256.w);
            let x_2258 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2258.y, x_2258.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2262 : f32 = u_xlat11.x;
            u_xlat12.z = x_2262;
            let x_2265 : f32 = u_xlat52.x;
            u_xlat12.w = x_2265;
            let x_2268 : f32 = u_xlat13.x;
            u_xlat10.z = x_2268;
            let x_2271 : f32 = u_xlat9.x;
            u_xlat10.w = x_2271;
            let x_2273 : vec4<f32> = u_xlat10;
            let x_2275 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2273.z, x_2273.w, x_2273.x, x_2273.z) + vec4<f32>(x_2275.z, x_2275.w, x_2275.x, x_2275.z));
            let x_2279 : f32 = u_xlat12.y;
            u_xlat11.z = x_2279;
            let x_2282 : f32 = u_xlat52.y;
            u_xlat11.w = x_2282;
            let x_2285 : f32 = u_xlat10.y;
            u_xlat13.z = x_2285;
            let x_2288 : f32 = u_xlat9.z;
            u_xlat13.w = x_2288;
            let x_2290 : vec4<f32> = u_xlat11;
            let x_2292 : vec4<f32> = u_xlat13;
            let x_2294 : vec3<f32> = (vec3<f32>(x_2290.z, x_2290.y, x_2290.w) + vec3<f32>(x_2292.z, x_2292.y, x_2292.w));
            let x_2295 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
            let x_2297 : vec4<f32> = u_xlat10;
            let x_2299 : vec4<f32> = u_xlat14;
            let x_2301 : vec3<f32> = (vec3<f32>(x_2297.x, x_2297.z, x_2297.w) / vec3<f32>(x_2299.z, x_2299.w, x_2299.y));
            let x_2302 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
            let x_2304 : vec4<f32> = u_xlat10;
            let x_2306 : vec3<f32> = (vec3<f32>(x_2304.x, x_2304.y, x_2304.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2307 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
            let x_2309 : vec4<f32> = u_xlat13;
            let x_2311 : vec4<f32> = u_xlat9;
            let x_2313 : vec3<f32> = (vec3<f32>(x_2309.z, x_2309.y, x_2309.w) / vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
            let x_2314 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
            let x_2316 : vec4<f32> = u_xlat11;
            let x_2318 : vec3<f32> = (vec3<f32>(x_2316.x, x_2316.y, x_2316.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2319 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
            let x_2321 : vec4<f32> = u_xlat10;
            let x_2324 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2326 : vec3<f32> = (vec3<f32>(x_2321.y, x_2321.x, x_2321.z) * vec3<f32>(x_2324.x, x_2324.x, x_2324.x));
            let x_2327 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
            let x_2329 : vec4<f32> = u_xlat11;
            let x_2332 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2334 : vec3<f32> = (vec3<f32>(x_2329.x, x_2329.y, x_2329.z) * vec3<f32>(x_2332.y, x_2332.y, x_2332.y));
            let x_2335 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
            let x_2338 : f32 = u_xlat11.x;
            u_xlat10.w = x_2338;
            let x_2340 : vec4<f32> = u_xlat8;
            let x_2343 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2346 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2340.x, x_2340.y, x_2340.x, x_2340.y) * vec4<f32>(x_2343.x, x_2343.y, x_2343.x, x_2343.y)) + vec4<f32>(x_2346.y, x_2346.w, x_2346.x, x_2346.w));
            let x_2349 : vec4<f32> = u_xlat8;
            let x_2352 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2355 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2349.x, x_2349.y) * vec2<f32>(x_2352.x, x_2352.y)) + vec2<f32>(x_2355.z, x_2355.w));
            let x_2359 : f32 = u_xlat10.y;
            u_xlat11.w = x_2359;
            let x_2361 : vec4<f32> = u_xlat11;
            let x_2362 : vec2<f32> = vec2<f32>(x_2361.y, x_2361.z);
            let x_2363 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2363.x, x_2362.x, x_2363.z, x_2362.y);
            let x_2365 : vec4<f32> = u_xlat8;
            let x_2368 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2371 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2365.x, x_2365.y, x_2365.x, x_2365.y) * vec4<f32>(x_2368.x, x_2368.y, x_2368.x, x_2368.y)) + vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2371.y));
            let x_2374 : vec4<f32> = u_xlat8;
            let x_2377 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2380 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2374.x, x_2374.y, x_2374.x, x_2374.y) * vec4<f32>(x_2377.x, x_2377.y, x_2377.x, x_2377.y)) + vec4<f32>(x_2380.w, x_2380.y, x_2380.w, x_2380.z));
            let x_2383 : vec4<f32> = u_xlat8;
            let x_2386 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2389 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2383.x, x_2383.y, x_2383.x, x_2383.y) * vec4<f32>(x_2386.x, x_2386.y, x_2386.x, x_2386.y)) + vec4<f32>(x_2389.x, x_2389.w, x_2389.z, x_2389.w));
            let x_2392 : vec4<f32> = u_xlat9;
            let x_2394 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2392.x, x_2392.x, x_2392.x, x_2392.y) * vec4<f32>(x_2394.z, x_2394.w, x_2394.y, x_2394.z));
            let x_2397 : vec4<f32> = u_xlat9;
            let x_2399 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2397.y, x_2397.y, x_2397.z, x_2397.z) * x_2399);
            let x_2402 : f32 = u_xlat9.z;
            let x_2404 : f32 = u_xlat14.y;
            u_xlat71 = (x_2402 * x_2404);
            let x_2407 : vec4<f32> = u_xlat12;
            let x_2408 : vec2<f32> = vec2<f32>(x_2407.x, x_2407.y);
            let x_2410 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2408.x, x_2408.y, x_2410);
            let x_2417 : vec3<f32> = txVec34;
            let x_2419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2417.xy, x_2417.z);
            u_xlat72 = x_2419;
            let x_2421 : vec4<f32> = u_xlat12;
            let x_2422 : vec2<f32> = vec2<f32>(x_2421.z, x_2421.w);
            let x_2424 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2422.x, x_2422.y, x_2424);
            let x_2432 : vec3<f32> = txVec35;
            let x_2434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2432.xy, x_2432.z);
            u_xlat73 = x_2434;
            let x_2435 : f32 = u_xlat73;
            let x_2437 : f32 = u_xlat15.y;
            u_xlat73 = (x_2435 * x_2437);
            let x_2440 : f32 = u_xlat15.x;
            let x_2441 : f32 = u_xlat72;
            let x_2443 : f32 = u_xlat73;
            u_xlat72 = ((x_2440 * x_2441) + x_2443);
            let x_2446 : vec2<f32> = u_xlat52;
            let x_2448 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2446.x, x_2446.y, x_2448);
            let x_2455 : vec3<f32> = txVec36;
            let x_2457 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2455.xy, x_2455.z);
            u_xlat73 = x_2457;
            let x_2459 : f32 = u_xlat15.z;
            let x_2460 : f32 = u_xlat73;
            let x_2462 : f32 = u_xlat72;
            u_xlat72 = ((x_2459 * x_2460) + x_2462);
            let x_2465 : vec4<f32> = u_xlat11;
            let x_2466 : vec2<f32> = vec2<f32>(x_2465.x, x_2465.y);
            let x_2468 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2466.x, x_2466.y, x_2468);
            let x_2475 : vec3<f32> = txVec37;
            let x_2477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2475.xy, x_2475.z);
            u_xlat73 = x_2477;
            let x_2479 : f32 = u_xlat15.w;
            let x_2480 : f32 = u_xlat73;
            let x_2482 : f32 = u_xlat72;
            u_xlat72 = ((x_2479 * x_2480) + x_2482);
            let x_2485 : vec4<f32> = u_xlat13;
            let x_2486 : vec2<f32> = vec2<f32>(x_2485.x, x_2485.y);
            let x_2488 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2486.x, x_2486.y, x_2488);
            let x_2495 : vec3<f32> = txVec38;
            let x_2497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2495.xy, x_2495.z);
            u_xlat73 = x_2497;
            let x_2499 : f32 = u_xlat16.x;
            let x_2500 : f32 = u_xlat73;
            let x_2502 : f32 = u_xlat72;
            u_xlat72 = ((x_2499 * x_2500) + x_2502);
            let x_2505 : vec4<f32> = u_xlat13;
            let x_2506 : vec2<f32> = vec2<f32>(x_2505.z, x_2505.w);
            let x_2508 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2506.x, x_2506.y, x_2508);
            let x_2515 : vec3<f32> = txVec39;
            let x_2517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2515.xy, x_2515.z);
            u_xlat73 = x_2517;
            let x_2519 : f32 = u_xlat16.y;
            let x_2520 : f32 = u_xlat73;
            let x_2522 : f32 = u_xlat72;
            u_xlat72 = ((x_2519 * x_2520) + x_2522);
            let x_2525 : vec4<f32> = u_xlat11;
            let x_2526 : vec2<f32> = vec2<f32>(x_2525.z, x_2525.w);
            let x_2528 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2526.x, x_2526.y, x_2528);
            let x_2535 : vec3<f32> = txVec40;
            let x_2537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2535.xy, x_2535.z);
            u_xlat73 = x_2537;
            let x_2539 : f32 = u_xlat16.z;
            let x_2540 : f32 = u_xlat73;
            let x_2542 : f32 = u_xlat72;
            u_xlat72 = ((x_2539 * x_2540) + x_2542);
            let x_2545 : vec4<f32> = u_xlat10;
            let x_2546 : vec2<f32> = vec2<f32>(x_2545.x, x_2545.y);
            let x_2548 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2546.x, x_2546.y, x_2548);
            let x_2555 : vec3<f32> = txVec41;
            let x_2557 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2555.xy, x_2555.z);
            u_xlat73 = x_2557;
            let x_2559 : f32 = u_xlat16.w;
            let x_2560 : f32 = u_xlat73;
            let x_2562 : f32 = u_xlat72;
            u_xlat72 = ((x_2559 * x_2560) + x_2562);
            let x_2565 : vec4<f32> = u_xlat10;
            let x_2566 : vec2<f32> = vec2<f32>(x_2565.z, x_2565.w);
            let x_2568 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2566.x, x_2566.y, x_2568);
            let x_2575 : vec3<f32> = txVec42;
            let x_2577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2575.xy, x_2575.z);
            u_xlat73 = x_2577;
            let x_2578 : f32 = u_xlat71;
            let x_2579 : f32 = u_xlat73;
            let x_2581 : f32 = u_xlat72;
            u_xlat70 = ((x_2578 * x_2579) + x_2581);
          } else {
            let x_2584 : vec4<f32> = u_xlat7;
            let x_2587 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2590 : vec2<f32> = ((vec2<f32>(x_2584.x, x_2584.y) * vec2<f32>(x_2587.z, x_2587.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2591 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2590.x, x_2590.y, x_2591.z, x_2591.w);
            let x_2593 : vec4<f32> = u_xlat8;
            let x_2595 : vec2<f32> = floor(vec2<f32>(x_2593.x, x_2593.y));
            let x_2596 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2595.x, x_2595.y, x_2596.z, x_2596.w);
            let x_2598 : vec4<f32> = u_xlat7;
            let x_2601 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2604 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2598.x, x_2598.y) * vec2<f32>(x_2601.z, x_2601.w)) + -(vec2<f32>(x_2604.x, x_2604.y)));
            let x_2608 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2608.x, x_2608.x, x_2608.y, x_2608.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2611 : vec4<f32> = u_xlat9;
            let x_2613 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2611.x, x_2611.x, x_2611.z, x_2611.z) * vec4<f32>(x_2613.x, x_2613.x, x_2613.z, x_2613.z));
            let x_2616 : vec4<f32> = u_xlat10;
            let x_2618 : vec2<f32> = (vec2<f32>(x_2616.y, x_2616.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2619 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2619.x, x_2618.x, x_2619.z, x_2618.y);
            let x_2621 : vec4<f32> = u_xlat10;
            let x_2624 : vec2<f32> = u_xlat52;
            let x_2626 : vec2<f32> = ((vec2<f32>(x_2621.x, x_2621.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2624));
            let x_2627 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2626.x, x_2627.y, x_2626.y, x_2627.w);
            let x_2629 : vec2<f32> = u_xlat52;
            let x_2631 : vec2<f32> = (-(x_2629) + vec2<f32>(1.0f, 1.0f));
            let x_2632 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2631.x, x_2631.y, x_2632.z, x_2632.w);
            let x_2634 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2634, vec2<f32>(0.0f, 0.0f));
            let x_2636 : vec2<f32> = u_xlat54;
            let x_2638 : vec2<f32> = u_xlat54;
            let x_2640 : vec4<f32> = u_xlat10;
            let x_2642 : vec2<f32> = ((-(x_2636) * x_2638) + vec2<f32>(x_2640.x, x_2640.y));
            let x_2643 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2642.x, x_2642.y, x_2643.z, x_2643.w);
            let x_2645 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2645, vec2<f32>(0.0f, 0.0f));
            let x_2648 : vec2<f32> = u_xlat54;
            let x_2650 : vec2<f32> = u_xlat54;
            let x_2652 : vec4<f32> = u_xlat9;
            let x_2654 : vec2<f32> = ((-(x_2648) * x_2650) + vec2<f32>(x_2652.y, x_2652.w));
            let x_2655 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2654.x, x_2655.y, x_2654.y);
            let x_2657 : vec4<f32> = u_xlat10;
            let x_2659 : vec2<f32> = (vec2<f32>(x_2657.x, x_2657.y) + vec2<f32>(2.0f, 2.0f));
            let x_2660 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2659.x, x_2659.y, x_2660.z, x_2660.w);
            let x_2662 : vec3<f32> = u_xlat31;
            let x_2664 : vec2<f32> = (vec2<f32>(x_2662.x, x_2662.z) + vec2<f32>(2.0f, 2.0f));
            let x_2665 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2665.x, x_2664.x, x_2665.z, x_2664.y);
            let x_2668 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2668 * 0.08163200318813323975f);
            let x_2671 : vec4<f32> = u_xlat9;
            let x_2673 : vec3<f32> = (vec3<f32>(x_2671.z, x_2671.x, x_2671.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2674 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2674.w);
            let x_2676 : vec4<f32> = u_xlat10;
            let x_2678 : vec2<f32> = (vec2<f32>(x_2676.x, x_2676.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2679 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2678.x, x_2678.y, x_2679.z, x_2679.w);
            let x_2682 : f32 = u_xlat13.y;
            u_xlat12.x = x_2682;
            let x_2684 : vec2<f32> = u_xlat52;
            let x_2687 : vec2<f32> = ((vec2<f32>(x_2684.x, x_2684.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2688 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2688.x, x_2687.x, x_2688.z, x_2687.y);
            let x_2690 : vec2<f32> = u_xlat52;
            let x_2693 : vec2<f32> = ((vec2<f32>(x_2690.x, x_2690.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2694 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2693.x, x_2694.y, x_2693.y, x_2694.w);
            let x_2697 : f32 = u_xlat9.x;
            u_xlat10.y = x_2697;
            let x_2700 : f32 = u_xlat11.y;
            u_xlat10.w = x_2700;
            let x_2702 : vec4<f32> = u_xlat10;
            let x_2703 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2702 + x_2703);
            let x_2705 : vec2<f32> = u_xlat52;
            let x_2708 : vec2<f32> = ((vec2<f32>(x_2705.y, x_2705.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2709 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2709.x, x_2708.x, x_2709.z, x_2708.y);
            let x_2711 : vec2<f32> = u_xlat52;
            let x_2714 : vec2<f32> = ((vec2<f32>(x_2711.y, x_2711.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2715 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2714.x, x_2715.y, x_2714.y, x_2715.w);
            let x_2718 : f32 = u_xlat9.y;
            u_xlat11.y = x_2718;
            let x_2720 : vec4<f32> = u_xlat11;
            let x_2721 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2720 + x_2721);
            let x_2723 : vec4<f32> = u_xlat10;
            let x_2724 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2723 / x_2724);
            let x_2726 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2726 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2728 : vec4<f32> = u_xlat11;
            let x_2729 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2728 / x_2729);
            let x_2731 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2731 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2733 : vec4<f32> = u_xlat10;
            let x_2736 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2733.w, x_2733.x, x_2733.y, x_2733.z) * vec4<f32>(x_2736.x, x_2736.x, x_2736.x, x_2736.x));
            let x_2739 : vec4<f32> = u_xlat11;
            let x_2742 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2739.x, x_2739.w, x_2739.y, x_2739.z) * vec4<f32>(x_2742.y, x_2742.y, x_2742.y, x_2742.y));
            let x_2745 : vec4<f32> = u_xlat10;
            let x_2746 : vec3<f32> = vec3<f32>(x_2745.y, x_2745.z, x_2745.w);
            let x_2747 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2746.x, x_2747.y, x_2746.y, x_2746.z);
            let x_2750 : f32 = u_xlat11.x;
            u_xlat13.y = x_2750;
            let x_2752 : vec4<f32> = u_xlat8;
            let x_2755 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2758 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2752.x, x_2752.y, x_2752.x, x_2752.y) * vec4<f32>(x_2755.x, x_2755.y, x_2755.x, x_2755.y)) + vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2758.y));
            let x_2761 : vec4<f32> = u_xlat8;
            let x_2764 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2767 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2761.x, x_2761.y) * vec2<f32>(x_2764.x, x_2764.y)) + vec2<f32>(x_2767.w, x_2767.y));
            let x_2771 : f32 = u_xlat13.y;
            u_xlat10.y = x_2771;
            let x_2774 : f32 = u_xlat11.z;
            u_xlat13.y = x_2774;
            let x_2776 : vec4<f32> = u_xlat8;
            let x_2779 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2782 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y) * vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y)) + vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2782.y));
            let x_2785 : vec4<f32> = u_xlat8;
            let x_2788 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2791 : vec4<f32> = u_xlat13;
            let x_2793 : vec2<f32> = ((vec2<f32>(x_2785.x, x_2785.y) * vec2<f32>(x_2788.x, x_2788.y)) + vec2<f32>(x_2791.w, x_2791.y));
            let x_2794 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2793.x, x_2793.y, x_2794.z, x_2794.w);
            let x_2797 : f32 = u_xlat13.y;
            u_xlat10.z = x_2797;
            let x_2799 : vec4<f32> = u_xlat8;
            let x_2802 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2805 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y) * vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y)) + vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.z));
            let x_2809 : f32 = u_xlat11.w;
            u_xlat13.y = x_2809;
            let x_2811 : vec4<f32> = u_xlat8;
            let x_2814 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2817 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y) * vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y)) + vec4<f32>(x_2817.x, x_2817.y, x_2817.z, x_2817.y));
            let x_2821 : vec4<f32> = u_xlat8;
            let x_2824 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2827 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2821.x, x_2821.y) * vec2<f32>(x_2824.x, x_2824.y)) + vec2<f32>(x_2827.w, x_2827.y));
            let x_2831 : f32 = u_xlat13.y;
            u_xlat10.w = x_2831;
            let x_2834 : vec4<f32> = u_xlat8;
            let x_2837 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2840 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2834.x, x_2834.y) * vec2<f32>(x_2837.x, x_2837.y)) + vec2<f32>(x_2840.x, x_2840.w));
            let x_2843 : vec4<f32> = u_xlat13;
            let x_2844 : vec3<f32> = vec3<f32>(x_2843.x, x_2843.z, x_2843.w);
            let x_2845 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2844.x, x_2845.y, x_2844.y, x_2844.z);
            let x_2847 : vec4<f32> = u_xlat8;
            let x_2850 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2853 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2847.x, x_2847.y, x_2847.x, x_2847.y) * vec4<f32>(x_2850.x, x_2850.y, x_2850.x, x_2850.y)) + vec4<f32>(x_2853.x, x_2853.y, x_2853.z, x_2853.y));
            let x_2857 : vec4<f32> = u_xlat8;
            let x_2860 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2863 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.x, x_2860.y)) + vec2<f32>(x_2863.w, x_2863.y));
            let x_2867 : f32 = u_xlat10.x;
            u_xlat11.x = x_2867;
            let x_2869 : vec4<f32> = u_xlat8;
            let x_2872 : vec4<f32> = x_163.x_AdditionalShadowmapSize;
            let x_2875 : vec4<f32> = u_xlat11;
            let x_2877 : vec2<f32> = ((vec2<f32>(x_2869.x, x_2869.y) * vec2<f32>(x_2872.x, x_2872.y)) + vec2<f32>(x_2875.x, x_2875.y));
            let x_2878 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
            let x_2881 : vec4<f32> = u_xlat9;
            let x_2883 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2881.x, x_2881.x, x_2881.x, x_2881.x) * x_2883);
            let x_2886 : vec4<f32> = u_xlat9;
            let x_2888 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2886.y, x_2886.y, x_2886.y, x_2886.y) * x_2888);
            let x_2891 : vec4<f32> = u_xlat9;
            let x_2893 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2891.z, x_2891.z, x_2891.z, x_2891.z) * x_2893);
            let x_2895 : vec4<f32> = u_xlat9;
            let x_2897 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2895.w, x_2895.w, x_2895.w, x_2895.w) * x_2897);
            let x_2900 : vec4<f32> = u_xlat14;
            let x_2901 : vec2<f32> = vec2<f32>(x_2900.x, x_2900.y);
            let x_2903 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2901.x, x_2901.y, x_2903);
            let x_2910 : vec3<f32> = txVec43;
            let x_2912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2910.xy, x_2910.z);
            u_xlat71 = x_2912;
            let x_2914 : vec4<f32> = u_xlat14;
            let x_2915 : vec2<f32> = vec2<f32>(x_2914.z, x_2914.w);
            let x_2917 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
            let x_2924 : vec3<f32> = txVec44;
            let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
            u_xlat72 = x_2926;
            let x_2927 : f32 = u_xlat72;
            let x_2929 : f32 = u_xlat19.y;
            u_xlat72 = (x_2927 * x_2929);
            let x_2932 : f32 = u_xlat19.x;
            let x_2933 : f32 = u_xlat71;
            let x_2935 : f32 = u_xlat72;
            u_xlat71 = ((x_2932 * x_2933) + x_2935);
            let x_2938 : vec2<f32> = u_xlat52;
            let x_2940 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
            let x_2947 : vec3<f32> = txVec45;
            let x_2949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
            u_xlat72 = x_2949;
            let x_2951 : f32 = u_xlat19.z;
            let x_2952 : f32 = u_xlat72;
            let x_2954 : f32 = u_xlat71;
            u_xlat71 = ((x_2951 * x_2952) + x_2954);
            let x_2957 : vec4<f32> = u_xlat17;
            let x_2958 : vec2<f32> = vec2<f32>(x_2957.x, x_2957.y);
            let x_2960 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
            let x_2967 : vec3<f32> = txVec46;
            let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
            u_xlat72 = x_2969;
            let x_2971 : f32 = u_xlat19.w;
            let x_2972 : f32 = u_xlat72;
            let x_2974 : f32 = u_xlat71;
            u_xlat71 = ((x_2971 * x_2972) + x_2974);
            let x_2977 : vec4<f32> = u_xlat15;
            let x_2978 : vec2<f32> = vec2<f32>(x_2977.x, x_2977.y);
            let x_2980 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2978.x, x_2978.y, x_2980);
            let x_2987 : vec3<f32> = txVec47;
            let x_2989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2987.xy, x_2987.z);
            u_xlat72 = x_2989;
            let x_2991 : f32 = u_xlat20.x;
            let x_2992 : f32 = u_xlat72;
            let x_2994 : f32 = u_xlat71;
            u_xlat71 = ((x_2991 * x_2992) + x_2994);
            let x_2997 : vec4<f32> = u_xlat15;
            let x_2998 : vec2<f32> = vec2<f32>(x_2997.z, x_2997.w);
            let x_3000 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2998.x, x_2998.y, x_3000);
            let x_3007 : vec3<f32> = txVec48;
            let x_3009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3007.xy, x_3007.z);
            u_xlat72 = x_3009;
            let x_3011 : f32 = u_xlat20.y;
            let x_3012 : f32 = u_xlat72;
            let x_3014 : f32 = u_xlat71;
            u_xlat71 = ((x_3011 * x_3012) + x_3014);
            let x_3017 : vec4<f32> = u_xlat16;
            let x_3018 : vec2<f32> = vec2<f32>(x_3017.x, x_3017.y);
            let x_3020 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3018.x, x_3018.y, x_3020);
            let x_3027 : vec3<f32> = txVec49;
            let x_3029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3027.xy, x_3027.z);
            u_xlat72 = x_3029;
            let x_3031 : f32 = u_xlat20.z;
            let x_3032 : f32 = u_xlat72;
            let x_3034 : f32 = u_xlat71;
            u_xlat71 = ((x_3031 * x_3032) + x_3034);
            let x_3037 : vec4<f32> = u_xlat17;
            let x_3038 : vec2<f32> = vec2<f32>(x_3037.z, x_3037.w);
            let x_3040 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
            let x_3047 : vec3<f32> = txVec50;
            let x_3049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3047.xy, x_3047.z);
            u_xlat72 = x_3049;
            let x_3051 : f32 = u_xlat20.w;
            let x_3052 : f32 = u_xlat72;
            let x_3054 : f32 = u_xlat71;
            u_xlat71 = ((x_3051 * x_3052) + x_3054);
            let x_3057 : vec4<f32> = u_xlat18;
            let x_3058 : vec2<f32> = vec2<f32>(x_3057.x, x_3057.y);
            let x_3060 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3058.x, x_3058.y, x_3060);
            let x_3067 : vec3<f32> = txVec51;
            let x_3069 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3067.xy, x_3067.z);
            u_xlat72 = x_3069;
            let x_3071 : f32 = u_xlat21.x;
            let x_3072 : f32 = u_xlat72;
            let x_3074 : f32 = u_xlat71;
            u_xlat71 = ((x_3071 * x_3072) + x_3074);
            let x_3077 : vec4<f32> = u_xlat18;
            let x_3078 : vec2<f32> = vec2<f32>(x_3077.z, x_3077.w);
            let x_3080 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3078.x, x_3078.y, x_3080);
            let x_3087 : vec3<f32> = txVec52;
            let x_3089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
            u_xlat72 = x_3089;
            let x_3091 : f32 = u_xlat21.y;
            let x_3092 : f32 = u_xlat72;
            let x_3094 : f32 = u_xlat71;
            u_xlat71 = ((x_3091 * x_3092) + x_3094);
            let x_3097 : vec2<f32> = u_xlat32;
            let x_3099 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
            let x_3106 : vec3<f32> = txVec53;
            let x_3108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
            u_xlat72 = x_3108;
            let x_3110 : f32 = u_xlat21.z;
            let x_3111 : f32 = u_xlat72;
            let x_3113 : f32 = u_xlat71;
            u_xlat71 = ((x_3110 * x_3111) + x_3113);
            let x_3116 : vec2<f32> = u_xlat60;
            let x_3118 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
            let x_3125 : vec3<f32> = txVec54;
            let x_3127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
            u_xlat72 = x_3127;
            let x_3129 : f32 = u_xlat21.w;
            let x_3130 : f32 = u_xlat72;
            let x_3132 : f32 = u_xlat71;
            u_xlat71 = ((x_3129 * x_3130) + x_3132);
            let x_3135 : vec4<f32> = u_xlat13;
            let x_3136 : vec2<f32> = vec2<f32>(x_3135.x, x_3135.y);
            let x_3138 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3136.x, x_3136.y, x_3138);
            let x_3145 : vec3<f32> = txVec55;
            let x_3147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3145.xy, x_3145.z);
            u_xlat72 = x_3147;
            let x_3149 : f32 = u_xlat9.x;
            let x_3150 : f32 = u_xlat72;
            let x_3152 : f32 = u_xlat71;
            u_xlat71 = ((x_3149 * x_3150) + x_3152);
            let x_3155 : vec4<f32> = u_xlat13;
            let x_3156 : vec2<f32> = vec2<f32>(x_3155.z, x_3155.w);
            let x_3158 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3156.x, x_3156.y, x_3158);
            let x_3165 : vec3<f32> = txVec56;
            let x_3167 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3165.xy, x_3165.z);
            u_xlat72 = x_3167;
            let x_3169 : f32 = u_xlat9.y;
            let x_3170 : f32 = u_xlat72;
            let x_3172 : f32 = u_xlat71;
            u_xlat71 = ((x_3169 * x_3170) + x_3172);
            let x_3175 : vec2<f32> = u_xlat55;
            let x_3177 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec57;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat72 = x_3186;
            let x_3188 : f32 = u_xlat9.z;
            let x_3189 : f32 = u_xlat72;
            let x_3191 : f32 = u_xlat71;
            u_xlat71 = ((x_3188 * x_3189) + x_3191);
            let x_3194 : vec4<f32> = u_xlat8;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.x, x_3194.y);
            let x_3197 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec58;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat72 = x_3206;
            let x_3208 : f32 = u_xlat9.w;
            let x_3209 : f32 = u_xlat72;
            let x_3211 : f32 = u_xlat71;
            u_xlat70 = ((x_3208 * x_3209) + x_3211);
          }
        }
      } else {
        let x_3215 : vec4<f32> = u_xlat7;
        let x_3216 : vec2<f32> = vec2<f32>(x_3215.x, x_3215.y);
        let x_3218 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3216.x, x_3216.y, x_3218);
        let x_3225 : vec3<f32> = txVec59;
        let x_3227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3225.xy, x_3225.z);
        u_xlat70 = x_3227;
      }
      let x_3228 : i32 = u_xlati68;
      let x_3230 : f32 = x_163.x_AdditionalShadowParams[x_3228].x;
      u_xlat71 = (1.0f + -(x_3230));
      let x_3233 : f32 = u_xlat70;
      let x_3234 : i32 = u_xlati68;
      let x_3236 : f32 = x_163.x_AdditionalShadowParams[x_3234].x;
      let x_3238 : f32 = u_xlat71;
      u_xlat70 = ((x_3233 * x_3236) + x_3238);
      let x_3241 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3241);
      let x_3245 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3245 >= 1.0f);
      let x_3247 : bool = u_xlatb71;
      let x_3248 : bool = u_xlatb72;
      u_xlatb71 = (x_3247 | x_3248);
      let x_3250 : bool = u_xlatb71;
      let x_3251 : f32 = u_xlat70;
      u_xlat70 = select(x_3251, 1.0f, x_3250);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3254 : f32 = u_xlat70;
    u_xlat71 = (-(x_3254) + 1.0f);
    let x_3257 : f32 = u_xlat66;
    let x_3258 : f32 = u_xlat71;
    let x_3260 : f32 = u_xlat70;
    u_xlat70 = ((x_3257 * x_3258) + x_3260);
    let x_3262 : f32 = u_xlat69;
    let x_3263 : f32 = u_xlat70;
    u_xlat69 = (x_3262 * x_3263);
    let x_3265 : f32 = u_xlat69;
    let x_3267 : i32 = u_xlati68;
    let x_3269 : vec4<f32> = x_1843.x_AdditionalLightsColor[x_3267];
    let x_3271 : vec3<f32> = (vec3<f32>(x_3265, x_3265, x_3265) * vec3<f32>(x_3269.x, x_3269.y, x_3269.z));
    let x_3272 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3271.x, x_3271.y, x_3271.z, x_3272.w);
    let x_3274 : vec4<f32> = u_xlat2;
    let x_3276 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(vec3<f32>(x_3274.x, x_3274.y, x_3274.z), vec3<f32>(x_3276.x, x_3276.y, x_3276.z));
    let x_3279 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3279, 0.0f, 1.0f);
    let x_3281 : f32 = u_xlat68;
    let x_3283 : vec4<f32> = u_xlat7;
    let x_3285 : vec3<f32> = (vec3<f32>(x_3281, x_3281, x_3281) * vec3<f32>(x_3283.x, x_3283.y, x_3283.z));
    let x_3286 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3285.x, x_3285.y, x_3285.z, x_3286.w);
    let x_3288 : vec4<f32> = u_xlat6;
    let x_3290 : vec4<f32> = u_xlat1;
    let x_3293 : vec4<f32> = u_xlat5;
    let x_3295 : vec3<f32> = ((vec3<f32>(x_3288.x, x_3288.y, x_3288.z) * vec3<f32>(x_3290.x, x_3290.y, x_3290.z)) + vec3<f32>(x_3293.x, x_3293.y, x_3293.z));
    let x_3296 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3295.x, x_3295.y, x_3295.z, x_3296.w);

    continuing {
      let x_3298 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3298 + bitcast<u32>(1i));
    }
  }
  let x_3300 : vec4<f32> = u_xlat4;
  let x_3302 : vec4<f32> = u_xlat1;
  let x_3305 : vec4<f32> = u_xlat3;
  let x_3307 : vec3<f32> = ((vec3<f32>(x_3300.x, x_3300.y, x_3300.z) * vec3<f32>(x_3302.x, x_3302.y, x_3302.z)) + vec3<f32>(x_3305.x, x_3305.y, x_3305.z));
  let x_3308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3307.x, x_3307.y, x_3307.z, x_3308.w);
  let x_3312 : vec4<f32> = u_xlat5;
  let x_3314 : vec4<f32> = u_xlat1;
  let x_3316 : vec3<f32> = (vec3<f32>(x_3312.x, x_3312.y, x_3312.z) + vec3<f32>(x_3314.x, x_3314.y, x_3314.z));
  let x_3317 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3316.x, x_3316.y, x_3316.z, x_3317.w);
  let x_3319 : bool = u_xlatb44;
  let x_3320 : f32 = u_xlat22;
  SV_Target0.w = select(1.0f, x_3320, x_3319);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


