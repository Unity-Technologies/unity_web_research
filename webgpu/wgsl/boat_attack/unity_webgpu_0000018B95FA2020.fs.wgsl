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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_174 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb66 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb67 : bool;

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

var<private> u_xlat69 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb68 : bool;

@group(1) @binding(2) var<uniform> x_1729 : UnityPerDraw;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1836 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu68 : u32;

var<private> u_xlatb69 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
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
  var x_1973 : f32;
  var x_1984 : f32;
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
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat22 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat44 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat66 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat66;
  let x_101 : f32 = u_xlat44;
  u_xlat44 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat44;
  u_xlat44 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat22;
  let x_108 : f32 = u_xlat44;
  u_xlat22 = (x_107 / x_108);
  let x_110 : f32 = u_xlat22;
  u_xlat22 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb44;
  if (x_120) {
    let x_124 : f32 = u_xlat22;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_177 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres0;
  let x_180 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  let x_188 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres1;
  let x_191 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = vs_TEXCOORD2;
  let x_199 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres2;
  let x_202 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + -(vec3<f32>(x_199.x, x_199.y, x_199.z)));
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : vec4<f32> = vs_TEXCOORD2;
  let x_209 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres3;
  let x_212 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_221.x, x_221.y, x_221.z), vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_235 : vec4<f32> = u_xlat6;
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_244 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = x_174.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_244 < x_247);
  let x_250 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_250);
  let x_254 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_254);
  let x_258 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_258);
  let x_262 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_262);
  let x_266 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_266);
  let x_272 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_272);
  let x_276 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_276);
  let x_279 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat4;
  let x_283 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) + vec3<f32>(x_281.y, x_281.z, x_281.w));
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat3;
  let x_289 : vec3<f32> = max(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_289.x, x_289.y, x_289.z);
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_292, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_300 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_300) + 4.0f);
  let x_307 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_307);
  let x_311 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_311) << bitcast<u32>(2i));
  let x_314 : vec4<f32> = vs_TEXCOORD2;
  let x_316 : i32 = u_xlati0;
  let x_319 : i32 = u_xlati0;
  let x_323 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_316 + 1i) / 4i)][((x_319 + 1i) % 4i)];
  let x_325 : vec3<f32> = (vec3<f32>(x_314.y, x_314.y, x_314.y) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : i32 = u_xlati0;
  let x_330 : i32 = u_xlati0;
  let x_333 : vec4<f32> = x_174.x_MainLightWorldToShadow[(x_328 / 4i)][(x_330 % 4i)];
  let x_335 : vec4<f32> = vs_TEXCOORD2;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.x, x_335.x)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : i32 = u_xlati0;
  let x_346 : i32 = u_xlati0;
  let x_350 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_343 + 2i) / 4i)][((x_346 + 2i) % 4i)];
  let x_352 : vec4<f32> = vs_TEXCOORD2;
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.z, x_352.z, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat3;
  let x_362 : i32 = u_xlati0;
  let x_365 : i32 = u_xlati0;
  let x_369 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_362 + 3i) / 4i)][((x_365 + 3i) % 4i)];
  let x_371 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : f32 = hlslcc_FragCoord.w;
  let x_377 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_375 * x_377);
  let x_381 : f32 = u_xlat0.x;
  let x_384 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_381 / x_384);
  let x_388 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_388) + 1.0f);
  let x_393 : f32 = u_xlat0.x;
  let x_395 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_393 * x_395);
  let x_399 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_399, 0.0f);
  let x_403 : f32 = u_xlat0.x;
  let x_406 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_403 * x_406);
  let x_415 : vec2<f32> = vs_TEXCOORD1;
  let x_417 : f32 = x_44.x_GlobalMipBias.x;
  let x_418 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_415, x_417);
  u_xlat4 = x_418;
  let x_423 : vec2<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_44.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_423, x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.z);
  let x_428 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat4;
  let x_434 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec3<f32> = u_xlat2;
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(x_437, vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : f32 = u_xlat66;
  u_xlat66 = (x_441 + 0.5f);
  let x_443 : f32 = u_xlat66;
  let x_445 : vec4<f32> = u_xlat5;
  let x_447 : vec3<f32> = (vec3<f32>(x_443, x_443, x_443) * vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_451 : f32 = u_xlat4.w;
  u_xlat66 = max(x_451, 0.00009999999747378752f);
  let x_453 : vec4<f32> = u_xlat4;
  let x_455 : f32 = u_xlat66;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) / vec3<f32>(x_455, x_455, x_455));
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_463 : f32 = x_174.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_463);
  let x_465 : bool = u_xlatb66;
  if (x_465) {
    let x_469 : f32 = x_174.x_MainLightShadowParams.y;
    u_xlatb66 = (x_469 == 1.0f);
    let x_471 : bool = u_xlatb66;
    if (x_471) {
      let x_474 : vec4<f32> = u_xlat3;
      let x_477 : vec4<f32> = x_174.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y) + x_477);
      let x_481 : vec4<f32> = u_xlat5;
      let x_482 : vec2<f32> = vec2<f32>(x_481.x, x_481.y);
      let x_484 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_482.x, x_482.y, x_484);
      let x_496 : vec3<f32> = txVec0;
      let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_496.xy, x_496.z);
      u_xlat6.x = x_498;
      let x_501 : vec4<f32> = u_xlat5;
      let x_502 : vec2<f32> = vec2<f32>(x_501.z, x_501.w);
      let x_504 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_502.x, x_502.y, x_504);
      let x_511 : vec3<f32> = txVec1;
      let x_513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_511.xy, x_511.z);
      u_xlat6.y = x_513;
      let x_515 : vec4<f32> = u_xlat3;
      let x_518 : vec4<f32> = x_174.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_515.x, x_515.y, x_515.x, x_515.y) + x_518);
      let x_521 : vec4<f32> = u_xlat5;
      let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
      let x_524 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_522.x, x_522.y, x_524);
      let x_531 : vec3<f32> = txVec2;
      let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_531.xy, x_531.z);
      u_xlat6.z = x_533;
      let x_536 : vec4<f32> = u_xlat5;
      let x_537 : vec2<f32> = vec2<f32>(x_536.z, x_536.w);
      let x_539 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_537.x, x_537.y, x_539);
      let x_546 : vec3<f32> = txVec3;
      let x_548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_546.xy, x_546.z);
      u_xlat6.w = x_548;
      let x_550 : vec4<f32> = u_xlat6;
      u_xlat66 = dot(x_550, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_557 : f32 = x_174.x_MainLightShadowParams.y;
      u_xlatb67 = (x_557 == 2.0f);
      let x_559 : bool = u_xlatb67;
      if (x_559) {
        let x_562 : vec4<f32> = u_xlat3;
        let x_566 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_570 : vec2<f32> = ((vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_566.z, x_566.w)) + vec2<f32>(0.5f, 0.5f));
        let x_571 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
        let x_573 : vec4<f32> = u_xlat5;
        let x_575 : vec2<f32> = floor(vec2<f32>(x_573.x, x_573.y));
        let x_576 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_580 : vec4<f32> = u_xlat3;
        let x_583 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(x_583.z, x_583.w)) + -(vec2<f32>(x_586.x, x_586.y)));
        let x_590 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_590.x, x_590.x, x_590.y, x_590.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_595 : vec4<f32> = u_xlat6;
        let x_597 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_595.x, x_595.x, x_595.z, x_595.z) * vec4<f32>(x_597.x, x_597.x, x_597.z, x_597.z));
        let x_600 : vec4<f32> = u_xlat7;
        let x_604 : vec2<f32> = (vec2<f32>(x_600.y, x_600.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_605 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_604.x, x_605.y, x_604.y, x_605.w);
        let x_607 : vec4<f32> = u_xlat7;
        let x_610 : vec2<f32> = u_xlat49;
        let x_612 : vec2<f32> = ((vec2<f32>(x_607.x, x_607.z) * vec2<f32>(0.5f, 0.5f)) + -(x_610));
        let x_613 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_616 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_616) + vec2<f32>(1.0f, 1.0f));
        let x_621 : vec2<f32> = u_xlat49;
        let x_623 : vec2<f32> = min(x_621, vec2<f32>(0.0f, 0.0f));
        let x_624 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat8;
        let x_629 : vec4<f32> = u_xlat8;
        let x_632 : vec2<f32> = u_xlat51;
        let x_633 : vec2<f32> = ((-(vec2<f32>(x_626.x, x_626.y)) * vec2<f32>(x_629.x, x_629.y)) + x_632);
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_636, vec2<f32>(0.0f, 0.0f));
        let x_638 : vec2<f32> = u_xlat49;
        let x_640 : vec2<f32> = u_xlat49;
        let x_642 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_638) * x_640) + vec2<f32>(x_642.y, x_642.w));
        let x_645 : vec4<f32> = u_xlat8;
        let x_647 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) + vec2<f32>(1.0f, 1.0f));
        let x_648 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_650 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_650 + vec2<f32>(1.0f, 1.0f));
        let x_653 : vec4<f32> = u_xlat7;
        let x_657 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_658 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_660 : vec2<f32> = u_xlat51;
        let x_661 : vec2<f32> = (x_660 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_662 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat8;
        let x_666 : vec2<f32> = (vec2<f32>(x_664.x, x_664.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_667 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_670 : vec2<f32> = u_xlat49;
        let x_671 : vec2<f32> = (x_670 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_672 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_674.y, x_674.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_678 : f32 = u_xlat8.x;
        u_xlat9.z = x_678;
        let x_681 : f32 = u_xlat49.x;
        u_xlat9.w = x_681;
        let x_684 : f32 = u_xlat10.x;
        u_xlat7.z = x_684;
        let x_687 : f32 = u_xlat6.x;
        u_xlat7.w = x_687;
        let x_690 : vec4<f32> = u_xlat7;
        let x_692 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_690.z, x_690.w, x_690.x, x_690.z) + vec4<f32>(x_692.z, x_692.w, x_692.x, x_692.z));
        let x_696 : f32 = u_xlat9.y;
        u_xlat8.z = x_696;
        let x_699 : f32 = u_xlat49.y;
        u_xlat8.w = x_699;
        let x_702 : f32 = u_xlat7.y;
        u_xlat10.z = x_702;
        let x_705 : f32 = u_xlat6.z;
        u_xlat10.w = x_705;
        let x_707 : vec4<f32> = u_xlat8;
        let x_709 : vec4<f32> = u_xlat10;
        let x_711 : vec3<f32> = (vec3<f32>(x_707.z, x_707.y, x_707.w) + vec3<f32>(x_709.z, x_709.y, x_709.w));
        let x_712 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat7;
        let x_716 : vec4<f32> = u_xlat11;
        let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.z, x_714.w) / vec3<f32>(x_716.z, x_716.w, x_716.y));
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat7;
        let x_726 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
        let x_729 : vec4<f32> = u_xlat10;
        let x_731 : vec4<f32> = u_xlat6;
        let x_733 : vec3<f32> = (vec3<f32>(x_729.z, x_729.y, x_729.w) / vec3<f32>(x_731.x, x_731.y, x_731.z));
        let x_734 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_736 : vec4<f32> = u_xlat8;
        let x_738 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_739 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat7;
        let x_744 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_746 : vec3<f32> = (vec3<f32>(x_741.y, x_741.x, x_741.z) * vec3<f32>(x_744.x, x_744.x, x_744.x));
        let x_747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat8;
        let x_752 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_754 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_752.y, x_752.y, x_752.y));
        let x_755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_758 : f32 = u_xlat8.x;
        u_xlat7.w = x_758;
        let x_760 : vec4<f32> = u_xlat5;
        let x_763 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y) * vec4<f32>(x_763.x, x_763.y, x_763.x, x_763.y)) + vec4<f32>(x_766.y, x_766.w, x_766.x, x_766.w));
        let x_769 : vec4<f32> = u_xlat5;
        let x_772 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_775 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_769.x, x_769.y) * vec2<f32>(x_772.x, x_772.y)) + vec2<f32>(x_775.z, x_775.w));
        let x_779 : f32 = u_xlat7.y;
        u_xlat8.w = x_779;
        let x_781 : vec4<f32> = u_xlat8;
        let x_782 : vec2<f32> = vec2<f32>(x_781.y, x_781.z);
        let x_783 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_783.x, x_782.x, x_783.z, x_782.y);
        let x_785 : vec4<f32> = u_xlat5;
        let x_788 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_791 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y) * vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y)) + vec4<f32>(x_791.x, x_791.y, x_791.z, x_791.y));
        let x_794 : vec4<f32> = u_xlat5;
        let x_797 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_800 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_794.x, x_794.y, x_794.x, x_794.y) * vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y)) + vec4<f32>(x_800.w, x_800.y, x_800.w, x_800.z));
        let x_803 : vec4<f32> = u_xlat5;
        let x_806 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_809 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y) * vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y)) + vec4<f32>(x_809.x, x_809.w, x_809.z, x_809.w));
        let x_813 : vec4<f32> = u_xlat6;
        let x_815 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_813.x, x_813.x, x_813.x, x_813.y) * vec4<f32>(x_815.z, x_815.w, x_815.y, x_815.z));
        let x_819 : vec4<f32> = u_xlat6;
        let x_821 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_819.y, x_819.y, x_819.z, x_819.z) * x_821);
        let x_825 : f32 = u_xlat6.z;
        let x_827 : f32 = u_xlat11.y;
        u_xlat67 = (x_825 * x_827);
        let x_830 : vec4<f32> = u_xlat9;
        let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
        let x_833 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_841 : vec3<f32> = txVec4;
        let x_843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_841.xy, x_841.z);
        u_xlat68 = x_843;
        let x_845 : vec4<f32> = u_xlat9;
        let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
        let x_848 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_856 : vec3<f32> = txVec5;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
        u_xlat69 = x_858;
        let x_859 : f32 = u_xlat69;
        let x_861 : f32 = u_xlat12.y;
        u_xlat69 = (x_859 * x_861);
        let x_864 : f32 = u_xlat12.x;
        let x_865 : f32 = u_xlat68;
        let x_867 : f32 = u_xlat69;
        u_xlat68 = ((x_864 * x_865) + x_867);
        let x_870 : vec2<f32> = u_xlat49;
        let x_872 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_870.x, x_870.y, x_872);
        let x_879 : vec3<f32> = txVec6;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_879.xy, x_879.z);
        u_xlat69 = x_881;
        let x_883 : f32 = u_xlat12.z;
        let x_884 : f32 = u_xlat69;
        let x_886 : f32 = u_xlat68;
        u_xlat68 = ((x_883 * x_884) + x_886);
        let x_889 : vec4<f32> = u_xlat8;
        let x_890 : vec2<f32> = vec2<f32>(x_889.x, x_889.y);
        let x_892 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_890.x, x_890.y, x_892);
        let x_899 : vec3<f32> = txVec7;
        let x_901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_899.xy, x_899.z);
        u_xlat69 = x_901;
        let x_903 : f32 = u_xlat12.w;
        let x_904 : f32 = u_xlat69;
        let x_906 : f32 = u_xlat68;
        u_xlat68 = ((x_903 * x_904) + x_906);
        let x_909 : vec4<f32> = u_xlat10;
        let x_910 : vec2<f32> = vec2<f32>(x_909.x, x_909.y);
        let x_912 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec8;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
        u_xlat69 = x_921;
        let x_923 : f32 = u_xlat13.x;
        let x_924 : f32 = u_xlat69;
        let x_926 : f32 = u_xlat68;
        u_xlat68 = ((x_923 * x_924) + x_926);
        let x_929 : vec4<f32> = u_xlat10;
        let x_930 : vec2<f32> = vec2<f32>(x_929.z, x_929.w);
        let x_932 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec9;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
        u_xlat69 = x_941;
        let x_943 : f32 = u_xlat13.y;
        let x_944 : f32 = u_xlat69;
        let x_946 : f32 = u_xlat68;
        u_xlat68 = ((x_943 * x_944) + x_946);
        let x_949 : vec4<f32> = u_xlat8;
        let x_950 : vec2<f32> = vec2<f32>(x_949.z, x_949.w);
        let x_952 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_950.x, x_950.y, x_952);
        let x_959 : vec3<f32> = txVec10;
        let x_961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_959.xy, x_959.z);
        u_xlat69 = x_961;
        let x_963 : f32 = u_xlat13.z;
        let x_964 : f32 = u_xlat69;
        let x_966 : f32 = u_xlat68;
        u_xlat68 = ((x_963 * x_964) + x_966);
        let x_969 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = vec2<f32>(x_969.x, x_969.y);
        let x_972 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_979 : vec3<f32> = txVec11;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_979.xy, x_979.z);
        u_xlat69 = x_981;
        let x_983 : f32 = u_xlat13.w;
        let x_984 : f32 = u_xlat69;
        let x_986 : f32 = u_xlat68;
        u_xlat68 = ((x_983 * x_984) + x_986);
        let x_989 : vec4<f32> = u_xlat7;
        let x_990 : vec2<f32> = vec2<f32>(x_989.z, x_989.w);
        let x_992 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_990.x, x_990.y, x_992);
        let x_999 : vec3<f32> = txVec12;
        let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_999.xy, x_999.z);
        u_xlat69 = x_1001;
        let x_1002 : f32 = u_xlat67;
        let x_1003 : f32 = u_xlat69;
        let x_1005 : f32 = u_xlat68;
        u_xlat66 = ((x_1002 * x_1003) + x_1005);
      } else {
        let x_1008 : vec4<f32> = u_xlat3;
        let x_1011 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1015 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat5;
        let x_1019 : vec2<f32> = floor(vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat3;
        let x_1025 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + -(vec2<f32>(x_1028.x, x_1028.y)));
        let x_1032 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_1032.x, x_1032.x, x_1032.y, x_1032.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1037 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1035.x, x_1035.x, x_1035.z, x_1035.z) * vec4<f32>(x_1037.x, x_1037.x, x_1037.z, x_1037.z));
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1040.y, x_1040.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1050 : vec2<f32> = u_xlat49;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1047.x, x_1047.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1050));
        let x_1053 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1055 : vec2<f32> = u_xlat49;
        let x_1057 : vec2<f32> = (-(x_1055) + vec2<f32>(1.0f, 1.0f));
        let x_1058 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1060, vec2<f32>(0.0f, 0.0f));
        let x_1062 : vec2<f32> = u_xlat51;
        let x_1064 : vec2<f32> = u_xlat51;
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = ((-(x_1062) * x_1064) + vec2<f32>(x_1066.x, x_1066.y));
        let x_1069 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1071, vec2<f32>(0.0f, 0.0f));
        let x_1074 : vec2<f32> = u_xlat51;
        let x_1076 : vec2<f32> = u_xlat51;
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1080 : vec2<f32> = ((-(x_1074) * x_1076) + vec2<f32>(x_1078.y, x_1078.w));
        let x_1081 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1080.x, x_1081.y, x_1080.y);
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1086 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) + vec2<f32>(2.0f, 2.0f));
        let x_1087 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1089 : vec3<f32> = u_xlat28;
        let x_1091 : vec2<f32> = (vec2<f32>(x_1089.x, x_1089.z) + vec2<f32>(2.0f, 2.0f));
        let x_1092 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1092.x, x_1091.x, x_1092.z, x_1091.y);
        let x_1095 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1095 * 0.08163200318813323975f);
        let x_1099 : vec4<f32> = u_xlat6;
        let x_1102 : vec3<f32> = (vec3<f32>(x_1099.z, x_1099.x, x_1099.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat7;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1109 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1112 : f32 = u_xlat10.y;
        u_xlat9.x = x_1112;
        let x_1114 : vec2<f32> = u_xlat49;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1122.x, x_1121.x, x_1122.z, x_1121.y);
        let x_1124 : vec2<f32> = u_xlat49;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1129.w);
        let x_1132 : f32 = u_xlat6.x;
        u_xlat7.y = x_1132;
        let x_1135 : f32 = u_xlat8.y;
        u_xlat7.w = x_1135;
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1137 + x_1138);
        let x_1140 : vec2<f32> = u_xlat49;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1140.y, x_1140.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1144 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec2<f32> = u_xlat49;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1146.y, x_1146.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1150.w);
        let x_1153 : f32 = u_xlat6.y;
        u_xlat8.y = x_1153;
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1156 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1155 + x_1156);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1168 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1167 / x_1168);
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1170 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1172 : vec4<f32> = u_xlat7;
        let x_1175 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1172.w, x_1172.x, x_1172.y, x_1172.z) * vec4<f32>(x_1175.x, x_1175.x, x_1175.x, x_1175.x));
        let x_1178 : vec4<f32> = u_xlat8;
        let x_1181 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1178.x, x_1178.w, x_1178.y, x_1178.z) * vec4<f32>(x_1181.y, x_1181.y, x_1181.y, x_1181.y));
        let x_1184 : vec4<f32> = u_xlat7;
        let x_1185 : vec3<f32> = vec3<f32>(x_1184.y, x_1184.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1185.z);
        let x_1189 : f32 = u_xlat8.x;
        u_xlat10.y = x_1189;
        let x_1191 : vec4<f32> = u_xlat5;
        let x_1194 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1203 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat10;
        u_xlat49 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1210 : f32 = u_xlat10.y;
        u_xlat7.y = x_1210;
        let x_1213 : f32 = u_xlat8.z;
        u_xlat10.y = x_1213;
        let x_1215 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat5;
        let x_1227 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(x_1227.x, x_1227.y)) + vec2<f32>(x_1230.w, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1236 : f32 = u_xlat10.y;
        u_xlat7.z = x_1236;
        let x_1239 : vec4<f32> = u_xlat5;
        let x_1242 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1239.x, x_1239.y, x_1239.x, x_1239.y) * vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y)) + vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.z));
        let x_1249 : f32 = u_xlat8.w;
        u_xlat10.y = x_1249;
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.y));
        let x_1262 : vec4<f32> = u_xlat5;
        let x_1265 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat10;
        u_xlat29 = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1272 : f32 = u_xlat10.y;
        u_xlat7.w = x_1272;
        let x_1275 : vec4<f32> = u_xlat5;
        let x_1278 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.x, x_1281.w));
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1285 : vec3<f32> = vec3<f32>(x_1284.x, x_1284.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1285.z);
        let x_1288 : vec4<f32> = u_xlat5;
        let x_1291 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.y));
        let x_1298 : vec4<f32> = u_xlat5;
        let x_1301 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y)) + vec2<f32>(x_1304.w, x_1304.y));
        let x_1308 : f32 = u_xlat7.x;
        u_xlat8.x = x_1308;
        let x_1310 : vec4<f32> = u_xlat5;
        let x_1313 : vec4<f32> = x_174.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat8;
        let x_1318 : vec2<f32> = ((vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(x_1313.x, x_1313.y)) + vec2<f32>(x_1316.x, x_1316.y));
        let x_1319 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1318.x, x_1318.y, x_1319.z, x_1319.w);
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1322.x, x_1322.x, x_1322.x, x_1322.x) * x_1324);
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1327.y, x_1327.y, x_1327.y, x_1327.y) * x_1329);
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1332.z, x_1332.z, x_1332.z, x_1332.z) * x_1334);
        let x_1336 : vec4<f32> = u_xlat6;
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1336.w, x_1336.w, x_1336.w, x_1336.w) * x_1338);
        let x_1341 : vec4<f32> = u_xlat11;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec13;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat67 = x_1353;
        let x_1355 : vec4<f32> = u_xlat11;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.z, x_1355.w);
        let x_1358 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec14;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1365.xy, x_1365.z);
        u_xlat68 = x_1367;
        let x_1368 : f32 = u_xlat68;
        let x_1370 : f32 = u_xlat16.y;
        u_xlat68 = (x_1368 * x_1370);
        let x_1373 : f32 = u_xlat16.x;
        let x_1374 : f32 = u_xlat67;
        let x_1376 : f32 = u_xlat68;
        u_xlat67 = ((x_1373 * x_1374) + x_1376);
        let x_1379 : vec2<f32> = u_xlat49;
        let x_1381 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec15;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat68 = x_1390;
        let x_1392 : f32 = u_xlat16.z;
        let x_1393 : f32 = u_xlat68;
        let x_1395 : f32 = u_xlat67;
        u_xlat67 = ((x_1392 * x_1393) + x_1395);
        let x_1398 : vec4<f32> = u_xlat14;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.x, x_1398.y);
        let x_1401 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec16;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat68 = x_1410;
        let x_1412 : f32 = u_xlat16.w;
        let x_1413 : f32 = u_xlat68;
        let x_1415 : f32 = u_xlat67;
        u_xlat67 = ((x_1412 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat12;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec17;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat68 = x_1430;
        let x_1432 : f32 = u_xlat17.x;
        let x_1433 : f32 = u_xlat68;
        let x_1435 : f32 = u_xlat67;
        u_xlat67 = ((x_1432 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat12;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.z, x_1438.w);
        let x_1441 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec18;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat68 = x_1450;
        let x_1452 : f32 = u_xlat17.y;
        let x_1453 : f32 = u_xlat68;
        let x_1455 : f32 = u_xlat67;
        u_xlat67 = ((x_1452 * x_1453) + x_1455);
        let x_1458 : vec4<f32> = u_xlat13;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec19;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat68 = x_1470;
        let x_1472 : f32 = u_xlat17.z;
        let x_1473 : f32 = u_xlat68;
        let x_1475 : f32 = u_xlat67;
        u_xlat67 = ((x_1472 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat14;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec20;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat68 = x_1490;
        let x_1492 : f32 = u_xlat17.w;
        let x_1493 : f32 = u_xlat68;
        let x_1495 : f32 = u_xlat67;
        u_xlat67 = ((x_1492 * x_1493) + x_1495);
        let x_1498 : vec4<f32> = u_xlat15;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.x, x_1498.y);
        let x_1501 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec21;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1508.xy, x_1508.z);
        u_xlat68 = x_1510;
        let x_1512 : f32 = u_xlat18.x;
        let x_1513 : f32 = u_xlat68;
        let x_1515 : f32 = u_xlat67;
        u_xlat67 = ((x_1512 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat15;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.z, x_1518.w);
        let x_1521 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec22;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1528.xy, x_1528.z);
        u_xlat68 = x_1530;
        let x_1532 : f32 = u_xlat18.y;
        let x_1533 : f32 = u_xlat68;
        let x_1535 : f32 = u_xlat67;
        u_xlat67 = ((x_1532 * x_1533) + x_1535);
        let x_1538 : vec2<f32> = u_xlat29;
        let x_1540 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec23;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1547.xy, x_1547.z);
        u_xlat68 = x_1549;
        let x_1551 : f32 = u_xlat18.z;
        let x_1552 : f32 = u_xlat68;
        let x_1554 : f32 = u_xlat67;
        u_xlat67 = ((x_1551 * x_1552) + x_1554);
        let x_1557 : vec2<f32> = u_xlat57;
        let x_1559 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec24;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat68 = x_1568;
        let x_1570 : f32 = u_xlat18.w;
        let x_1571 : f32 = u_xlat68;
        let x_1573 : f32 = u_xlat67;
        u_xlat67 = ((x_1570 * x_1571) + x_1573);
        let x_1576 : vec4<f32> = u_xlat10;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec25;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat68 = x_1588;
        let x_1590 : f32 = u_xlat6.x;
        let x_1591 : f32 = u_xlat68;
        let x_1593 : f32 = u_xlat67;
        u_xlat67 = ((x_1590 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec26;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat68 = x_1608;
        let x_1610 : f32 = u_xlat6.y;
        let x_1611 : f32 = u_xlat68;
        let x_1613 : f32 = u_xlat67;
        u_xlat67 = ((x_1610 * x_1611) + x_1613);
        let x_1616 : vec2<f32> = u_xlat52;
        let x_1618 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec27;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat68 = x_1627;
        let x_1629 : f32 = u_xlat6.z;
        let x_1630 : f32 = u_xlat68;
        let x_1632 : f32 = u_xlat67;
        u_xlat67 = ((x_1629 * x_1630) + x_1632);
        let x_1635 : vec4<f32> = u_xlat5;
        let x_1636 : vec2<f32> = vec2<f32>(x_1635.x, x_1635.y);
        let x_1638 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec28;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
        u_xlat68 = x_1647;
        let x_1649 : f32 = u_xlat6.w;
        let x_1650 : f32 = u_xlat68;
        let x_1652 : f32 = u_xlat67;
        u_xlat66 = ((x_1649 * x_1650) + x_1652);
      }
    }
  } else {
    let x_1656 : vec4<f32> = u_xlat3;
    let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
    let x_1659 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
    let x_1666 : vec3<f32> = txVec29;
    let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
    u_xlat66 = x_1668;
  }
  let x_1670 : f32 = x_174.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_1670) + 1.0f);
  let x_1673 : f32 = u_xlat66;
  let x_1675 : f32 = x_174.x_MainLightShadowParams.x;
  let x_1677 : f32 = u_xlat67;
  u_xlat66 = ((x_1673 * x_1675) + x_1677);
  let x_1680 : f32 = u_xlat3.z;
  u_xlatb67 = (0.0f >= x_1680);
  let x_1684 : f32 = u_xlat3.z;
  u_xlatb68 = (x_1684 >= 1.0f);
  let x_1686 : bool = u_xlatb67;
  let x_1687 : bool = u_xlatb68;
  u_xlatb67 = (x_1686 | x_1687);
  let x_1689 : bool = u_xlatb67;
  let x_1690 : f32 = u_xlat66;
  u_xlat66 = select(x_1690, 1.0f, x_1689);
  let x_1692 : vec4<f32> = vs_TEXCOORD2;
  let x_1696 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1698 : vec3<f32> = (vec3<f32>(x_1692.x, x_1692.y, x_1692.z) + -(x_1696));
  let x_1699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
  let x_1701 : vec4<f32> = u_xlat3;
  let x_1703 : vec4<f32> = u_xlat3;
  u_xlat67 = dot(vec3<f32>(x_1701.x, x_1701.y, x_1701.z), vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : f32 = u_xlat67;
  let x_1708 : f32 = x_174.x_MainLightShadowParams.z;
  let x_1711 : f32 = x_174.x_MainLightShadowParams.w;
  u_xlat68 = ((x_1706 * x_1708) + x_1711);
  let x_1713 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1713, 0.0f, 1.0f);
  let x_1715 : f32 = u_xlat66;
  u_xlat3.x = (-(x_1715) + 1.0f);
  let x_1719 : f32 = u_xlat68;
  let x_1721 : f32 = u_xlat3.x;
  let x_1723 : f32 = u_xlat66;
  u_xlat66 = ((x_1719 * x_1721) + x_1723);
  let x_1725 : f32 = u_xlat66;
  let x_1731 : f32 = x_1729.unity_LightData.z;
  u_xlat66 = (x_1725 * x_1731);
  let x_1733 : f32 = u_xlat66;
  let x_1736 : vec4<f32> = x_44.x_MainLightColor;
  let x_1738 : vec3<f32> = (vec3<f32>(x_1733, x_1733, x_1733) * vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1739 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1739.w);
  let x_1741 : vec3<f32> = u_xlat2;
  let x_1743 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_1741, vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1746 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1746, 0.0f, 1.0f);
  let x_1748 : f32 = u_xlat66;
  let x_1750 : vec4<f32> = u_xlat3;
  let x_1752 : vec3<f32> = (vec3<f32>(x_1748, x_1748, x_1748) * vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1753 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  let x_1755 : vec4<f32> = u_xlat1;
  let x_1757 : vec4<f32> = u_xlat3;
  let x_1759 : vec3<f32> = (vec3<f32>(x_1755.x, x_1755.y, x_1755.z) * vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
  let x_1760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
  let x_1763 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1765 : f32 = x_1729.unity_LightData.y;
  u_xlat66 = min(x_1763, x_1765);
  let x_1768 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1768));
  let x_1771 : f32 = u_xlat67;
  let x_1774 : f32 = x_174.x_AdditionalShadowFadeParams.x;
  let x_1777 : f32 = x_174.x_AdditionalShadowFadeParams.y;
  u_xlat67 = ((x_1771 * x_1774) + x_1777);
  let x_1779 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1779, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1791 : u32 = u_xlatu_loop_1;
    let x_1792 : u32 = u_xlatu66;
    if ((x_1791 < x_1792)) {
    } else {
      break;
    }
    let x_1795 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1795 >> 2u);
    let x_1798 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1798 & 3u));
    let x_1801 : u32 = u_xlatu69;
    let x_1804 : vec4<f32> = x_1729.unity_LightIndices[bitcast<i32>(x_1801)];
    let x_1814 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1819 : vec4<u32> = indexable[x_1814];
    u_xlat69 = dot(x_1804, bitcast<vec4<f32>>(x_1819));
    let x_1823 : f32 = u_xlat69;
    u_xlati69 = i32(x_1823);
    let x_1825 : vec4<f32> = vs_TEXCOORD2;
    let x_1837 : i32 = u_xlati69;
    let x_1839 : vec4<f32> = x_1836.x_AdditionalLightsPosition[x_1837];
    let x_1842 : i32 = u_xlati69;
    let x_1844 : vec4<f32> = x_1836.x_AdditionalLightsPosition[x_1842];
    let x_1846 : vec3<f32> = ((-(vec3<f32>(x_1825.x, x_1825.y, x_1825.z)) * vec3<f32>(x_1839.w, x_1839.w, x_1839.w)) + vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
    let x_1847 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
    let x_1850 : vec4<f32> = u_xlat6;
    let x_1852 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1850.x, x_1850.y, x_1850.z), vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
    let x_1855 : f32 = u_xlat70;
    u_xlat70 = max(x_1855, 0.00006103515625f);
    let x_1859 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1859);
    let x_1861 : f32 = u_xlat71;
    let x_1863 : vec4<f32> = u_xlat6;
    let x_1865 : vec3<f32> = (vec3<f32>(x_1861, x_1861, x_1861) * vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
    let x_1866 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
    let x_1868 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1868);
    let x_1870 : f32 = u_xlat70;
    let x_1871 : i32 = u_xlati69;
    let x_1873 : f32 = x_1836.x_AdditionalLightsAttenuation[x_1871].x;
    u_xlat70 = (x_1870 * x_1873);
    let x_1875 : f32 = u_xlat70;
    let x_1877 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1875) * x_1877) + 1.0f);
    let x_1880 : f32 = u_xlat70;
    u_xlat70 = max(x_1880, 0.0f);
    let x_1882 : f32 = u_xlat70;
    let x_1883 : f32 = u_xlat70;
    u_xlat70 = (x_1882 * x_1883);
    let x_1885 : f32 = u_xlat70;
    let x_1886 : f32 = u_xlat71;
    u_xlat70 = (x_1885 * x_1886);
    let x_1888 : i32 = u_xlati69;
    let x_1890 : vec4<f32> = x_1836.x_AdditionalLightsSpotDir[x_1888];
    let x_1892 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1890.x, x_1890.y, x_1890.z), vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : f32 = u_xlat71;
    let x_1896 : i32 = u_xlati69;
    let x_1898 : f32 = x_1836.x_AdditionalLightsAttenuation[x_1896].z;
    let x_1900 : i32 = u_xlati69;
    let x_1902 : f32 = x_1836.x_AdditionalLightsAttenuation[x_1900].w;
    u_xlat71 = ((x_1895 * x_1898) + x_1902);
    let x_1904 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1904, 0.0f, 1.0f);
    let x_1906 : f32 = u_xlat71;
    let x_1907 : f32 = u_xlat71;
    u_xlat71 = (x_1906 * x_1907);
    let x_1909 : f32 = u_xlat70;
    let x_1910 : f32 = u_xlat71;
    u_xlat70 = (x_1909 * x_1910);
    let x_1914 : i32 = u_xlati69;
    let x_1916 : f32 = x_174.x_AdditionalShadowParams[x_1914].w;
    u_xlati71 = i32(x_1916);
    let x_1919 : i32 = u_xlati71;
    u_xlatb72 = (x_1919 >= 0i);
    let x_1921 : bool = u_xlatb72;
    if (x_1921) {
      let x_1925 : i32 = u_xlati69;
      let x_1927 : f32 = x_174.x_AdditionalShadowParams[x_1925].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1927, x_1927, x_1927, x_1927))));
      let x_1931 : bool = u_xlatb72;
      if (x_1931) {
        let x_1935 : vec4<f32> = u_xlat6;
        let x_1938 : vec4<f32> = u_xlat6;
        let x_1941 : vec4<bool> = (abs(vec4<f32>(x_1935.z, x_1935.z, x_1935.y, x_1935.z)) >= abs(vec4<f32>(x_1938.x, x_1938.y, x_1938.x, x_1938.x)));
        let x_1943 : vec3<bool> = vec3<bool>(x_1941.x, x_1941.y, x_1941.z);
        let x_1944 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
        let x_1947 : bool = u_xlatb7.y;
        let x_1949 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1947 & x_1949);
        let x_1951 : vec4<f32> = u_xlat6;
        let x_1954 : vec4<bool> = (-(vec4<f32>(x_1951.z, x_1951.y, x_1951.z, x_1951.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1955 : vec3<bool> = vec3<bool>(x_1954.x, x_1954.y, x_1954.w);
        let x_1956 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1955.x, x_1955.y, x_1956.z, x_1955.z);
        let x_1959 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1959);
        let x_1964 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1964);
        let x_1969 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1969);
        let x_1972 : bool = u_xlatb7.z;
        if (x_1972) {
          let x_1977 : f32 = u_xlat7.y;
          x_1973 = x_1977;
        } else {
          let x_1979 : f32 = u_xlat73;
          x_1973 = x_1979;
        }
        let x_1980 : f32 = x_1973;
        u_xlat29.x = x_1980;
        let x_1983 : bool = u_xlatb72;
        if (x_1983) {
          let x_1988 : f32 = u_xlat7.x;
          x_1984 = x_1988;
        } else {
          let x_1991 : f32 = u_xlat29.x;
          x_1984 = x_1991;
        }
        let x_1992 : f32 = x_1984;
        u_xlat72 = x_1992;
        let x_1993 : i32 = u_xlati69;
        let x_1995 : f32 = x_174.x_AdditionalShadowParams[x_1993].w;
        u_xlat7.x = trunc(x_1995);
        let x_1998 : f32 = u_xlat72;
        let x_2000 : f32 = u_xlat7.x;
        u_xlat72 = (x_1998 + x_2000);
        let x_2002 : f32 = u_xlat72;
        u_xlati71 = i32(x_2002);
      }
      let x_2004 : i32 = u_xlati71;
      u_xlati71 = (x_2004 << bitcast<u32>(2i));
      let x_2006 : vec4<f32> = vs_TEXCOORD2;
      let x_2009 : i32 = u_xlati71;
      let x_2012 : i32 = u_xlati71;
      let x_2016 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2009 + 1i) / 4i)][((x_2012 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2006.y, x_2006.y, x_2006.y, x_2006.y) * x_2016);
      let x_2018 : i32 = u_xlati71;
      let x_2020 : i32 = u_xlati71;
      let x_2023 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[(x_2018 / 4i)][(x_2020 % 4i)];
      let x_2024 : vec4<f32> = vs_TEXCOORD2;
      let x_2027 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2023 * vec4<f32>(x_2024.x, x_2024.x, x_2024.x, x_2024.x)) + x_2027);
      let x_2029 : i32 = u_xlati71;
      let x_2032 : i32 = u_xlati71;
      let x_2036 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2029 + 2i) / 4i)][((x_2032 + 2i) % 4i)];
      let x_2037 : vec4<f32> = vs_TEXCOORD2;
      let x_2040 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2036 * vec4<f32>(x_2037.z, x_2037.z, x_2037.z, x_2037.z)) + x_2040);
      let x_2042 : vec4<f32> = u_xlat7;
      let x_2043 : i32 = u_xlati71;
      let x_2046 : i32 = u_xlati71;
      let x_2050 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_2043 + 3i) / 4i)][((x_2046 + 3i) % 4i)];
      u_xlat7 = (x_2042 + x_2050);
      let x_2052 : vec4<f32> = u_xlat7;
      let x_2054 : vec4<f32> = u_xlat7;
      let x_2056 : vec3<f32> = (vec3<f32>(x_2052.x, x_2052.y, x_2052.z) / vec3<f32>(x_2054.w, x_2054.w, x_2054.w));
      let x_2057 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
      let x_2060 : i32 = u_xlati69;
      let x_2062 : f32 = x_174.x_AdditionalShadowParams[x_2060].y;
      u_xlatb71 = (0.0f < x_2062);
      let x_2064 : bool = u_xlatb71;
      if (x_2064) {
        let x_2067 : i32 = u_xlati69;
        let x_2069 : f32 = x_174.x_AdditionalShadowParams[x_2067].y;
        u_xlatb71 = (1.0f == x_2069);
        let x_2071 : bool = u_xlatb71;
        if (x_2071) {
          let x_2074 : vec4<f32> = u_xlat7;
          let x_2078 : vec4<f32> = x_174.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2074.x, x_2074.y, x_2074.x, x_2074.y) + x_2078);
          let x_2081 : vec4<f32> = u_xlat8;
          let x_2082 : vec2<f32> = vec2<f32>(x_2081.x, x_2081.y);
          let x_2084 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2082.x, x_2082.y, x_2084);
          let x_2092 : vec3<f32> = txVec30;
          let x_2094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2092.xy, x_2092.z);
          u_xlat9.x = x_2094;
          let x_2097 : vec4<f32> = u_xlat8;
          let x_2098 : vec2<f32> = vec2<f32>(x_2097.z, x_2097.w);
          let x_2100 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
          let x_2107 : vec3<f32> = txVec31;
          let x_2109 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
          u_xlat9.y = x_2109;
          let x_2111 : vec4<f32> = u_xlat7;
          let x_2115 : vec4<f32> = x_174.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2111.x, x_2111.y, x_2111.x, x_2111.y) + x_2115);
          let x_2118 : vec4<f32> = u_xlat8;
          let x_2119 : vec2<f32> = vec2<f32>(x_2118.x, x_2118.y);
          let x_2121 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
          let x_2128 : vec3<f32> = txVec32;
          let x_2130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2128.xy, x_2128.z);
          u_xlat9.z = x_2130;
          let x_2133 : vec4<f32> = u_xlat8;
          let x_2134 : vec2<f32> = vec2<f32>(x_2133.z, x_2133.w);
          let x_2136 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
          let x_2143 : vec3<f32> = txVec33;
          let x_2145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2143.xy, x_2143.z);
          u_xlat9.w = x_2145;
          let x_2147 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2147, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2150 : i32 = u_xlati69;
          let x_2152 : f32 = x_174.x_AdditionalShadowParams[x_2150].y;
          u_xlatb72 = (2.0f == x_2152);
          let x_2154 : bool = u_xlatb72;
          if (x_2154) {
            let x_2157 : vec4<f32> = u_xlat7;
            let x_2161 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2164 : vec2<f32> = ((vec2<f32>(x_2157.x, x_2157.y) * vec2<f32>(x_2161.z, x_2161.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2165 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2164.x, x_2164.y, x_2165.z, x_2165.w);
            let x_2167 : vec4<f32> = u_xlat8;
            let x_2169 : vec2<f32> = floor(vec2<f32>(x_2167.x, x_2167.y));
            let x_2170 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2169.x, x_2169.y, x_2170.z, x_2170.w);
            let x_2172 : vec4<f32> = u_xlat7;
            let x_2175 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2178 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2172.x, x_2172.y) * vec2<f32>(x_2175.z, x_2175.w)) + -(vec2<f32>(x_2178.x, x_2178.y)));
            let x_2182 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2182.x, x_2182.x, x_2182.y, x_2182.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2185 : vec4<f32> = u_xlat9;
            let x_2187 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2185.x, x_2185.x, x_2185.z, x_2185.z) * vec4<f32>(x_2187.x, x_2187.x, x_2187.z, x_2187.z));
            let x_2190 : vec4<f32> = u_xlat10;
            let x_2192 : vec2<f32> = (vec2<f32>(x_2190.y, x_2190.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2193 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2192.x, x_2193.y, x_2192.y, x_2193.w);
            let x_2195 : vec4<f32> = u_xlat10;
            let x_2198 : vec2<f32> = u_xlat52;
            let x_2200 : vec2<f32> = ((vec2<f32>(x_2195.x, x_2195.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2198));
            let x_2201 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
            let x_2204 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2204) + vec2<f32>(1.0f, 1.0f));
            let x_2207 : vec2<f32> = u_xlat52;
            let x_2208 : vec2<f32> = min(x_2207, vec2<f32>(0.0f, 0.0f));
            let x_2209 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2208.x, x_2208.y, x_2209.z, x_2209.w);
            let x_2211 : vec4<f32> = u_xlat11;
            let x_2214 : vec4<f32> = u_xlat11;
            let x_2217 : vec2<f32> = u_xlat54;
            let x_2218 : vec2<f32> = ((-(vec2<f32>(x_2211.x, x_2211.y)) * vec2<f32>(x_2214.x, x_2214.y)) + x_2217);
            let x_2219 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2218.x, x_2218.y, x_2219.z, x_2219.w);
            let x_2221 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2221, vec2<f32>(0.0f, 0.0f));
            let x_2223 : vec2<f32> = u_xlat52;
            let x_2225 : vec2<f32> = u_xlat52;
            let x_2227 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2223) * x_2225) + vec2<f32>(x_2227.y, x_2227.w));
            let x_2230 : vec4<f32> = u_xlat11;
            let x_2232 : vec2<f32> = (vec2<f32>(x_2230.x, x_2230.y) + vec2<f32>(1.0f, 1.0f));
            let x_2233 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
            let x_2235 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2235 + vec2<f32>(1.0f, 1.0f));
            let x_2237 : vec4<f32> = u_xlat10;
            let x_2239 : vec2<f32> = (vec2<f32>(x_2237.x, x_2237.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2240 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
            let x_2242 : vec2<f32> = u_xlat54;
            let x_2243 : vec2<f32> = (x_2242 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2244 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2243.x, x_2243.y, x_2244.z, x_2244.w);
            let x_2246 : vec4<f32> = u_xlat11;
            let x_2248 : vec2<f32> = (vec2<f32>(x_2246.x, x_2246.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2249 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2248.x, x_2248.y, x_2249.z, x_2249.w);
            let x_2251 : vec2<f32> = u_xlat52;
            let x_2252 : vec2<f32> = (x_2251 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2253 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2252.x, x_2252.y, x_2253.z, x_2253.w);
            let x_2255 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2255.y, x_2255.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2259 : f32 = u_xlat11.x;
            u_xlat12.z = x_2259;
            let x_2262 : f32 = u_xlat52.x;
            u_xlat12.w = x_2262;
            let x_2265 : f32 = u_xlat13.x;
            u_xlat10.z = x_2265;
            let x_2268 : f32 = u_xlat9.x;
            u_xlat10.w = x_2268;
            let x_2270 : vec4<f32> = u_xlat10;
            let x_2272 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2270.z, x_2270.w, x_2270.x, x_2270.z) + vec4<f32>(x_2272.z, x_2272.w, x_2272.x, x_2272.z));
            let x_2276 : f32 = u_xlat12.y;
            u_xlat11.z = x_2276;
            let x_2279 : f32 = u_xlat52.y;
            u_xlat11.w = x_2279;
            let x_2282 : f32 = u_xlat10.y;
            u_xlat13.z = x_2282;
            let x_2285 : f32 = u_xlat9.z;
            u_xlat13.w = x_2285;
            let x_2287 : vec4<f32> = u_xlat11;
            let x_2289 : vec4<f32> = u_xlat13;
            let x_2291 : vec3<f32> = (vec3<f32>(x_2287.z, x_2287.y, x_2287.w) + vec3<f32>(x_2289.z, x_2289.y, x_2289.w));
            let x_2292 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
            let x_2294 : vec4<f32> = u_xlat10;
            let x_2296 : vec4<f32> = u_xlat14;
            let x_2298 : vec3<f32> = (vec3<f32>(x_2294.x, x_2294.z, x_2294.w) / vec3<f32>(x_2296.z, x_2296.w, x_2296.y));
            let x_2299 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
            let x_2301 : vec4<f32> = u_xlat10;
            let x_2303 : vec3<f32> = (vec3<f32>(x_2301.x, x_2301.y, x_2301.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2304 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
            let x_2306 : vec4<f32> = u_xlat13;
            let x_2308 : vec4<f32> = u_xlat9;
            let x_2310 : vec3<f32> = (vec3<f32>(x_2306.z, x_2306.y, x_2306.w) / vec3<f32>(x_2308.x, x_2308.y, x_2308.z));
            let x_2311 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
            let x_2313 : vec4<f32> = u_xlat11;
            let x_2315 : vec3<f32> = (vec3<f32>(x_2313.x, x_2313.y, x_2313.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2316 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
            let x_2318 : vec4<f32> = u_xlat10;
            let x_2321 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2323 : vec3<f32> = (vec3<f32>(x_2318.y, x_2318.x, x_2318.z) * vec3<f32>(x_2321.x, x_2321.x, x_2321.x));
            let x_2324 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
            let x_2326 : vec4<f32> = u_xlat11;
            let x_2329 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2331 : vec3<f32> = (vec3<f32>(x_2326.x, x_2326.y, x_2326.z) * vec3<f32>(x_2329.y, x_2329.y, x_2329.y));
            let x_2332 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
            let x_2335 : f32 = u_xlat11.x;
            u_xlat10.w = x_2335;
            let x_2337 : vec4<f32> = u_xlat8;
            let x_2340 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2343 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2337.x, x_2337.y, x_2337.x, x_2337.y) * vec4<f32>(x_2340.x, x_2340.y, x_2340.x, x_2340.y)) + vec4<f32>(x_2343.y, x_2343.w, x_2343.x, x_2343.w));
            let x_2346 : vec4<f32> = u_xlat8;
            let x_2349 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2352 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2346.x, x_2346.y) * vec2<f32>(x_2349.x, x_2349.y)) + vec2<f32>(x_2352.z, x_2352.w));
            let x_2356 : f32 = u_xlat10.y;
            u_xlat11.w = x_2356;
            let x_2358 : vec4<f32> = u_xlat11;
            let x_2359 : vec2<f32> = vec2<f32>(x_2358.y, x_2358.z);
            let x_2360 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2360.x, x_2359.x, x_2360.z, x_2359.y);
            let x_2362 : vec4<f32> = u_xlat8;
            let x_2365 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2368 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2362.x, x_2362.y, x_2362.x, x_2362.y) * vec4<f32>(x_2365.x, x_2365.y, x_2365.x, x_2365.y)) + vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2368.y));
            let x_2371 : vec4<f32> = u_xlat8;
            let x_2374 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2377 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2371.x, x_2371.y, x_2371.x, x_2371.y) * vec4<f32>(x_2374.x, x_2374.y, x_2374.x, x_2374.y)) + vec4<f32>(x_2377.w, x_2377.y, x_2377.w, x_2377.z));
            let x_2380 : vec4<f32> = u_xlat8;
            let x_2383 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2386 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2380.x, x_2380.y, x_2380.x, x_2380.y) * vec4<f32>(x_2383.x, x_2383.y, x_2383.x, x_2383.y)) + vec4<f32>(x_2386.x, x_2386.w, x_2386.z, x_2386.w));
            let x_2389 : vec4<f32> = u_xlat9;
            let x_2391 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2389.x, x_2389.x, x_2389.x, x_2389.y) * vec4<f32>(x_2391.z, x_2391.w, x_2391.y, x_2391.z));
            let x_2394 : vec4<f32> = u_xlat9;
            let x_2396 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2394.y, x_2394.y, x_2394.z, x_2394.z) * x_2396);
            let x_2399 : f32 = u_xlat9.z;
            let x_2401 : f32 = u_xlat14.y;
            u_xlat72 = (x_2399 * x_2401);
            let x_2404 : vec4<f32> = u_xlat12;
            let x_2405 : vec2<f32> = vec2<f32>(x_2404.x, x_2404.y);
            let x_2407 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2405.x, x_2405.y, x_2407);
            let x_2414 : vec3<f32> = txVec34;
            let x_2416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2414.xy, x_2414.z);
            u_xlat73 = x_2416;
            let x_2418 : vec4<f32> = u_xlat12;
            let x_2419 : vec2<f32> = vec2<f32>(x_2418.z, x_2418.w);
            let x_2421 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2419.x, x_2419.y, x_2421);
            let x_2428 : vec3<f32> = txVec35;
            let x_2430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2428.xy, x_2428.z);
            u_xlat8.x = x_2430;
            let x_2433 : f32 = u_xlat8.x;
            let x_2435 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2433 * x_2435);
            let x_2439 : f32 = u_xlat15.x;
            let x_2440 : f32 = u_xlat73;
            let x_2443 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2439 * x_2440) + x_2443);
            let x_2446 : vec2<f32> = u_xlat52;
            let x_2448 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2446.x, x_2446.y, x_2448);
            let x_2455 : vec3<f32> = txVec36;
            let x_2457 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2455.xy, x_2455.z);
            u_xlat8.x = x_2457;
            let x_2460 : f32 = u_xlat15.z;
            let x_2462 : f32 = u_xlat8.x;
            let x_2464 : f32 = u_xlat73;
            u_xlat73 = ((x_2460 * x_2462) + x_2464);
            let x_2467 : vec4<f32> = u_xlat11;
            let x_2468 : vec2<f32> = vec2<f32>(x_2467.x, x_2467.y);
            let x_2470 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2468.x, x_2468.y, x_2470);
            let x_2477 : vec3<f32> = txVec37;
            let x_2479 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2477.xy, x_2477.z);
            u_xlat8.x = x_2479;
            let x_2482 : f32 = u_xlat15.w;
            let x_2484 : f32 = u_xlat8.x;
            let x_2486 : f32 = u_xlat73;
            u_xlat73 = ((x_2482 * x_2484) + x_2486);
            let x_2489 : vec4<f32> = u_xlat13;
            let x_2490 : vec2<f32> = vec2<f32>(x_2489.x, x_2489.y);
            let x_2492 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
            let x_2499 : vec3<f32> = txVec38;
            let x_2501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
            u_xlat8.x = x_2501;
            let x_2504 : f32 = u_xlat16.x;
            let x_2506 : f32 = u_xlat8.x;
            let x_2508 : f32 = u_xlat73;
            u_xlat73 = ((x_2504 * x_2506) + x_2508);
            let x_2511 : vec4<f32> = u_xlat13;
            let x_2512 : vec2<f32> = vec2<f32>(x_2511.z, x_2511.w);
            let x_2514 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2512.x, x_2512.y, x_2514);
            let x_2521 : vec3<f32> = txVec39;
            let x_2523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2521.xy, x_2521.z);
            u_xlat8.x = x_2523;
            let x_2526 : f32 = u_xlat16.y;
            let x_2528 : f32 = u_xlat8.x;
            let x_2530 : f32 = u_xlat73;
            u_xlat73 = ((x_2526 * x_2528) + x_2530);
            let x_2533 : vec4<f32> = u_xlat11;
            let x_2534 : vec2<f32> = vec2<f32>(x_2533.z, x_2533.w);
            let x_2536 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2534.x, x_2534.y, x_2536);
            let x_2543 : vec3<f32> = txVec40;
            let x_2545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2543.xy, x_2543.z);
            u_xlat8.x = x_2545;
            let x_2548 : f32 = u_xlat16.z;
            let x_2550 : f32 = u_xlat8.x;
            let x_2552 : f32 = u_xlat73;
            u_xlat73 = ((x_2548 * x_2550) + x_2552);
            let x_2555 : vec4<f32> = u_xlat10;
            let x_2556 : vec2<f32> = vec2<f32>(x_2555.x, x_2555.y);
            let x_2558 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2556.x, x_2556.y, x_2558);
            let x_2565 : vec3<f32> = txVec41;
            let x_2567 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2565.xy, x_2565.z);
            u_xlat8.x = x_2567;
            let x_2570 : f32 = u_xlat16.w;
            let x_2572 : f32 = u_xlat8.x;
            let x_2574 : f32 = u_xlat73;
            u_xlat73 = ((x_2570 * x_2572) + x_2574);
            let x_2577 : vec4<f32> = u_xlat10;
            let x_2578 : vec2<f32> = vec2<f32>(x_2577.z, x_2577.w);
            let x_2580 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2578.x, x_2578.y, x_2580);
            let x_2587 : vec3<f32> = txVec42;
            let x_2589 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2587.xy, x_2587.z);
            u_xlat8.x = x_2589;
            let x_2591 : f32 = u_xlat72;
            let x_2593 : f32 = u_xlat8.x;
            let x_2595 : f32 = u_xlat73;
            u_xlat71 = ((x_2591 * x_2593) + x_2595);
          } else {
            let x_2598 : vec4<f32> = u_xlat7;
            let x_2601 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2604 : vec2<f32> = ((vec2<f32>(x_2598.x, x_2598.y) * vec2<f32>(x_2601.z, x_2601.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2605 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2604.x, x_2604.y, x_2605.z, x_2605.w);
            let x_2607 : vec4<f32> = u_xlat8;
            let x_2609 : vec2<f32> = floor(vec2<f32>(x_2607.x, x_2607.y));
            let x_2610 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2609.x, x_2609.y, x_2610.z, x_2610.w);
            let x_2612 : vec4<f32> = u_xlat7;
            let x_2615 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2618 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2612.x, x_2612.y) * vec2<f32>(x_2615.z, x_2615.w)) + -(vec2<f32>(x_2618.x, x_2618.y)));
            let x_2622 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2622.x, x_2622.x, x_2622.y, x_2622.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2625 : vec4<f32> = u_xlat9;
            let x_2627 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2625.x, x_2625.x, x_2625.z, x_2625.z) * vec4<f32>(x_2627.x, x_2627.x, x_2627.z, x_2627.z));
            let x_2630 : vec4<f32> = u_xlat10;
            let x_2632 : vec2<f32> = (vec2<f32>(x_2630.y, x_2630.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2633 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2633.x, x_2632.x, x_2633.z, x_2632.y);
            let x_2635 : vec4<f32> = u_xlat10;
            let x_2638 : vec2<f32> = u_xlat52;
            let x_2640 : vec2<f32> = ((vec2<f32>(x_2635.x, x_2635.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2638));
            let x_2641 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2640.x, x_2641.y, x_2640.y, x_2641.w);
            let x_2643 : vec2<f32> = u_xlat52;
            let x_2645 : vec2<f32> = (-(x_2643) + vec2<f32>(1.0f, 1.0f));
            let x_2646 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
            let x_2648 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2648, vec2<f32>(0.0f, 0.0f));
            let x_2650 : vec2<f32> = u_xlat54;
            let x_2652 : vec2<f32> = u_xlat54;
            let x_2654 : vec4<f32> = u_xlat10;
            let x_2656 : vec2<f32> = ((-(x_2650) * x_2652) + vec2<f32>(x_2654.x, x_2654.y));
            let x_2657 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2656.x, x_2656.y, x_2657.z, x_2657.w);
            let x_2659 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2659, vec2<f32>(0.0f, 0.0f));
            let x_2662 : vec2<f32> = u_xlat54;
            let x_2664 : vec2<f32> = u_xlat54;
            let x_2666 : vec4<f32> = u_xlat9;
            let x_2668 : vec2<f32> = ((-(x_2662) * x_2664) + vec2<f32>(x_2666.y, x_2666.w));
            let x_2669 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2668.x, x_2669.y, x_2668.y);
            let x_2671 : vec4<f32> = u_xlat10;
            let x_2673 : vec2<f32> = (vec2<f32>(x_2671.x, x_2671.y) + vec2<f32>(2.0f, 2.0f));
            let x_2674 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2673.x, x_2673.y, x_2674.z, x_2674.w);
            let x_2676 : vec3<f32> = u_xlat31;
            let x_2678 : vec2<f32> = (vec2<f32>(x_2676.x, x_2676.z) + vec2<f32>(2.0f, 2.0f));
            let x_2679 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2679.x, x_2678.x, x_2679.z, x_2678.y);
            let x_2682 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2682 * 0.08163200318813323975f);
            let x_2685 : vec4<f32> = u_xlat9;
            let x_2687 : vec3<f32> = (vec3<f32>(x_2685.z, x_2685.x, x_2685.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2688 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
            let x_2690 : vec4<f32> = u_xlat10;
            let x_2692 : vec2<f32> = (vec2<f32>(x_2690.x, x_2690.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2693 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2692.x, x_2692.y, x_2693.z, x_2693.w);
            let x_2696 : f32 = u_xlat13.y;
            u_xlat12.x = x_2696;
            let x_2698 : vec2<f32> = u_xlat52;
            let x_2701 : vec2<f32> = ((vec2<f32>(x_2698.x, x_2698.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2702 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2702.x, x_2701.x, x_2702.z, x_2701.y);
            let x_2704 : vec2<f32> = u_xlat52;
            let x_2707 : vec2<f32> = ((vec2<f32>(x_2704.x, x_2704.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2708 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2707.x, x_2708.y, x_2707.y, x_2708.w);
            let x_2711 : f32 = u_xlat9.x;
            u_xlat10.y = x_2711;
            let x_2714 : f32 = u_xlat11.y;
            u_xlat10.w = x_2714;
            let x_2716 : vec4<f32> = u_xlat10;
            let x_2717 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2716 + x_2717);
            let x_2719 : vec2<f32> = u_xlat52;
            let x_2722 : vec2<f32> = ((vec2<f32>(x_2719.y, x_2719.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2723 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2723.x, x_2722.x, x_2723.z, x_2722.y);
            let x_2725 : vec2<f32> = u_xlat52;
            let x_2728 : vec2<f32> = ((vec2<f32>(x_2725.y, x_2725.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2729 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2728.x, x_2729.y, x_2728.y, x_2729.w);
            let x_2732 : f32 = u_xlat9.y;
            u_xlat11.y = x_2732;
            let x_2734 : vec4<f32> = u_xlat11;
            let x_2735 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2734 + x_2735);
            let x_2737 : vec4<f32> = u_xlat10;
            let x_2738 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2737 / x_2738);
            let x_2740 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2740 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2742 : vec4<f32> = u_xlat11;
            let x_2743 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2742 / x_2743);
            let x_2745 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2745 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2747 : vec4<f32> = u_xlat10;
            let x_2750 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2747.w, x_2747.x, x_2747.y, x_2747.z) * vec4<f32>(x_2750.x, x_2750.x, x_2750.x, x_2750.x));
            let x_2753 : vec4<f32> = u_xlat11;
            let x_2756 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2753.x, x_2753.w, x_2753.y, x_2753.z) * vec4<f32>(x_2756.y, x_2756.y, x_2756.y, x_2756.y));
            let x_2759 : vec4<f32> = u_xlat10;
            let x_2760 : vec3<f32> = vec3<f32>(x_2759.y, x_2759.z, x_2759.w);
            let x_2761 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2760.x, x_2761.y, x_2760.y, x_2760.z);
            let x_2764 : f32 = u_xlat11.x;
            u_xlat13.y = x_2764;
            let x_2766 : vec4<f32> = u_xlat8;
            let x_2769 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2772 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.y) * vec4<f32>(x_2769.x, x_2769.y, x_2769.x, x_2769.y)) + vec4<f32>(x_2772.x, x_2772.y, x_2772.z, x_2772.y));
            let x_2775 : vec4<f32> = u_xlat8;
            let x_2778 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2781 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2775.x, x_2775.y) * vec2<f32>(x_2778.x, x_2778.y)) + vec2<f32>(x_2781.w, x_2781.y));
            let x_2785 : f32 = u_xlat13.y;
            u_xlat10.y = x_2785;
            let x_2788 : f32 = u_xlat11.z;
            u_xlat13.y = x_2788;
            let x_2790 : vec4<f32> = u_xlat8;
            let x_2793 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2790.x, x_2790.y, x_2790.x, x_2790.y) * vec4<f32>(x_2793.x, x_2793.y, x_2793.x, x_2793.y)) + vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2796.y));
            let x_2799 : vec4<f32> = u_xlat8;
            let x_2802 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2805 : vec4<f32> = u_xlat13;
            let x_2807 : vec2<f32> = ((vec2<f32>(x_2799.x, x_2799.y) * vec2<f32>(x_2802.x, x_2802.y)) + vec2<f32>(x_2805.w, x_2805.y));
            let x_2808 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2807.x, x_2807.y, x_2808.z, x_2808.w);
            let x_2811 : f32 = u_xlat13.y;
            u_xlat10.z = x_2811;
            let x_2813 : vec4<f32> = u_xlat8;
            let x_2816 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2819 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2813.x, x_2813.y, x_2813.x, x_2813.y) * vec4<f32>(x_2816.x, x_2816.y, x_2816.x, x_2816.y)) + vec4<f32>(x_2819.x, x_2819.y, x_2819.x, x_2819.z));
            let x_2823 : f32 = u_xlat11.w;
            u_xlat13.y = x_2823;
            let x_2825 : vec4<f32> = u_xlat8;
            let x_2828 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2831 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2825.x, x_2825.y, x_2825.x, x_2825.y) * vec4<f32>(x_2828.x, x_2828.y, x_2828.x, x_2828.y)) + vec4<f32>(x_2831.x, x_2831.y, x_2831.z, x_2831.y));
            let x_2835 : vec4<f32> = u_xlat8;
            let x_2838 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2841 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2835.x, x_2835.y) * vec2<f32>(x_2838.x, x_2838.y)) + vec2<f32>(x_2841.w, x_2841.y));
            let x_2845 : f32 = u_xlat13.y;
            u_xlat10.w = x_2845;
            let x_2848 : vec4<f32> = u_xlat8;
            let x_2851 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2854 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2848.x, x_2848.y) * vec2<f32>(x_2851.x, x_2851.y)) + vec2<f32>(x_2854.x, x_2854.w));
            let x_2857 : vec4<f32> = u_xlat13;
            let x_2858 : vec3<f32> = vec3<f32>(x_2857.x, x_2857.z, x_2857.w);
            let x_2859 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2858.x, x_2859.y, x_2858.y, x_2858.z);
            let x_2861 : vec4<f32> = u_xlat8;
            let x_2864 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2867 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2861.x, x_2861.y, x_2861.x, x_2861.y) * vec4<f32>(x_2864.x, x_2864.y, x_2864.x, x_2864.y)) + vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2867.y));
            let x_2871 : vec4<f32> = u_xlat8;
            let x_2874 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2877 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2871.x, x_2871.y) * vec2<f32>(x_2874.x, x_2874.y)) + vec2<f32>(x_2877.w, x_2877.y));
            let x_2881 : f32 = u_xlat10.x;
            u_xlat11.x = x_2881;
            let x_2883 : vec4<f32> = u_xlat8;
            let x_2886 : vec4<f32> = x_174.x_AdditionalShadowmapSize;
            let x_2889 : vec4<f32> = u_xlat11;
            let x_2891 : vec2<f32> = ((vec2<f32>(x_2883.x, x_2883.y) * vec2<f32>(x_2886.x, x_2886.y)) + vec2<f32>(x_2889.x, x_2889.y));
            let x_2892 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2891.x, x_2891.y, x_2892.z, x_2892.w);
            let x_2895 : vec4<f32> = u_xlat9;
            let x_2897 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2895.x, x_2895.x, x_2895.x, x_2895.x) * x_2897);
            let x_2900 : vec4<f32> = u_xlat9;
            let x_2902 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2900.y, x_2900.y, x_2900.y, x_2900.y) * x_2902);
            let x_2905 : vec4<f32> = u_xlat9;
            let x_2907 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2905.z, x_2905.z, x_2905.z, x_2905.z) * x_2907);
            let x_2909 : vec4<f32> = u_xlat9;
            let x_2911 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2909.w, x_2909.w, x_2909.w, x_2909.w) * x_2911);
            let x_2914 : vec4<f32> = u_xlat14;
            let x_2915 : vec2<f32> = vec2<f32>(x_2914.x, x_2914.y);
            let x_2917 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
            let x_2924 : vec3<f32> = txVec43;
            let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
            u_xlat72 = x_2926;
            let x_2928 : vec4<f32> = u_xlat14;
            let x_2929 : vec2<f32> = vec2<f32>(x_2928.z, x_2928.w);
            let x_2931 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2929.x, x_2929.y, x_2931);
            let x_2938 : vec3<f32> = txVec44;
            let x_2940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2938.xy, x_2938.z);
            u_xlat73 = x_2940;
            let x_2941 : f32 = u_xlat73;
            let x_2943 : f32 = u_xlat19.y;
            u_xlat73 = (x_2941 * x_2943);
            let x_2946 : f32 = u_xlat19.x;
            let x_2947 : f32 = u_xlat72;
            let x_2949 : f32 = u_xlat73;
            u_xlat72 = ((x_2946 * x_2947) + x_2949);
            let x_2952 : vec2<f32> = u_xlat52;
            let x_2954 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
            let x_2961 : vec3<f32> = txVec45;
            let x_2963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
            u_xlat73 = x_2963;
            let x_2965 : f32 = u_xlat19.z;
            let x_2966 : f32 = u_xlat73;
            let x_2968 : f32 = u_xlat72;
            u_xlat72 = ((x_2965 * x_2966) + x_2968);
            let x_2971 : vec4<f32> = u_xlat17;
            let x_2972 : vec2<f32> = vec2<f32>(x_2971.x, x_2971.y);
            let x_2974 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2972.x, x_2972.y, x_2974);
            let x_2981 : vec3<f32> = txVec46;
            let x_2983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
            u_xlat73 = x_2983;
            let x_2985 : f32 = u_xlat19.w;
            let x_2986 : f32 = u_xlat73;
            let x_2988 : f32 = u_xlat72;
            u_xlat72 = ((x_2985 * x_2986) + x_2988);
            let x_2991 : vec4<f32> = u_xlat15;
            let x_2992 : vec2<f32> = vec2<f32>(x_2991.x, x_2991.y);
            let x_2994 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2992.x, x_2992.y, x_2994);
            let x_3001 : vec3<f32> = txVec47;
            let x_3003 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3001.xy, x_3001.z);
            u_xlat73 = x_3003;
            let x_3005 : f32 = u_xlat20.x;
            let x_3006 : f32 = u_xlat73;
            let x_3008 : f32 = u_xlat72;
            u_xlat72 = ((x_3005 * x_3006) + x_3008);
            let x_3011 : vec4<f32> = u_xlat15;
            let x_3012 : vec2<f32> = vec2<f32>(x_3011.z, x_3011.w);
            let x_3014 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
            let x_3021 : vec3<f32> = txVec48;
            let x_3023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
            u_xlat73 = x_3023;
            let x_3025 : f32 = u_xlat20.y;
            let x_3026 : f32 = u_xlat73;
            let x_3028 : f32 = u_xlat72;
            u_xlat72 = ((x_3025 * x_3026) + x_3028);
            let x_3031 : vec4<f32> = u_xlat16;
            let x_3032 : vec2<f32> = vec2<f32>(x_3031.x, x_3031.y);
            let x_3034 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3032.x, x_3032.y, x_3034);
            let x_3041 : vec3<f32> = txVec49;
            let x_3043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3041.xy, x_3041.z);
            u_xlat73 = x_3043;
            let x_3045 : f32 = u_xlat20.z;
            let x_3046 : f32 = u_xlat73;
            let x_3048 : f32 = u_xlat72;
            u_xlat72 = ((x_3045 * x_3046) + x_3048);
            let x_3051 : vec4<f32> = u_xlat17;
            let x_3052 : vec2<f32> = vec2<f32>(x_3051.z, x_3051.w);
            let x_3054 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3052.x, x_3052.y, x_3054);
            let x_3061 : vec3<f32> = txVec50;
            let x_3063 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3061.xy, x_3061.z);
            u_xlat73 = x_3063;
            let x_3065 : f32 = u_xlat20.w;
            let x_3066 : f32 = u_xlat73;
            let x_3068 : f32 = u_xlat72;
            u_xlat72 = ((x_3065 * x_3066) + x_3068);
            let x_3071 : vec4<f32> = u_xlat18;
            let x_3072 : vec2<f32> = vec2<f32>(x_3071.x, x_3071.y);
            let x_3074 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
            let x_3081 : vec3<f32> = txVec51;
            let x_3083 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
            u_xlat73 = x_3083;
            let x_3085 : f32 = u_xlat21.x;
            let x_3086 : f32 = u_xlat73;
            let x_3088 : f32 = u_xlat72;
            u_xlat72 = ((x_3085 * x_3086) + x_3088);
            let x_3091 : vec4<f32> = u_xlat18;
            let x_3092 : vec2<f32> = vec2<f32>(x_3091.z, x_3091.w);
            let x_3094 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3092.x, x_3092.y, x_3094);
            let x_3101 : vec3<f32> = txVec52;
            let x_3103 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3101.xy, x_3101.z);
            u_xlat73 = x_3103;
            let x_3105 : f32 = u_xlat21.y;
            let x_3106 : f32 = u_xlat73;
            let x_3108 : f32 = u_xlat72;
            u_xlat72 = ((x_3105 * x_3106) + x_3108);
            let x_3111 : vec2<f32> = u_xlat32;
            let x_3113 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3111.x, x_3111.y, x_3113);
            let x_3120 : vec3<f32> = txVec53;
            let x_3122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3120.xy, x_3120.z);
            u_xlat73 = x_3122;
            let x_3124 : f32 = u_xlat21.z;
            let x_3125 : f32 = u_xlat73;
            let x_3127 : f32 = u_xlat72;
            u_xlat72 = ((x_3124 * x_3125) + x_3127);
            let x_3130 : vec2<f32> = u_xlat60;
            let x_3132 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3139 : vec3<f32> = txVec54;
            let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
            u_xlat73 = x_3141;
            let x_3143 : f32 = u_xlat21.w;
            let x_3144 : f32 = u_xlat73;
            let x_3146 : f32 = u_xlat72;
            u_xlat72 = ((x_3143 * x_3144) + x_3146);
            let x_3149 : vec4<f32> = u_xlat13;
            let x_3150 : vec2<f32> = vec2<f32>(x_3149.x, x_3149.y);
            let x_3152 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3150.x, x_3150.y, x_3152);
            let x_3159 : vec3<f32> = txVec55;
            let x_3161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3159.xy, x_3159.z);
            u_xlat73 = x_3161;
            let x_3163 : f32 = u_xlat9.x;
            let x_3164 : f32 = u_xlat73;
            let x_3166 : f32 = u_xlat72;
            u_xlat72 = ((x_3163 * x_3164) + x_3166);
            let x_3169 : vec4<f32> = u_xlat13;
            let x_3170 : vec2<f32> = vec2<f32>(x_3169.z, x_3169.w);
            let x_3172 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec56;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat73 = x_3181;
            let x_3183 : f32 = u_xlat9.y;
            let x_3184 : f32 = u_xlat73;
            let x_3186 : f32 = u_xlat72;
            u_xlat72 = ((x_3183 * x_3184) + x_3186);
            let x_3189 : vec2<f32> = u_xlat55;
            let x_3191 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec57;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat73 = x_3200;
            let x_3202 : f32 = u_xlat9.z;
            let x_3203 : f32 = u_xlat73;
            let x_3205 : f32 = u_xlat72;
            u_xlat72 = ((x_3202 * x_3203) + x_3205);
            let x_3208 : vec4<f32> = u_xlat8;
            let x_3209 : vec2<f32> = vec2<f32>(x_3208.x, x_3208.y);
            let x_3211 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
            let x_3218 : vec3<f32> = txVec58;
            let x_3220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
            u_xlat73 = x_3220;
            let x_3222 : f32 = u_xlat9.w;
            let x_3223 : f32 = u_xlat73;
            let x_3225 : f32 = u_xlat72;
            u_xlat71 = ((x_3222 * x_3223) + x_3225);
          }
        }
      } else {
        let x_3229 : vec4<f32> = u_xlat7;
        let x_3230 : vec2<f32> = vec2<f32>(x_3229.x, x_3229.y);
        let x_3232 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3230.x, x_3230.y, x_3232);
        let x_3239 : vec3<f32> = txVec59;
        let x_3241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3239.xy, x_3239.z);
        u_xlat71 = x_3241;
      }
      let x_3242 : i32 = u_xlati69;
      let x_3244 : f32 = x_174.x_AdditionalShadowParams[x_3242].x;
      u_xlat72 = (1.0f + -(x_3244));
      let x_3247 : f32 = u_xlat71;
      let x_3248 : i32 = u_xlati69;
      let x_3250 : f32 = x_174.x_AdditionalShadowParams[x_3248].x;
      let x_3252 : f32 = u_xlat72;
      u_xlat71 = ((x_3247 * x_3250) + x_3252);
      let x_3255 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3255);
      let x_3258 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3258 >= 1.0f);
      let x_3261 : bool = u_xlatb72;
      let x_3263 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3261 | x_3263);
      let x_3265 : bool = u_xlatb72;
      let x_3266 : f32 = u_xlat71;
      u_xlat71 = select(x_3266, 1.0f, x_3265);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3269 : f32 = u_xlat71;
    u_xlat72 = (-(x_3269) + 1.0f);
    let x_3272 : f32 = u_xlat67;
    let x_3273 : f32 = u_xlat72;
    let x_3275 : f32 = u_xlat71;
    u_xlat71 = ((x_3272 * x_3273) + x_3275);
    let x_3277 : f32 = u_xlat70;
    let x_3278 : f32 = u_xlat71;
    u_xlat70 = (x_3277 * x_3278);
    let x_3280 : f32 = u_xlat70;
    let x_3282 : i32 = u_xlati69;
    let x_3284 : vec4<f32> = x_1836.x_AdditionalLightsColor[x_3282];
    let x_3286 : vec3<f32> = (vec3<f32>(x_3280, x_3280, x_3280) * vec3<f32>(x_3284.x, x_3284.y, x_3284.z));
    let x_3287 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3286.x, x_3286.y, x_3286.z, x_3287.w);
    let x_3289 : vec3<f32> = u_xlat2;
    let x_3290 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(x_3289, vec3<f32>(x_3290.x, x_3290.y, x_3290.z));
    let x_3293 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3293, 0.0f, 1.0f);
    let x_3295 : f32 = u_xlat69;
    let x_3297 : vec4<f32> = u_xlat7;
    let x_3299 : vec3<f32> = (vec3<f32>(x_3295, x_3295, x_3295) * vec3<f32>(x_3297.x, x_3297.y, x_3297.z));
    let x_3300 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3299.x, x_3299.y, x_3299.z, x_3300.w);
    let x_3302 : vec4<f32> = u_xlat6;
    let x_3304 : vec4<f32> = u_xlat1;
    let x_3307 : vec4<f32> = u_xlat5;
    let x_3309 : vec3<f32> = ((vec3<f32>(x_3302.x, x_3302.y, x_3302.z) * vec3<f32>(x_3304.x, x_3304.y, x_3304.z)) + vec3<f32>(x_3307.x, x_3307.y, x_3307.z));
    let x_3310 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3309.x, x_3309.y, x_3309.z, x_3310.w);

    continuing {
      let x_3312 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3312 + bitcast<u32>(1i));
    }
  }
  let x_3314 : vec4<f32> = u_xlat4;
  let x_3316 : vec4<f32> = u_xlat1;
  let x_3319 : vec4<f32> = u_xlat3;
  let x_3321 : vec3<f32> = ((vec3<f32>(x_3314.x, x_3314.y, x_3314.z) * vec3<f32>(x_3316.x, x_3316.y, x_3316.z)) + vec3<f32>(x_3319.x, x_3319.y, x_3319.z));
  let x_3322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3321.x, x_3321.y, x_3321.z, x_3322.w);
  let x_3324 : vec4<f32> = u_xlat5;
  let x_3326 : vec4<f32> = u_xlat1;
  let x_3328 : vec3<f32> = (vec3<f32>(x_3324.x, x_3324.y, x_3324.z) + vec3<f32>(x_3326.x, x_3326.y, x_3326.z));
  let x_3329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3328.x, x_3328.y, x_3328.z, x_3329.w);
  let x_3332 : f32 = u_xlat0.x;
  let x_3334 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3332 * -(x_3334));
  let x_3339 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_3339);
  let x_3342 : vec4<f32> = u_xlat1;
  let x_3345 : vec4<f32> = x_44.unity_FogColor;
  let x_3348 : vec3<f32> = (vec3<f32>(x_3342.x, x_3342.y, x_3342.z) + -(vec3<f32>(x_3345.x, x_3345.y, x_3345.z)));
  let x_3349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3348.x, x_3348.y, x_3348.z, x_3349.w);
  let x_3353 : vec4<f32> = u_xlat0;
  let x_3355 : vec4<f32> = u_xlat1;
  let x_3359 : vec4<f32> = x_44.unity_FogColor;
  let x_3361 : vec3<f32> = ((vec3<f32>(x_3353.x, x_3353.x, x_3353.x) * vec3<f32>(x_3355.x, x_3355.y, x_3355.z)) + vec3<f32>(x_3359.x, x_3359.y, x_3359.z));
  let x_3362 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3361.x, x_3361.y, x_3361.z, x_3362.w);
  let x_3364 : bool = u_xlatb44;
  let x_3365 : f32 = u_xlat22;
  SV_Target0.w = select(1.0f, x_3365, x_3364);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


