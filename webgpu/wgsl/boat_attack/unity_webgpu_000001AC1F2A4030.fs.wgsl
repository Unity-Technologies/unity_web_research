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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_162 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb69 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb70 : bool;

@group(1) @binding(5) var<uniform> x_1700 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_1822 : UnityPerDraw;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1949 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlati73 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat74 : f32;

var<private> u_xlatb73 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb74 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlatb54 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu70 : u32;

var<private> u_xlatb71 : bool;

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
  var x_1653 : f32;
  var x_1783 : f32;
  var x_1794 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2086 : f32;
  var x_2095 : f32;
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
  var x_3687 : f32;
  var x_3700 : f32;
  var x_3748 : f32;
  var x_3760 : vec3<f32>;
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
  u_xlat23 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat46 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat69 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat69;
  let x_88 : f32 = u_xlat46;
  u_xlat46 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat46;
  u_xlat46 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat23;
  let x_95 : f32 = u_xlat46;
  u_xlat23 = (x_94 / x_95);
  let x_97 : f32 = u_xlat23;
  u_xlat23 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat23;
  u_xlat23 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb46;
  if (x_108) {
    let x_112 : f32 = u_xlat23;
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
  let x_146 : vec4<f32> = u_xlat0;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_146.x, x_146.x, x_146.x) * x_148);
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_165 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres0;
  let x_168 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = vs_TEXCOORD2;
  let x_176 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres1;
  let x_179 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  let x_187 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres2;
  let x_190 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : vec4<f32> = vs_TEXCOORD2;
  let x_197 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres3;
  let x_200 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) + -(vec3<f32>(x_197.x, x_197.y, x_197.z)));
  let x_201 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_209 : vec4<f32> = u_xlat4;
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : vec4<f32> = u_xlat6;
  let x_225 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_232 : vec4<f32> = u_xlat3;
  let x_235 : vec4<f32> = x_162.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_232 < x_235);
  let x_238 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_246);
  let x_250 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_250);
  let x_254 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_254);
  let x_260 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_260);
  let x_264 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_264);
  let x_267 : vec4<f32> = u_xlat3;
  let x_269 : vec4<f32> = u_xlat4;
  let x_271 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) + vec3<f32>(x_269.y, x_269.z, x_269.w));
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat3;
  let x_277 : vec3<f32> = max(vec3<f32>(x_274.x, x_274.y, x_274.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_277.x, x_277.y, x_277.z);
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_280, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_288 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_288) + 4.0f);
  let x_295 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_295);
  let x_299 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_299) << bitcast<u32>(2i));
  let x_302 : vec4<f32> = vs_TEXCOORD2;
  let x_304 : i32 = u_xlati0;
  let x_307 : i32 = u_xlati0;
  let x_311 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_304 + 1i) / 4i)][((x_307 + 1i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.y, x_302.y, x_302.y) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : i32 = u_xlati0;
  let x_318 : i32 = u_xlati0;
  let x_321 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_316 / 4i)][(x_318 % 4i)];
  let x_323 : vec4<f32> = vs_TEXCOORD2;
  let x_326 : vec4<f32> = u_xlat3;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.x, x_323.x)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : i32 = u_xlati0;
  let x_334 : i32 = u_xlati0;
  let x_338 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_331 + 2i) / 4i)][((x_334 + 2i) % 4i)];
  let x_340 : vec4<f32> = vs_TEXCOORD2;
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.z, x_340.z, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : i32 = u_xlati0;
  let x_353 : i32 = u_xlati0;
  let x_357 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_350 + 3i) / 4i)][((x_353 + 3i) % 4i)];
  let x_359 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_368 : vec2<f32> = vs_TEXCOORD1;
  let x_370 : f32 = x_27.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_368, x_370);
  u_xlat4 = x_371;
  let x_376 : vec2<f32> = vs_TEXCOORD1;
  let x_378 : f32 = x_27.x_GlobalMipBias.x;
  let x_379 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_376, x_378);
  let x_380 : vec3<f32> = vec3<f32>(x_379.x, x_379.y, x_379.z);
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat4;
  let x_387 : vec3<f32> = (vec3<f32>(x_383.x, x_383.y, x_383.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec3<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_390, vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_396 : f32 = u_xlat0.x;
  u_xlat0.x = (x_396 + 0.5f);
  let x_399 : vec4<f32> = u_xlat0;
  let x_401 : vec4<f32> = u_xlat5;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.x, x_399.x) * vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_407 : f32 = u_xlat4.w;
  u_xlat0.x = max(x_407, 0.00009999999747378752f);
  let x_410 : vec4<f32> = u_xlat4;
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.y, x_410.z) / vec3<f32>(x_412.x, x_412.x, x_412.x));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_419 : f32 = x_162.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_419);
  let x_421 : bool = u_xlatb0;
  if (x_421) {
    let x_425 : f32 = x_162.x_MainLightShadowParams.y;
    u_xlatb0 = (x_425 == 1.0f);
    let x_427 : bool = u_xlatb0;
    if (x_427) {
      let x_430 : vec4<f32> = u_xlat3;
      let x_434 : vec4<f32> = x_162.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_430.x, x_430.y, x_430.x, x_430.y) + x_434);
      let x_438 : vec4<f32> = u_xlat5;
      let x_439 : vec2<f32> = vec2<f32>(x_438.x, x_438.y);
      let x_441 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_439.x, x_439.y, x_441);
      let x_453 : vec3<f32> = txVec0;
      let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_453.xy, x_453.z);
      u_xlat6.x = x_455;
      let x_458 : vec4<f32> = u_xlat5;
      let x_459 : vec2<f32> = vec2<f32>(x_458.z, x_458.w);
      let x_461 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_459.x, x_459.y, x_461);
      let x_468 : vec3<f32> = txVec1;
      let x_470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_468.xy, x_468.z);
      u_xlat6.y = x_470;
      let x_472 : vec4<f32> = u_xlat3;
      let x_476 : vec4<f32> = x_162.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_472.x, x_472.y, x_472.x, x_472.y) + x_476);
      let x_479 : vec4<f32> = u_xlat5;
      let x_480 : vec2<f32> = vec2<f32>(x_479.x, x_479.y);
      let x_482 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_480.x, x_480.y, x_482);
      let x_489 : vec3<f32> = txVec2;
      let x_491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_489.xy, x_489.z);
      u_xlat6.z = x_491;
      let x_494 : vec4<f32> = u_xlat5;
      let x_495 : vec2<f32> = vec2<f32>(x_494.z, x_494.w);
      let x_497 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_495.x, x_495.y, x_497);
      let x_504 : vec3<f32> = txVec3;
      let x_506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_504.xy, x_504.z);
      u_xlat6.w = x_506;
      let x_508 : vec4<f32> = u_xlat6;
      u_xlat0.x = dot(x_508, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_516 : f32 = x_162.x_MainLightShadowParams.y;
      u_xlatb69 = (x_516 == 2.0f);
      let x_518 : bool = u_xlatb69;
      if (x_518) {
        let x_521 : vec4<f32> = u_xlat3;
        let x_525 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_529 : vec2<f32> = ((vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_525.z, x_525.w)) + vec2<f32>(0.5f, 0.5f));
        let x_530 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat5;
        let x_534 : vec2<f32> = floor(vec2<f32>(x_532.x, x_532.y));
        let x_535 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_539 : vec4<f32> = u_xlat3;
        let x_542 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_545 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_542.z, x_542.w)) + -(vec2<f32>(x_545.x, x_545.y)));
        let x_549 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_549.x, x_549.x, x_549.y, x_549.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_554 : vec4<f32> = u_xlat6;
        let x_556 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_554.x, x_554.x, x_554.z, x_554.z) * vec4<f32>(x_556.x, x_556.x, x_556.z, x_556.z));
        let x_559 : vec4<f32> = u_xlat7;
        let x_563 : vec2<f32> = (vec2<f32>(x_559.y, x_559.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_564 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_563.x, x_564.y, x_563.y, x_564.w);
        let x_566 : vec4<f32> = u_xlat7;
        let x_569 : vec2<f32> = u_xlat51;
        let x_571 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.z) * vec2<f32>(0.5f, 0.5f)) + -(x_569));
        let x_572 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_575 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_575) + vec2<f32>(1.0f, 1.0f));
        let x_580 : vec2<f32> = u_xlat51;
        let x_582 : vec2<f32> = min(x_580, vec2<f32>(0.0f, 0.0f));
        let x_583 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat8;
        let x_588 : vec4<f32> = u_xlat8;
        let x_591 : vec2<f32> = u_xlat53;
        let x_592 : vec2<f32> = ((-(vec2<f32>(x_585.x, x_585.y)) * vec2<f32>(x_588.x, x_588.y)) + x_591);
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_595 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_595, vec2<f32>(0.0f, 0.0f));
        let x_597 : vec2<f32> = u_xlat51;
        let x_599 : vec2<f32> = u_xlat51;
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_597) * x_599) + vec2<f32>(x_601.y, x_601.w));
        let x_604 : vec4<f32> = u_xlat8;
        let x_606 : vec2<f32> = (vec2<f32>(x_604.x, x_604.y) + vec2<f32>(1.0f, 1.0f));
        let x_607 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_609 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_609 + vec2<f32>(1.0f, 1.0f));
        let x_612 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_619 : vec2<f32> = u_xlat53;
        let x_620 : vec2<f32> = (x_619 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_621 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
        let x_623 : vec4<f32> = u_xlat8;
        let x_625 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
        let x_629 : vec2<f32> = u_xlat51;
        let x_630 : vec2<f32> = (x_629 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_631 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_633.y, x_633.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : f32 = u_xlat8.x;
        u_xlat9.z = x_637;
        let x_640 : f32 = u_xlat51.x;
        u_xlat9.w = x_640;
        let x_643 : f32 = u_xlat10.x;
        u_xlat7.z = x_643;
        let x_646 : f32 = u_xlat6.x;
        u_xlat7.w = x_646;
        let x_649 : vec4<f32> = u_xlat7;
        let x_651 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_649.z, x_649.w, x_649.x, x_649.z) + vec4<f32>(x_651.z, x_651.w, x_651.x, x_651.z));
        let x_655 : f32 = u_xlat9.y;
        u_xlat8.z = x_655;
        let x_658 : f32 = u_xlat51.y;
        u_xlat8.w = x_658;
        let x_661 : f32 = u_xlat7.y;
        u_xlat10.z = x_661;
        let x_664 : f32 = u_xlat6.z;
        u_xlat10.w = x_664;
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec4<f32> = u_xlat10;
        let x_670 : vec3<f32> = (vec3<f32>(x_666.z, x_666.y, x_666.w) + vec3<f32>(x_668.z, x_668.y, x_668.w));
        let x_671 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat7;
        let x_675 : vec4<f32> = u_xlat11;
        let x_677 : vec3<f32> = (vec3<f32>(x_673.x, x_673.z, x_673.w) / vec3<f32>(x_675.z, x_675.w, x_675.y));
        let x_678 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_680 : vec4<f32> = u_xlat7;
        let x_685 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_686 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat10;
        let x_690 : vec4<f32> = u_xlat6;
        let x_692 : vec3<f32> = (vec3<f32>(x_688.z, x_688.y, x_688.w) / vec3<f32>(x_690.x, x_690.y, x_690.z));
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat8;
        let x_697 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_698 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat7;
        let x_703 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_705 : vec3<f32> = (vec3<f32>(x_700.y, x_700.x, x_700.z) * vec3<f32>(x_703.x, x_703.x, x_703.x));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat8;
        let x_711 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_713 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_711.y, x_711.y, x_711.y));
        let x_714 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
        let x_717 : f32 = u_xlat8.x;
        u_xlat7.w = x_717;
        let x_719 : vec4<f32> = u_xlat5;
        let x_722 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_725 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_719.x, x_719.y, x_719.x, x_719.y) * vec4<f32>(x_722.x, x_722.y, x_722.x, x_722.y)) + vec4<f32>(x_725.y, x_725.w, x_725.x, x_725.w));
        let x_728 : vec4<f32> = u_xlat5;
        let x_731 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_734 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_728.x, x_728.y) * vec2<f32>(x_731.x, x_731.y)) + vec2<f32>(x_734.z, x_734.w));
        let x_738 : f32 = u_xlat7.y;
        u_xlat8.w = x_738;
        let x_740 : vec4<f32> = u_xlat8;
        let x_741 : vec2<f32> = vec2<f32>(x_740.y, x_740.z);
        let x_742 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_742.x, x_741.x, x_742.z, x_741.y);
        let x_744 : vec4<f32> = u_xlat5;
        let x_747 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y) * vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y)) + vec4<f32>(x_750.x, x_750.y, x_750.z, x_750.y));
        let x_753 : vec4<f32> = u_xlat5;
        let x_756 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y) * vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y)) + vec4<f32>(x_759.w, x_759.y, x_759.w, x_759.z));
        let x_762 : vec4<f32> = u_xlat5;
        let x_765 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_768 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_762.x, x_762.y, x_762.x, x_762.y) * vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y)) + vec4<f32>(x_768.x, x_768.w, x_768.z, x_768.w));
        let x_772 : vec4<f32> = u_xlat6;
        let x_774 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_772.x, x_772.x, x_772.x, x_772.y) * vec4<f32>(x_774.z, x_774.w, x_774.y, x_774.z));
        let x_778 : vec4<f32> = u_xlat6;
        let x_780 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_778.y, x_778.y, x_778.z, x_778.z) * x_780);
        let x_783 : f32 = u_xlat6.z;
        let x_785 : f32 = u_xlat11.y;
        u_xlat69 = (x_783 * x_785);
        let x_788 : vec4<f32> = u_xlat9;
        let x_789 : vec2<f32> = vec2<f32>(x_788.x, x_788.y);
        let x_791 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_799 : vec3<f32> = txVec4;
        let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_799.xy, x_799.z);
        u_xlat70 = x_801;
        let x_803 : vec4<f32> = u_xlat9;
        let x_804 : vec2<f32> = vec2<f32>(x_803.z, x_803.w);
        let x_806 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_814 : vec3<f32> = txVec5;
        let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_814.xy, x_814.z);
        u_xlat71 = x_816;
        let x_817 : f32 = u_xlat71;
        let x_819 : f32 = u_xlat12.y;
        u_xlat71 = (x_817 * x_819);
        let x_822 : f32 = u_xlat12.x;
        let x_823 : f32 = u_xlat70;
        let x_825 : f32 = u_xlat71;
        u_xlat70 = ((x_822 * x_823) + x_825);
        let x_828 : vec2<f32> = u_xlat51;
        let x_830 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec6;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_837.xy, x_837.z);
        u_xlat71 = x_839;
        let x_841 : f32 = u_xlat12.z;
        let x_842 : f32 = u_xlat71;
        let x_844 : f32 = u_xlat70;
        u_xlat70 = ((x_841 * x_842) + x_844);
        let x_847 : vec4<f32> = u_xlat8;
        let x_848 : vec2<f32> = vec2<f32>(x_847.x, x_847.y);
        let x_850 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec7;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_857.xy, x_857.z);
        u_xlat71 = x_859;
        let x_861 : f32 = u_xlat12.w;
        let x_862 : f32 = u_xlat71;
        let x_864 : f32 = u_xlat70;
        u_xlat70 = ((x_861 * x_862) + x_864);
        let x_867 : vec4<f32> = u_xlat10;
        let x_868 : vec2<f32> = vec2<f32>(x_867.x, x_867.y);
        let x_870 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_868.x, x_868.y, x_870);
        let x_877 : vec3<f32> = txVec8;
        let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_877.xy, x_877.z);
        u_xlat71 = x_879;
        let x_881 : f32 = u_xlat13.x;
        let x_882 : f32 = u_xlat71;
        let x_884 : f32 = u_xlat70;
        u_xlat70 = ((x_881 * x_882) + x_884);
        let x_887 : vec4<f32> = u_xlat10;
        let x_888 : vec2<f32> = vec2<f32>(x_887.z, x_887.w);
        let x_890 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec9;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat71 = x_899;
        let x_901 : f32 = u_xlat13.y;
        let x_902 : f32 = u_xlat71;
        let x_904 : f32 = u_xlat70;
        u_xlat70 = ((x_901 * x_902) + x_904);
        let x_907 : vec4<f32> = u_xlat8;
        let x_908 : vec2<f32> = vec2<f32>(x_907.z, x_907.w);
        let x_910 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec10;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_917.xy, x_917.z);
        u_xlat71 = x_919;
        let x_921 : f32 = u_xlat13.z;
        let x_922 : f32 = u_xlat71;
        let x_924 : f32 = u_xlat70;
        u_xlat70 = ((x_921 * x_922) + x_924);
        let x_927 : vec4<f32> = u_xlat7;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec11;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
        u_xlat71 = x_939;
        let x_941 : f32 = u_xlat13.w;
        let x_942 : f32 = u_xlat71;
        let x_944 : f32 = u_xlat70;
        u_xlat70 = ((x_941 * x_942) + x_944);
        let x_947 : vec4<f32> = u_xlat7;
        let x_948 : vec2<f32> = vec2<f32>(x_947.z, x_947.w);
        let x_950 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec12;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
        u_xlat71 = x_959;
        let x_960 : f32 = u_xlat69;
        let x_961 : f32 = u_xlat71;
        let x_963 : f32 = u_xlat70;
        u_xlat0.x = ((x_960 * x_961) + x_963);
      } else {
        let x_967 : vec4<f32> = u_xlat3;
        let x_970 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_973 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.y) * vec2<f32>(x_970.z, x_970.w)) + vec2<f32>(0.5f, 0.5f));
        let x_974 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec4<f32> = u_xlat5;
        let x_978 : vec2<f32> = floor(vec2<f32>(x_976.x, x_976.y));
        let x_979 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
        let x_981 : vec4<f32> = u_xlat3;
        let x_984 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_987 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_981.x, x_981.y) * vec2<f32>(x_984.z, x_984.w)) + -(vec2<f32>(x_987.x, x_987.y)));
        let x_991 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_991.x, x_991.x, x_991.y, x_991.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_994 : vec4<f32> = u_xlat6;
        let x_996 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_994.x, x_994.x, x_994.z, x_994.z) * vec4<f32>(x_996.x, x_996.x, x_996.z, x_996.z));
        let x_999 : vec4<f32> = u_xlat7;
        let x_1003 : vec2<f32> = (vec2<f32>(x_999.y, x_999.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1004 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1004.x, x_1003.x, x_1004.z, x_1003.y);
        let x_1006 : vec4<f32> = u_xlat7;
        let x_1009 : vec2<f32> = u_xlat51;
        let x_1011 : vec2<f32> = ((vec2<f32>(x_1006.x, x_1006.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1009));
        let x_1012 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1011.x, x_1012.y, x_1011.y, x_1012.w);
        let x_1014 : vec2<f32> = u_xlat51;
        let x_1016 : vec2<f32> = (-(x_1014) + vec2<f32>(1.0f, 1.0f));
        let x_1017 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
        let x_1019 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1019, vec2<f32>(0.0f, 0.0f));
        let x_1021 : vec2<f32> = u_xlat53;
        let x_1023 : vec2<f32> = u_xlat53;
        let x_1025 : vec4<f32> = u_xlat7;
        let x_1027 : vec2<f32> = ((-(x_1021) * x_1023) + vec2<f32>(x_1025.x, x_1025.y));
        let x_1028 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1027.x, x_1027.y, x_1028.z, x_1028.w);
        let x_1030 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1030, vec2<f32>(0.0f, 0.0f));
        let x_1033 : vec2<f32> = u_xlat53;
        let x_1035 : vec2<f32> = u_xlat53;
        let x_1037 : vec4<f32> = u_xlat6;
        let x_1039 : vec2<f32> = ((-(x_1033) * x_1035) + vec2<f32>(x_1037.y, x_1037.w));
        let x_1040 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1039.x, x_1040.y, x_1039.y);
        let x_1042 : vec4<f32> = u_xlat7;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1042.x, x_1042.y) + vec2<f32>(2.0f, 2.0f));
        let x_1046 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec3<f32> = u_xlat29;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.z) + vec2<f32>(2.0f, 2.0f));
        let x_1051 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1051.x, x_1050.x, x_1051.z, x_1050.y);
        let x_1054 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1054 * 0.08163200318813323975f);
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1061 : vec3<f32> = (vec3<f32>(x_1058.z, x_1058.x, x_1058.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1062 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec2<f32> = (vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1068 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1071 : f32 = u_xlat10.y;
        u_xlat9.x = x_1071;
        let x_1073 : vec2<f32> = u_xlat51;
        let x_1080 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1081.x, x_1080.x, x_1081.z, x_1080.y);
        let x_1083 : vec2<f32> = u_xlat51;
        let x_1087 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1091 : f32 = u_xlat6.x;
        u_xlat7.y = x_1091;
        let x_1094 : f32 = u_xlat8.y;
        u_xlat7.w = x_1094;
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1096 + x_1097);
        let x_1099 : vec2<f32> = u_xlat51;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1099.y, x_1099.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1103.x, x_1102.x, x_1103.z, x_1102.y);
        let x_1105 : vec2<f32> = u_xlat51;
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1105.y, x_1105.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1108.x, x_1109.y, x_1108.y, x_1109.w);
        let x_1112 : f32 = u_xlat6.y;
        u_xlat8.y = x_1112;
        let x_1114 : vec4<f32> = u_xlat8;
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1114 + x_1115);
        let x_1117 : vec4<f32> = u_xlat7;
        let x_1118 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1117 / x_1118);
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1120 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1127 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1126 / x_1127);
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1129 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1131 : vec4<f32> = u_xlat7;
        let x_1134 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1131.w, x_1131.x, x_1131.y, x_1131.z) * vec4<f32>(x_1134.x, x_1134.x, x_1134.x, x_1134.x));
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1140 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1137.x, x_1137.w, x_1137.y, x_1137.z) * vec4<f32>(x_1140.y, x_1140.y, x_1140.y, x_1140.y));
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1144 : vec3<f32> = vec3<f32>(x_1143.y, x_1143.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1144.z);
        let x_1148 : f32 = u_xlat8.x;
        u_xlat10.y = x_1148;
        let x_1150 : vec4<f32> = u_xlat5;
        let x_1153 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1156 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y) * vec4<f32>(x_1153.x, x_1153.y, x_1153.x, x_1153.y)) + vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1156.y));
        let x_1159 : vec4<f32> = u_xlat5;
        let x_1162 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1159.x, x_1159.y) * vec2<f32>(x_1162.x, x_1162.y)) + vec2<f32>(x_1165.w, x_1165.y));
        let x_1169 : f32 = u_xlat10.y;
        u_xlat7.y = x_1169;
        let x_1172 : f32 = u_xlat8.z;
        u_xlat10.y = x_1172;
        let x_1174 : vec4<f32> = u_xlat5;
        let x_1177 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1180.y));
        let x_1183 : vec4<f32> = u_xlat5;
        let x_1186 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat10;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.w, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1195 : f32 = u_xlat10.y;
        u_xlat7.z = x_1195;
        let x_1198 : vec4<f32> = u_xlat5;
        let x_1201 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y) * vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y)) + vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.z));
        let x_1208 : f32 = u_xlat8.w;
        u_xlat10.y = x_1208;
        let x_1211 : vec4<f32> = u_xlat5;
        let x_1214 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1221 : vec4<f32> = u_xlat5;
        let x_1224 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(x_1224.x, x_1224.y)) + vec2<f32>(x_1227.w, x_1227.y));
        let x_1231 : f32 = u_xlat10.y;
        u_xlat7.w = x_1231;
        let x_1234 : vec4<f32> = u_xlat5;
        let x_1237 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1234.x, x_1234.y) * vec2<f32>(x_1237.x, x_1237.y)) + vec2<f32>(x_1240.x, x_1240.w));
        let x_1243 : vec4<f32> = u_xlat10;
        let x_1244 : vec3<f32> = vec3<f32>(x_1243.x, x_1243.z, x_1243.w);
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1244.x, x_1245.y, x_1244.y, x_1244.z);
        let x_1247 : vec4<f32> = u_xlat5;
        let x_1250 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y) * vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y)) + vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1253.y));
        let x_1257 : vec4<f32> = u_xlat5;
        let x_1260 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1260.x, x_1260.y)) + vec2<f32>(x_1263.w, x_1263.y));
        let x_1267 : f32 = u_xlat7.x;
        u_xlat8.x = x_1267;
        let x_1269 : vec4<f32> = u_xlat5;
        let x_1272 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat8;
        let x_1277 : vec2<f32> = ((vec2<f32>(x_1269.x, x_1269.y) * vec2<f32>(x_1272.x, x_1272.y)) + vec2<f32>(x_1275.x, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1281.x, x_1281.x, x_1281.x, x_1281.x) * x_1283);
        let x_1286 : vec4<f32> = u_xlat6;
        let x_1288 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1286.y, x_1286.y, x_1286.y, x_1286.y) * x_1288);
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1291.z, x_1291.z, x_1291.z, x_1291.z) * x_1293);
        let x_1295 : vec4<f32> = u_xlat6;
        let x_1297 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1295.w, x_1295.w, x_1295.w, x_1295.w) * x_1297);
        let x_1300 : vec4<f32> = u_xlat11;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec13;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1310.xy, x_1310.z);
        u_xlat69 = x_1312;
        let x_1314 : vec4<f32> = u_xlat11;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.z, x_1314.w);
        let x_1317 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec14;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1324.xy, x_1324.z);
        u_xlat70 = x_1326;
        let x_1327 : f32 = u_xlat70;
        let x_1329 : f32 = u_xlat16.y;
        u_xlat70 = (x_1327 * x_1329);
        let x_1332 : f32 = u_xlat16.x;
        let x_1333 : f32 = u_xlat69;
        let x_1335 : f32 = u_xlat70;
        u_xlat69 = ((x_1332 * x_1333) + x_1335);
        let x_1338 : vec2<f32> = u_xlat51;
        let x_1340 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec15;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1347.xy, x_1347.z);
        u_xlat70 = x_1349;
        let x_1351 : f32 = u_xlat16.z;
        let x_1352 : f32 = u_xlat70;
        let x_1354 : f32 = u_xlat69;
        u_xlat69 = ((x_1351 * x_1352) + x_1354);
        let x_1357 : vec4<f32> = u_xlat14;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.x, x_1357.y);
        let x_1360 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec16;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1367.xy, x_1367.z);
        u_xlat70 = x_1369;
        let x_1371 : f32 = u_xlat16.w;
        let x_1372 : f32 = u_xlat70;
        let x_1374 : f32 = u_xlat69;
        u_xlat69 = ((x_1371 * x_1372) + x_1374);
        let x_1377 : vec4<f32> = u_xlat12;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
        let x_1380 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec17;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat70 = x_1389;
        let x_1391 : f32 = u_xlat17.x;
        let x_1392 : f32 = u_xlat70;
        let x_1394 : f32 = u_xlat69;
        u_xlat69 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat12;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec18;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat70 = x_1409;
        let x_1411 : f32 = u_xlat17.y;
        let x_1412 : f32 = u_xlat70;
        let x_1414 : f32 = u_xlat69;
        u_xlat69 = ((x_1411 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat13;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec19;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat70 = x_1429;
        let x_1431 : f32 = u_xlat17.z;
        let x_1432 : f32 = u_xlat70;
        let x_1434 : f32 = u_xlat69;
        u_xlat69 = ((x_1431 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat14;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.z, x_1437.w);
        let x_1440 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec20;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat70 = x_1449;
        let x_1451 : f32 = u_xlat17.w;
        let x_1452 : f32 = u_xlat70;
        let x_1454 : f32 = u_xlat69;
        u_xlat69 = ((x_1451 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat15;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec21;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat70 = x_1469;
        let x_1471 : f32 = u_xlat18.x;
        let x_1472 : f32 = u_xlat70;
        let x_1474 : f32 = u_xlat69;
        u_xlat69 = ((x_1471 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat15;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec22;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat70 = x_1489;
        let x_1491 : f32 = u_xlat18.y;
        let x_1492 : f32 = u_xlat70;
        let x_1494 : f32 = u_xlat69;
        u_xlat69 = ((x_1491 * x_1492) + x_1494);
        let x_1497 : vec2<f32> = u_xlat30;
        let x_1499 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec23;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1506.xy, x_1506.z);
        u_xlat70 = x_1508;
        let x_1510 : f32 = u_xlat18.z;
        let x_1511 : f32 = u_xlat70;
        let x_1513 : f32 = u_xlat69;
        u_xlat69 = ((x_1510 * x_1511) + x_1513);
        let x_1516 : vec2<f32> = u_xlat59;
        let x_1518 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec24;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat70 = x_1527;
        let x_1529 : f32 = u_xlat18.w;
        let x_1530 : f32 = u_xlat70;
        let x_1532 : f32 = u_xlat69;
        u_xlat69 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat10;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec25;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat70 = x_1547;
        let x_1549 : f32 = u_xlat6.x;
        let x_1550 : f32 = u_xlat70;
        let x_1552 : f32 = u_xlat69;
        u_xlat69 = ((x_1549 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat10;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.z, x_1555.w);
        let x_1558 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec26;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat70 = x_1567;
        let x_1569 : f32 = u_xlat6.y;
        let x_1570 : f32 = u_xlat70;
        let x_1572 : f32 = u_xlat69;
        u_xlat69 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec2<f32> = u_xlat54;
        let x_1577 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec27;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat70 = x_1586;
        let x_1588 : f32 = u_xlat6.z;
        let x_1589 : f32 = u_xlat70;
        let x_1591 : f32 = u_xlat69;
        u_xlat69 = ((x_1588 * x_1589) + x_1591);
        let x_1594 : vec4<f32> = u_xlat5;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.x, x_1594.y);
        let x_1597 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec28;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
        u_xlat70 = x_1606;
        let x_1608 : f32 = u_xlat6.w;
        let x_1609 : f32 = u_xlat70;
        let x_1611 : f32 = u_xlat69;
        u_xlat0.x = ((x_1608 * x_1609) + x_1611);
      }
    }
  } else {
    let x_1616 : vec4<f32> = u_xlat3;
    let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
    let x_1619 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
    let x_1626 : vec3<f32> = txVec29;
    let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
    u_xlat0.x = x_1628;
  }
  let x_1631 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1631) + 1.0f);
  let x_1635 : f32 = u_xlat0.x;
  let x_1637 : f32 = x_162.x_MainLightShadowParams.x;
  let x_1639 : f32 = u_xlat69;
  u_xlat0.x = ((x_1635 * x_1637) + x_1639);
  let x_1643 : f32 = u_xlat3.z;
  u_xlatb69 = (0.0f >= x_1643);
  let x_1647 : f32 = u_xlat3.z;
  u_xlatb70 = (x_1647 >= 1.0f);
  let x_1649 : bool = u_xlatb69;
  let x_1650 : bool = u_xlatb70;
  u_xlatb69 = (x_1649 | x_1650);
  let x_1652 : bool = u_xlatb69;
  if (x_1652) {
    x_1653 = 1.0f;
  } else {
    let x_1658 : f32 = u_xlat0.x;
    x_1653 = x_1658;
  }
  let x_1659 : f32 = x_1653;
  u_xlat0.x = x_1659;
  let x_1661 : vec4<f32> = vs_TEXCOORD2;
  let x_1665 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1667 : vec3<f32> = (vec3<f32>(x_1661.x, x_1661.y, x_1661.z) + -(x_1665));
  let x_1668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
  let x_1670 : vec4<f32> = u_xlat3;
  let x_1672 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_1670.x, x_1670.y, x_1670.z), vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
  let x_1675 : f32 = u_xlat69;
  let x_1677 : f32 = x_162.x_MainLightShadowParams.z;
  let x_1680 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat70 = ((x_1675 * x_1677) + x_1680);
  let x_1682 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1682, 0.0f, 1.0f);
  let x_1685 : f32 = u_xlat0.x;
  u_xlat71 = (-(x_1685) + 1.0f);
  let x_1688 : f32 = u_xlat70;
  let x_1689 : f32 = u_xlat71;
  let x_1692 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1688 * x_1689) + x_1692);
  let x_1702 : f32 = x_1700.x_MainLightCookieTextureFormat;
  u_xlatb70 = !((x_1702 == -1.0f));
  let x_1704 : bool = u_xlatb70;
  if (x_1704) {
    let x_1707 : vec4<f32> = vs_TEXCOORD2;
    let x_1710 : vec4<f32> = x_1700.x_MainLightWorldToLight[1i];
    let x_1712 : vec2<f32> = (vec2<f32>(x_1707.y, x_1707.y) * vec2<f32>(x_1710.x, x_1710.y));
    let x_1713 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1712.x, x_1712.y, x_1713.z, x_1713.w);
    let x_1716 : vec4<f32> = x_1700.x_MainLightWorldToLight[0i];
    let x_1718 : vec4<f32> = vs_TEXCOORD2;
    let x_1721 : vec4<f32> = u_xlat3;
    let x_1723 : vec2<f32> = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1718.x, x_1718.x)) + vec2<f32>(x_1721.x, x_1721.y));
    let x_1724 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1723.x, x_1723.y, x_1724.z, x_1724.w);
    let x_1727 : vec4<f32> = x_1700.x_MainLightWorldToLight[2i];
    let x_1729 : vec4<f32> = vs_TEXCOORD2;
    let x_1732 : vec4<f32> = u_xlat3;
    let x_1734 : vec2<f32> = ((vec2<f32>(x_1727.x, x_1727.y) * vec2<f32>(x_1729.z, x_1729.z)) + vec2<f32>(x_1732.x, x_1732.y));
    let x_1735 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1734.x, x_1734.y, x_1735.z, x_1735.w);
    let x_1737 : vec4<f32> = u_xlat3;
    let x_1740 : vec4<f32> = x_1700.x_MainLightWorldToLight[3i];
    let x_1742 : vec2<f32> = (vec2<f32>(x_1737.x, x_1737.y) + vec2<f32>(x_1740.x, x_1740.y));
    let x_1743 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1742.x, x_1742.y, x_1743.z, x_1743.w);
    let x_1745 : vec4<f32> = u_xlat3;
    let x_1748 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1749 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
    let x_1756 : vec4<f32> = u_xlat3;
    let x_1759 : f32 = x_27.x_GlobalMipBias.x;
    let x_1760 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1756.x, x_1756.y), x_1759);
    u_xlat3 = x_1760;
    let x_1765 : f32 = x_1700.x_MainLightCookieTextureFormat;
    let x_1767 : f32 = x_1700.x_MainLightCookieTextureFormat;
    let x_1769 : f32 = x_1700.x_MainLightCookieTextureFormat;
    let x_1771 : f32 = x_1700.x_MainLightCookieTextureFormat;
    let x_1772 : vec4<f32> = vec4<f32>(x_1765, x_1767, x_1769, x_1771);
    let x_1779 : vec4<bool> = (vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1772.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1779.x, x_1779.y);
    let x_1782 : bool = u_xlatb5.y;
    if (x_1782) {
      let x_1787 : f32 = u_xlat3.w;
      x_1783 = x_1787;
    } else {
      let x_1790 : f32 = u_xlat3.x;
      x_1783 = x_1790;
    }
    let x_1791 : f32 = x_1783;
    u_xlat70 = x_1791;
    let x_1793 : bool = u_xlatb5.x;
    if (x_1793) {
      let x_1797 : vec4<f32> = u_xlat3;
      x_1794 = vec3<f32>(x_1797.x, x_1797.y, x_1797.z);
    } else {
      let x_1800 : f32 = u_xlat70;
      x_1794 = vec3<f32>(x_1800, x_1800, x_1800);
    }
    let x_1802 : vec3<f32> = x_1794;
    let x_1803 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1809 : vec4<f32> = u_xlat3;
  let x_1812 : vec4<f32> = x_27.x_MainLightColor;
  let x_1814 : vec3<f32> = (vec3<f32>(x_1809.x, x_1809.y, x_1809.z) * vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
  let x_1815 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
  let x_1818 : f32 = u_xlat0.x;
  let x_1824 : f32 = x_1822.unity_LightData.z;
  u_xlat0.x = (x_1818 * x_1824);
  let x_1827 : vec4<f32> = u_xlat0;
  let x_1829 : vec4<f32> = u_xlat3;
  let x_1831 : vec3<f32> = (vec3<f32>(x_1827.x, x_1827.x, x_1827.x) * vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1834 : vec3<f32> = u_xlat2;
  let x_1836 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_1834, vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1841 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1841, 0.0f, 1.0f);
  let x_1844 : vec4<f32> = u_xlat0;
  let x_1846 : vec4<f32> = u_xlat3;
  let x_1848 : vec3<f32> = (vec3<f32>(x_1844.x, x_1844.x, x_1844.x) * vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
  let x_1849 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1851 : vec4<f32> = u_xlat1;
  let x_1853 : vec4<f32> = u_xlat3;
  let x_1855 : vec3<f32> = (vec3<f32>(x_1851.x, x_1851.y, x_1851.z) * vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
  let x_1859 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1861 : f32 = x_1822.unity_LightData.y;
  u_xlat0.x = min(x_1859, x_1861);
  let x_1865 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1865));
  let x_1868 : f32 = u_xlat69;
  let x_1871 : f32 = x_162.x_AdditionalShadowFadeParams.x;
  let x_1874 : f32 = x_162.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1868 * x_1871) + x_1874);
  let x_1876 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1876, 0.0f, 1.0f);
  let x_1879 : f32 = x_1700.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1881 : f32 = x_1700.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1883 : f32 = x_1700.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1885 : f32 = x_1700.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1886 : vec4<f32> = vec4<f32>(x_1879, x_1881, x_1883, x_1885);
  let x_1892 : vec4<bool> = (vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1886.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1892.x, x_1892.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1904 : u32 = u_xlatu_loop_1;
    let x_1905 : u32 = u_xlatu0;
    if ((x_1904 < x_1905)) {
    } else {
      break;
    }
    let x_1908 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1908 >> 2u);
    let x_1911 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1911 & 3u));
    let x_1914 : u32 = u_xlatu71;
    let x_1917 : vec4<f32> = x_1822.unity_LightIndices[bitcast<i32>(x_1914)];
    let x_1927 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1932 : vec4<u32> = indexable[x_1927];
    u_xlat71 = dot(x_1917, bitcast<vec4<f32>>(x_1932));
    let x_1936 : f32 = u_xlat71;
    u_xlati71 = i32(x_1936);
    let x_1938 : vec4<f32> = vs_TEXCOORD2;
    let x_1950 : i32 = u_xlati71;
    let x_1952 : vec4<f32> = x_1949.x_AdditionalLightsPosition[x_1950];
    let x_1955 : i32 = u_xlati71;
    let x_1957 : vec4<f32> = x_1949.x_AdditionalLightsPosition[x_1955];
    let x_1959 : vec3<f32> = ((-(vec3<f32>(x_1938.x, x_1938.y, x_1938.z)) * vec3<f32>(x_1952.w, x_1952.w, x_1952.w)) + vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
    let x_1960 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
    let x_1963 : vec4<f32> = u_xlat7;
    let x_1965 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1963.x, x_1963.y, x_1963.z), vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
    let x_1968 : f32 = u_xlat72;
    u_xlat72 = max(x_1968, 0.00006103515625f);
    let x_1972 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1972);
    let x_1974 : f32 = u_xlat73;
    let x_1976 : vec4<f32> = u_xlat7;
    let x_1978 : vec3<f32> = (vec3<f32>(x_1974, x_1974, x_1974) * vec3<f32>(x_1976.x, x_1976.y, x_1976.z));
    let x_1979 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
    let x_1981 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1981);
    let x_1983 : f32 = u_xlat72;
    let x_1984 : i32 = u_xlati71;
    let x_1986 : f32 = x_1949.x_AdditionalLightsAttenuation[x_1984].x;
    u_xlat72 = (x_1983 * x_1986);
    let x_1988 : f32 = u_xlat72;
    let x_1990 : f32 = u_xlat72;
    u_xlat72 = ((-(x_1988) * x_1990) + 1.0f);
    let x_1993 : f32 = u_xlat72;
    u_xlat72 = max(x_1993, 0.0f);
    let x_1995 : f32 = u_xlat72;
    let x_1996 : f32 = u_xlat72;
    u_xlat72 = (x_1995 * x_1996);
    let x_1998 : f32 = u_xlat72;
    let x_1999 : f32 = u_xlat73;
    u_xlat72 = (x_1998 * x_1999);
    let x_2001 : i32 = u_xlati71;
    let x_2003 : vec4<f32> = x_1949.x_AdditionalLightsSpotDir[x_2001];
    let x_2005 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2003.x, x_2003.y, x_2003.z), vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2008 : f32 = u_xlat73;
    let x_2009 : i32 = u_xlati71;
    let x_2011 : f32 = x_1949.x_AdditionalLightsAttenuation[x_2009].z;
    let x_2013 : i32 = u_xlati71;
    let x_2015 : f32 = x_1949.x_AdditionalLightsAttenuation[x_2013].w;
    u_xlat73 = ((x_2008 * x_2011) + x_2015);
    let x_2017 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2017, 0.0f, 1.0f);
    let x_2019 : f32 = u_xlat73;
    let x_2020 : f32 = u_xlat73;
    u_xlat73 = (x_2019 * x_2020);
    let x_2022 : f32 = u_xlat72;
    let x_2023 : f32 = u_xlat73;
    u_xlat72 = (x_2022 * x_2023);
    let x_2027 : i32 = u_xlati71;
    let x_2029 : f32 = x_162.x_AdditionalShadowParams[x_2027].w;
    u_xlati73 = i32(x_2029);
    let x_2032 : i32 = u_xlati73;
    u_xlatb51 = (x_2032 >= 0i);
    let x_2034 : bool = u_xlatb51;
    if (x_2034) {
      let x_2038 : i32 = u_xlati71;
      let x_2040 : f32 = x_162.x_AdditionalShadowParams[x_2038].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2040, x_2040, x_2040, x_2040))));
      let x_2044 : bool = u_xlatb51;
      if (x_2044) {
        let x_2048 : vec4<f32> = u_xlat7;
        let x_2051 : vec4<f32> = u_xlat7;
        let x_2054 : vec4<bool> = (abs(vec4<f32>(x_2048.z, x_2048.z, x_2048.y, x_2048.z)) >= abs(vec4<f32>(x_2051.x, x_2051.y, x_2051.x, x_2051.x)));
        let x_2056 : vec3<bool> = vec3<bool>(x_2054.x, x_2054.y, x_2054.z);
        let x_2057 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
        let x_2060 : bool = u_xlatb8.y;
        let x_2062 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2060 & x_2062);
        let x_2064 : vec4<f32> = u_xlat7;
        let x_2067 : vec4<bool> = (-(vec4<f32>(x_2064.z, x_2064.y, x_2064.z, x_2064.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2068 : vec3<bool> = vec3<bool>(x_2067.x, x_2067.y, x_2067.w);
        let x_2069 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2068.x, x_2068.y, x_2069.z, x_2068.z);
        let x_2072 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2072);
        let x_2077 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2077);
        let x_2082 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2082);
        let x_2085 : bool = u_xlatb8.z;
        if (x_2085) {
          let x_2090 : f32 = u_xlat8.y;
          x_2086 = x_2090;
        } else {
          let x_2092 : f32 = u_xlat74;
          x_2086 = x_2092;
        }
        let x_2093 : f32 = x_2086;
        u_xlat74 = x_2093;
        let x_2094 : bool = u_xlatb51;
        if (x_2094) {
          let x_2099 : f32 = u_xlat8.x;
          x_2095 = x_2099;
        } else {
          let x_2101 : f32 = u_xlat74;
          x_2095 = x_2101;
        }
        let x_2102 : f32 = x_2095;
        u_xlat51.x = x_2102;
        let x_2104 : i32 = u_xlati71;
        let x_2106 : f32 = x_162.x_AdditionalShadowParams[x_2104].w;
        u_xlat74 = trunc(x_2106);
        let x_2109 : f32 = u_xlat51.x;
        let x_2110 : f32 = u_xlat74;
        u_xlat51.x = (x_2109 + x_2110);
        let x_2114 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2114);
      }
      let x_2116 : i32 = u_xlati73;
      u_xlati73 = (x_2116 << bitcast<u32>(2i));
      let x_2118 : vec4<f32> = vs_TEXCOORD2;
      let x_2121 : i32 = u_xlati73;
      let x_2124 : i32 = u_xlati73;
      let x_2128 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2121 + 1i) / 4i)][((x_2124 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2118.y, x_2118.y, x_2118.y, x_2118.y) * x_2128);
      let x_2130 : i32 = u_xlati73;
      let x_2132 : i32 = u_xlati73;
      let x_2135 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[(x_2130 / 4i)][(x_2132 % 4i)];
      let x_2136 : vec4<f32> = vs_TEXCOORD2;
      let x_2139 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2135 * vec4<f32>(x_2136.x, x_2136.x, x_2136.x, x_2136.x)) + x_2139);
      let x_2141 : i32 = u_xlati73;
      let x_2144 : i32 = u_xlati73;
      let x_2148 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2141 + 2i) / 4i)][((x_2144 + 2i) % 4i)];
      let x_2149 : vec4<f32> = vs_TEXCOORD2;
      let x_2152 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2148 * vec4<f32>(x_2149.z, x_2149.z, x_2149.z, x_2149.z)) + x_2152);
      let x_2154 : vec4<f32> = u_xlat8;
      let x_2155 : i32 = u_xlati73;
      let x_2158 : i32 = u_xlati73;
      let x_2162 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2155 + 3i) / 4i)][((x_2158 + 3i) % 4i)];
      u_xlat8 = (x_2154 + x_2162);
      let x_2164 : vec4<f32> = u_xlat8;
      let x_2166 : vec4<f32> = u_xlat8;
      let x_2168 : vec3<f32> = (vec3<f32>(x_2164.x, x_2164.y, x_2164.z) / vec3<f32>(x_2166.w, x_2166.w, x_2166.w));
      let x_2169 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
      let x_2172 : i32 = u_xlati71;
      let x_2174 : f32 = x_162.x_AdditionalShadowParams[x_2172].y;
      u_xlatb73 = (0.0f < x_2174);
      let x_2176 : bool = u_xlatb73;
      if (x_2176) {
        let x_2179 : i32 = u_xlati71;
        let x_2181 : f32 = x_162.x_AdditionalShadowParams[x_2179].y;
        u_xlatb73 = (1.0f == x_2181);
        let x_2183 : bool = u_xlatb73;
        if (x_2183) {
          let x_2186 : vec4<f32> = u_xlat8;
          let x_2190 : vec4<f32> = x_162.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2186.x, x_2186.y, x_2186.x, x_2186.y) + x_2190);
          let x_2193 : vec4<f32> = u_xlat9;
          let x_2194 : vec2<f32> = vec2<f32>(x_2193.x, x_2193.y);
          let x_2196 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2194.x, x_2194.y, x_2196);
          let x_2204 : vec3<f32> = txVec30;
          let x_2206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2204.xy, x_2204.z);
          u_xlat10.x = x_2206;
          let x_2209 : vec4<f32> = u_xlat9;
          let x_2210 : vec2<f32> = vec2<f32>(x_2209.z, x_2209.w);
          let x_2212 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2210.x, x_2210.y, x_2212);
          let x_2219 : vec3<f32> = txVec31;
          let x_2221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2219.xy, x_2219.z);
          u_xlat10.y = x_2221;
          let x_2223 : vec4<f32> = u_xlat8;
          let x_2227 : vec4<f32> = x_162.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2223.x, x_2223.y, x_2223.x, x_2223.y) + x_2227);
          let x_2230 : vec4<f32> = u_xlat9;
          let x_2231 : vec2<f32> = vec2<f32>(x_2230.x, x_2230.y);
          let x_2233 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2231.x, x_2231.y, x_2233);
          let x_2240 : vec3<f32> = txVec32;
          let x_2242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2240.xy, x_2240.z);
          u_xlat10.z = x_2242;
          let x_2245 : vec4<f32> = u_xlat9;
          let x_2246 : vec2<f32> = vec2<f32>(x_2245.z, x_2245.w);
          let x_2248 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2246.x, x_2246.y, x_2248);
          let x_2255 : vec3<f32> = txVec33;
          let x_2257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2255.xy, x_2255.z);
          u_xlat10.w = x_2257;
          let x_2259 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2259, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2262 : i32 = u_xlati71;
          let x_2264 : f32 = x_162.x_AdditionalShadowParams[x_2262].y;
          u_xlatb51 = (2.0f == x_2264);
          let x_2266 : bool = u_xlatb51;
          if (x_2266) {
            let x_2269 : vec4<f32> = u_xlat8;
            let x_2273 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2269.x, x_2269.y) * vec2<f32>(x_2273.z, x_2273.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2277 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2277);
            let x_2279 : vec4<f32> = u_xlat8;
            let x_2282 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2285 : vec2<f32> = u_xlat51;
            let x_2287 : vec2<f32> = ((vec2<f32>(x_2279.x, x_2279.y) * vec2<f32>(x_2282.z, x_2282.w)) + -(x_2285));
            let x_2288 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2287.x, x_2287.y, x_2288.z, x_2288.w);
            let x_2290 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2290.x, x_2290.x, x_2290.y, x_2290.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2293 : vec4<f32> = u_xlat10;
            let x_2295 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2293.x, x_2293.x, x_2293.z, x_2293.z) * vec4<f32>(x_2295.x, x_2295.x, x_2295.z, x_2295.z));
            let x_2299 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2299.y, x_2299.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2302 : vec4<f32> = u_xlat11;
            let x_2305 : vec4<f32> = u_xlat9;
            let x_2308 : vec2<f32> = ((vec2<f32>(x_2302.x, x_2302.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2305.x, x_2305.y)));
            let x_2309 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2308.x, x_2309.y, x_2308.y, x_2309.w);
            let x_2311 : vec4<f32> = u_xlat9;
            let x_2314 : vec2<f32> = (-(vec2<f32>(x_2311.x, x_2311.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2315 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2314.x, x_2314.y, x_2315.z, x_2315.w);
            let x_2318 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2318.x, x_2318.y), vec2<f32>(0.0f, 0.0f));
            let x_2321 : vec2<f32> = u_xlat57;
            let x_2323 : vec2<f32> = u_xlat57;
            let x_2325 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2321) * x_2323) + vec2<f32>(x_2325.x, x_2325.y));
            let x_2328 : vec4<f32> = u_xlat9;
            let x_2330 : vec2<f32> = max(vec2<f32>(x_2328.x, x_2328.y), vec2<f32>(0.0f, 0.0f));
            let x_2331 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2330.x, x_2330.y, x_2331.z, x_2331.w);
            let x_2333 : vec4<f32> = u_xlat9;
            let x_2336 : vec4<f32> = u_xlat9;
            let x_2339 : vec4<f32> = u_xlat10;
            let x_2341 : vec2<f32> = ((-(vec2<f32>(x_2333.x, x_2333.y)) * vec2<f32>(x_2336.x, x_2336.y)) + vec2<f32>(x_2339.y, x_2339.w));
            let x_2342 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
            let x_2344 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2344 + vec2<f32>(1.0f, 1.0f));
            let x_2346 : vec4<f32> = u_xlat9;
            let x_2348 : vec2<f32> = (vec2<f32>(x_2346.x, x_2346.y) + vec2<f32>(1.0f, 1.0f));
            let x_2349 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2348.x, x_2348.y, x_2349.z, x_2349.w);
            let x_2351 : vec4<f32> = u_xlat10;
            let x_2353 : vec2<f32> = (vec2<f32>(x_2351.x, x_2351.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2354 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2353.x, x_2353.y, x_2354.z, x_2354.w);
            let x_2356 : vec4<f32> = u_xlat11;
            let x_2358 : vec2<f32> = (vec2<f32>(x_2356.x, x_2356.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2359 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2358.x, x_2358.y, x_2359.z, x_2359.w);
            let x_2361 : vec2<f32> = u_xlat57;
            let x_2362 : vec2<f32> = (x_2361 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2363 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2362.x, x_2362.y, x_2363.z, x_2363.w);
            let x_2365 : vec4<f32> = u_xlat9;
            let x_2367 : vec2<f32> = (vec2<f32>(x_2365.x, x_2365.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2368 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2367.x, x_2367.y, x_2368.z, x_2368.w);
            let x_2370 : vec4<f32> = u_xlat10;
            let x_2372 : vec2<f32> = (vec2<f32>(x_2370.y, x_2370.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2373 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2372.x, x_2372.y, x_2373.z, x_2373.w);
            let x_2376 : f32 = u_xlat11.x;
            u_xlat12.z = x_2376;
            let x_2379 : f32 = u_xlat9.x;
            u_xlat12.w = x_2379;
            let x_2382 : f32 = u_xlat14.x;
            u_xlat13.z = x_2382;
            let x_2385 : f32 = u_xlat55.x;
            u_xlat13.w = x_2385;
            let x_2387 : vec4<f32> = u_xlat12;
            let x_2389 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2387.z, x_2387.w, x_2387.x, x_2387.z) + vec4<f32>(x_2389.z, x_2389.w, x_2389.x, x_2389.z));
            let x_2393 : f32 = u_xlat12.y;
            u_xlat11.z = x_2393;
            let x_2396 : f32 = u_xlat9.y;
            u_xlat11.w = x_2396;
            let x_2399 : f32 = u_xlat13.y;
            u_xlat14.z = x_2399;
            let x_2402 : f32 = u_xlat55.y;
            u_xlat14.w = x_2402;
            let x_2404 : vec4<f32> = u_xlat11;
            let x_2406 : vec4<f32> = u_xlat14;
            let x_2408 : vec3<f32> = (vec3<f32>(x_2404.z, x_2404.y, x_2404.w) + vec3<f32>(x_2406.z, x_2406.y, x_2406.w));
            let x_2409 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
            let x_2411 : vec4<f32> = u_xlat13;
            let x_2413 : vec4<f32> = u_xlat10;
            let x_2415 : vec3<f32> = (vec3<f32>(x_2411.x, x_2411.z, x_2411.w) / vec3<f32>(x_2413.z, x_2413.w, x_2413.y));
            let x_2416 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2416.w);
            let x_2418 : vec4<f32> = u_xlat11;
            let x_2420 : vec3<f32> = (vec3<f32>(x_2418.x, x_2418.y, x_2418.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2421 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
            let x_2423 : vec4<f32> = u_xlat14;
            let x_2425 : vec4<f32> = u_xlat9;
            let x_2427 : vec3<f32> = (vec3<f32>(x_2423.z, x_2423.y, x_2423.w) / vec3<f32>(x_2425.x, x_2425.y, x_2425.z));
            let x_2428 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2427.x, x_2427.y, x_2427.z, x_2428.w);
            let x_2430 : vec4<f32> = u_xlat12;
            let x_2432 : vec3<f32> = (vec3<f32>(x_2430.x, x_2430.y, x_2430.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2433 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
            let x_2435 : vec4<f32> = u_xlat11;
            let x_2438 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2440 : vec3<f32> = (vec3<f32>(x_2435.y, x_2435.x, x_2435.z) * vec3<f32>(x_2438.x, x_2438.x, x_2438.x));
            let x_2441 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
            let x_2443 : vec4<f32> = u_xlat12;
            let x_2446 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2448 : vec3<f32> = (vec3<f32>(x_2443.x, x_2443.y, x_2443.z) * vec3<f32>(x_2446.y, x_2446.y, x_2446.y));
            let x_2449 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
            let x_2452 : f32 = u_xlat12.x;
            u_xlat11.w = x_2452;
            let x_2454 : vec2<f32> = u_xlat51;
            let x_2457 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2460 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2454.x, x_2454.y, x_2454.x, x_2454.y) * vec4<f32>(x_2457.x, x_2457.y, x_2457.x, x_2457.y)) + vec4<f32>(x_2460.y, x_2460.w, x_2460.x, x_2460.w));
            let x_2463 : vec2<f32> = u_xlat51;
            let x_2465 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2468 : vec4<f32> = u_xlat11;
            let x_2470 : vec2<f32> = ((x_2463 * vec2<f32>(x_2465.x, x_2465.y)) + vec2<f32>(x_2468.z, x_2468.w));
            let x_2471 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2470.x, x_2470.y, x_2471.z, x_2471.w);
            let x_2474 : f32 = u_xlat11.y;
            u_xlat12.w = x_2474;
            let x_2476 : vec4<f32> = u_xlat12;
            let x_2477 : vec2<f32> = vec2<f32>(x_2476.y, x_2476.z);
            let x_2478 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2478.x, x_2477.x, x_2478.z, x_2477.y);
            let x_2480 : vec2<f32> = u_xlat51;
            let x_2483 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2486 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2480.x, x_2480.y, x_2480.x, x_2480.y) * vec4<f32>(x_2483.x, x_2483.y, x_2483.x, x_2483.y)) + vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2486.y));
            let x_2489 : vec2<f32> = u_xlat51;
            let x_2492 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2495 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2489.x, x_2489.y, x_2489.x, x_2489.y) * vec4<f32>(x_2492.x, x_2492.y, x_2492.x, x_2492.y)) + vec4<f32>(x_2495.w, x_2495.y, x_2495.w, x_2495.z));
            let x_2498 : vec2<f32> = u_xlat51;
            let x_2501 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2504 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2498.x, x_2498.y, x_2498.x, x_2498.y) * vec4<f32>(x_2501.x, x_2501.y, x_2501.x, x_2501.y)) + vec4<f32>(x_2504.x, x_2504.w, x_2504.z, x_2504.w));
            let x_2507 : vec4<f32> = u_xlat9;
            let x_2509 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2507.x, x_2507.x, x_2507.x, x_2507.y) * vec4<f32>(x_2509.z, x_2509.w, x_2509.y, x_2509.z));
            let x_2512 : vec4<f32> = u_xlat9;
            let x_2514 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2512.y, x_2512.y, x_2512.z, x_2512.z) * x_2514);
            let x_2517 : f32 = u_xlat9.z;
            let x_2519 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2517 * x_2519);
            let x_2523 : vec4<f32> = u_xlat13;
            let x_2524 : vec2<f32> = vec2<f32>(x_2523.x, x_2523.y);
            let x_2526 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2524.x, x_2524.y, x_2526);
            let x_2533 : vec3<f32> = txVec34;
            let x_2535 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2533.xy, x_2533.z);
            u_xlat74 = x_2535;
            let x_2537 : vec4<f32> = u_xlat13;
            let x_2538 : vec2<f32> = vec2<f32>(x_2537.z, x_2537.w);
            let x_2540 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
            let x_2548 : vec3<f32> = txVec35;
            let x_2550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2548.xy, x_2548.z);
            u_xlat75 = x_2550;
            let x_2551 : f32 = u_xlat75;
            let x_2553 : f32 = u_xlat16.y;
            u_xlat75 = (x_2551 * x_2553);
            let x_2556 : f32 = u_xlat16.x;
            let x_2557 : f32 = u_xlat74;
            let x_2559 : f32 = u_xlat75;
            u_xlat74 = ((x_2556 * x_2557) + x_2559);
            let x_2562 : vec4<f32> = u_xlat14;
            let x_2563 : vec2<f32> = vec2<f32>(x_2562.x, x_2562.y);
            let x_2565 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2563.x, x_2563.y, x_2565);
            let x_2572 : vec3<f32> = txVec36;
            let x_2574 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2572.xy, x_2572.z);
            u_xlat75 = x_2574;
            let x_2576 : f32 = u_xlat16.z;
            let x_2577 : f32 = u_xlat75;
            let x_2579 : f32 = u_xlat74;
            u_xlat74 = ((x_2576 * x_2577) + x_2579);
            let x_2582 : vec4<f32> = u_xlat12;
            let x_2583 : vec2<f32> = vec2<f32>(x_2582.x, x_2582.y);
            let x_2585 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2583.x, x_2583.y, x_2585);
            let x_2592 : vec3<f32> = txVec37;
            let x_2594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2592.xy, x_2592.z);
            u_xlat75 = x_2594;
            let x_2596 : f32 = u_xlat16.w;
            let x_2597 : f32 = u_xlat75;
            let x_2599 : f32 = u_xlat74;
            u_xlat74 = ((x_2596 * x_2597) + x_2599);
            let x_2602 : vec4<f32> = u_xlat15;
            let x_2603 : vec2<f32> = vec2<f32>(x_2602.x, x_2602.y);
            let x_2605 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2603.x, x_2603.y, x_2605);
            let x_2612 : vec3<f32> = txVec38;
            let x_2614 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2612.xy, x_2612.z);
            u_xlat75 = x_2614;
            let x_2616 : f32 = u_xlat17.x;
            let x_2617 : f32 = u_xlat75;
            let x_2619 : f32 = u_xlat74;
            u_xlat74 = ((x_2616 * x_2617) + x_2619);
            let x_2622 : vec4<f32> = u_xlat15;
            let x_2623 : vec2<f32> = vec2<f32>(x_2622.z, x_2622.w);
            let x_2625 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2623.x, x_2623.y, x_2625);
            let x_2632 : vec3<f32> = txVec39;
            let x_2634 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2632.xy, x_2632.z);
            u_xlat75 = x_2634;
            let x_2636 : f32 = u_xlat17.y;
            let x_2637 : f32 = u_xlat75;
            let x_2639 : f32 = u_xlat74;
            u_xlat74 = ((x_2636 * x_2637) + x_2639);
            let x_2642 : vec4<f32> = u_xlat12;
            let x_2643 : vec2<f32> = vec2<f32>(x_2642.z, x_2642.w);
            let x_2645 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2643.x, x_2643.y, x_2645);
            let x_2652 : vec3<f32> = txVec40;
            let x_2654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2652.xy, x_2652.z);
            u_xlat75 = x_2654;
            let x_2656 : f32 = u_xlat17.z;
            let x_2657 : f32 = u_xlat75;
            let x_2659 : f32 = u_xlat74;
            u_xlat74 = ((x_2656 * x_2657) + x_2659);
            let x_2662 : vec4<f32> = u_xlat11;
            let x_2663 : vec2<f32> = vec2<f32>(x_2662.x, x_2662.y);
            let x_2665 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2663.x, x_2663.y, x_2665);
            let x_2672 : vec3<f32> = txVec41;
            let x_2674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2672.xy, x_2672.z);
            u_xlat75 = x_2674;
            let x_2676 : f32 = u_xlat17.w;
            let x_2677 : f32 = u_xlat75;
            let x_2679 : f32 = u_xlat74;
            u_xlat74 = ((x_2676 * x_2677) + x_2679);
            let x_2682 : vec4<f32> = u_xlat11;
            let x_2683 : vec2<f32> = vec2<f32>(x_2682.z, x_2682.w);
            let x_2685 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2683.x, x_2683.y, x_2685);
            let x_2692 : vec3<f32> = txVec42;
            let x_2694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2692.xy, x_2692.z);
            u_xlat75 = x_2694;
            let x_2696 : f32 = u_xlat51.x;
            let x_2697 : f32 = u_xlat75;
            let x_2699 : f32 = u_xlat74;
            u_xlat73 = ((x_2696 * x_2697) + x_2699);
          } else {
            let x_2702 : vec4<f32> = u_xlat8;
            let x_2705 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2702.x, x_2702.y) * vec2<f32>(x_2705.z, x_2705.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2709 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2709);
            let x_2711 : vec4<f32> = u_xlat8;
            let x_2714 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2717 : vec2<f32> = u_xlat51;
            let x_2719 : vec2<f32> = ((vec2<f32>(x_2711.x, x_2711.y) * vec2<f32>(x_2714.z, x_2714.w)) + -(x_2717));
            let x_2720 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2719.x, x_2719.y, x_2720.z, x_2720.w);
            let x_2722 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2722.x, x_2722.x, x_2722.y, x_2722.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2725 : vec4<f32> = u_xlat10;
            let x_2727 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2725.x, x_2725.x, x_2725.z, x_2725.z) * vec4<f32>(x_2727.x, x_2727.x, x_2727.z, x_2727.z));
            let x_2730 : vec4<f32> = u_xlat11;
            let x_2732 : vec2<f32> = (vec2<f32>(x_2730.y, x_2730.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2733 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2733.x, x_2732.x, x_2733.z, x_2732.y);
            let x_2735 : vec4<f32> = u_xlat11;
            let x_2738 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2735.x, x_2735.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2738.x, x_2738.y)));
            let x_2742 : vec4<f32> = u_xlat9;
            let x_2745 : vec2<f32> = (-(vec2<f32>(x_2742.x, x_2742.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2746 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2745.x, x_2746.y, x_2745.y, x_2746.w);
            let x_2748 : vec4<f32> = u_xlat9;
            let x_2750 : vec2<f32> = min(vec2<f32>(x_2748.x, x_2748.y), vec2<f32>(0.0f, 0.0f));
            let x_2751 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat11;
            let x_2756 : vec4<f32> = u_xlat11;
            let x_2759 : vec4<f32> = u_xlat10;
            let x_2761 : vec2<f32> = ((-(vec2<f32>(x_2753.x, x_2753.y)) * vec2<f32>(x_2756.x, x_2756.y)) + vec2<f32>(x_2759.x, x_2759.z));
            let x_2762 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2761.x, x_2762.y, x_2761.y, x_2762.w);
            let x_2764 : vec4<f32> = u_xlat9;
            let x_2766 : vec2<f32> = max(vec2<f32>(x_2764.x, x_2764.y), vec2<f32>(0.0f, 0.0f));
            let x_2767 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
            let x_2769 : vec4<f32> = u_xlat11;
            let x_2772 : vec4<f32> = u_xlat11;
            let x_2775 : vec4<f32> = u_xlat10;
            let x_2777 : vec2<f32> = ((-(vec2<f32>(x_2769.x, x_2769.y)) * vec2<f32>(x_2772.x, x_2772.y)) + vec2<f32>(x_2775.y, x_2775.w));
            let x_2778 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2778.x, x_2777.x, x_2778.z, x_2777.y);
            let x_2780 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2780 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2784 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2784 * 0.08163200318813323975f);
            let x_2787 : vec2<f32> = u_xlat55;
            let x_2789 : vec2<f32> = (vec2<f32>(x_2787.y, x_2787.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2790 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2789.x, x_2789.y, x_2790.z, x_2790.w);
            let x_2792 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2792.x, x_2792.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2796 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2796 * 0.08163200318813323975f);
            let x_2800 : f32 = u_xlat13.y;
            u_xlat11.x = x_2800;
            let x_2802 : vec4<f32> = u_xlat9;
            let x_2805 : vec2<f32> = ((vec2<f32>(x_2802.x, x_2802.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2806 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2806.x, x_2805.x, x_2806.z, x_2805.y);
            let x_2808 : vec4<f32> = u_xlat9;
            let x_2811 : vec2<f32> = ((vec2<f32>(x_2808.x, x_2808.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2812 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2811.x, x_2812.y, x_2811.y, x_2812.w);
            let x_2815 : f32 = u_xlat55.x;
            u_xlat10.y = x_2815;
            let x_2818 : f32 = u_xlat12.y;
            u_xlat10.w = x_2818;
            let x_2820 : vec4<f32> = u_xlat10;
            let x_2821 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2820 + x_2821);
            let x_2823 : vec4<f32> = u_xlat9;
            let x_2826 : vec2<f32> = ((vec2<f32>(x_2823.y, x_2823.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2827 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2827.x, x_2826.x, x_2827.z, x_2826.y);
            let x_2829 : vec4<f32> = u_xlat9;
            let x_2832 : vec2<f32> = ((vec2<f32>(x_2829.y, x_2829.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2833 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2832.x, x_2833.y, x_2832.y, x_2833.w);
            let x_2836 : f32 = u_xlat55.y;
            u_xlat12.y = x_2836;
            let x_2838 : vec4<f32> = u_xlat12;
            let x_2839 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2838 + x_2839);
            let x_2841 : vec4<f32> = u_xlat10;
            let x_2842 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2841 / x_2842);
            let x_2844 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2844 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2846 : vec4<f32> = u_xlat12;
            let x_2847 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2846 / x_2847);
            let x_2849 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2849 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2851 : vec4<f32> = u_xlat10;
            let x_2854 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2851.w, x_2851.x, x_2851.y, x_2851.z) * vec4<f32>(x_2854.x, x_2854.x, x_2854.x, x_2854.x));
            let x_2857 : vec4<f32> = u_xlat12;
            let x_2860 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2857.x, x_2857.w, x_2857.y, x_2857.z) * vec4<f32>(x_2860.y, x_2860.y, x_2860.y, x_2860.y));
            let x_2863 : vec4<f32> = u_xlat10;
            let x_2864 : vec3<f32> = vec3<f32>(x_2863.y, x_2863.z, x_2863.w);
            let x_2865 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2864.x, x_2865.y, x_2864.y, x_2864.z);
            let x_2868 : f32 = u_xlat12.x;
            u_xlat13.y = x_2868;
            let x_2870 : vec2<f32> = u_xlat51;
            let x_2873 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2876 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2870.x, x_2870.y, x_2870.x, x_2870.y) * vec4<f32>(x_2873.x, x_2873.y, x_2873.x, x_2873.y)) + vec4<f32>(x_2876.x, x_2876.y, x_2876.z, x_2876.y));
            let x_2879 : vec2<f32> = u_xlat51;
            let x_2881 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2884 : vec4<f32> = u_xlat13;
            let x_2886 : vec2<f32> = ((x_2879 * vec2<f32>(x_2881.x, x_2881.y)) + vec2<f32>(x_2884.w, x_2884.y));
            let x_2887 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2886.x, x_2886.y, x_2887.z, x_2887.w);
            let x_2890 : f32 = u_xlat13.y;
            u_xlat10.y = x_2890;
            let x_2893 : f32 = u_xlat12.z;
            u_xlat13.y = x_2893;
            let x_2895 : vec2<f32> = u_xlat51;
            let x_2898 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2901 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2895.x, x_2895.y, x_2895.x, x_2895.y) * vec4<f32>(x_2898.x, x_2898.y, x_2898.x, x_2898.y)) + vec4<f32>(x_2901.x, x_2901.y, x_2901.z, x_2901.y));
            let x_2905 : vec2<f32> = u_xlat51;
            let x_2907 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2910 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2905 * vec2<f32>(x_2907.x, x_2907.y)) + vec2<f32>(x_2910.w, x_2910.y));
            let x_2914 : f32 = u_xlat13.y;
            u_xlat10.z = x_2914;
            let x_2916 : vec2<f32> = u_xlat51;
            let x_2919 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2922 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2916.x, x_2916.y, x_2916.x, x_2916.y) * vec4<f32>(x_2919.x, x_2919.y, x_2919.x, x_2919.y)) + vec4<f32>(x_2922.x, x_2922.y, x_2922.x, x_2922.z));
            let x_2926 : f32 = u_xlat12.w;
            u_xlat13.y = x_2926;
            let x_2928 : vec2<f32> = u_xlat51;
            let x_2931 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y) * vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y)) + vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2934.y));
            let x_2938 : vec2<f32> = u_xlat51;
            let x_2940 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2938 * vec2<f32>(x_2940.x, x_2940.y)) + vec2<f32>(x_2943.w, x_2943.y));
            let x_2947 : f32 = u_xlat13.y;
            u_xlat10.w = x_2947;
            let x_2950 : vec2<f32> = u_xlat51;
            let x_2952 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2955 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2950 * vec2<f32>(x_2952.x, x_2952.y)) + vec2<f32>(x_2955.x, x_2955.w));
            let x_2958 : vec4<f32> = u_xlat13;
            let x_2959 : vec3<f32> = vec3<f32>(x_2958.x, x_2958.z, x_2958.w);
            let x_2960 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2959.x, x_2960.y, x_2959.y, x_2959.z);
            let x_2962 : vec2<f32> = u_xlat51;
            let x_2965 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2968 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2962.x, x_2962.y, x_2962.x, x_2962.y) * vec4<f32>(x_2965.x, x_2965.y, x_2965.x, x_2965.y)) + vec4<f32>(x_2968.x, x_2968.y, x_2968.z, x_2968.y));
            let x_2972 : vec2<f32> = u_xlat51;
            let x_2974 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2977 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2972 * vec2<f32>(x_2974.x, x_2974.y)) + vec2<f32>(x_2977.w, x_2977.y));
            let x_2981 : f32 = u_xlat10.x;
            u_xlat12.x = x_2981;
            let x_2983 : vec2<f32> = u_xlat51;
            let x_2985 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2988 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2983 * vec2<f32>(x_2985.x, x_2985.y)) + vec2<f32>(x_2988.x, x_2988.y));
            let x_2992 : vec4<f32> = u_xlat9;
            let x_2994 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2992.x, x_2992.x, x_2992.x, x_2992.x) * x_2994);
            let x_2997 : vec4<f32> = u_xlat9;
            let x_2999 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_2997.y, x_2997.y, x_2997.y, x_2997.y) * x_2999);
            let x_3002 : vec4<f32> = u_xlat9;
            let x_3004 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_3002.z, x_3002.z, x_3002.z, x_3002.z) * x_3004);
            let x_3006 : vec4<f32> = u_xlat9;
            let x_3008 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_3006.w, x_3006.w, x_3006.w, x_3006.w) * x_3008);
            let x_3011 : vec4<f32> = u_xlat14;
            let x_3012 : vec2<f32> = vec2<f32>(x_3011.x, x_3011.y);
            let x_3014 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
            let x_3021 : vec3<f32> = txVec43;
            let x_3023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
            u_xlat75 = x_3023;
            let x_3025 : vec4<f32> = u_xlat14;
            let x_3026 : vec2<f32> = vec2<f32>(x_3025.z, x_3025.w);
            let x_3028 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3026.x, x_3026.y, x_3028);
            let x_3036 : vec3<f32> = txVec44;
            let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
            u_xlat76 = x_3038;
            let x_3039 : f32 = u_xlat76;
            let x_3041 : f32 = u_xlat20.y;
            u_xlat76 = (x_3039 * x_3041);
            let x_3044 : f32 = u_xlat20.x;
            let x_3045 : f32 = u_xlat75;
            let x_3047 : f32 = u_xlat76;
            u_xlat75 = ((x_3044 * x_3045) + x_3047);
            let x_3050 : vec4<f32> = u_xlat15;
            let x_3051 : vec2<f32> = vec2<f32>(x_3050.x, x_3050.y);
            let x_3053 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec45;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat76 = x_3062;
            let x_3064 : f32 = u_xlat20.z;
            let x_3065 : f32 = u_xlat76;
            let x_3067 : f32 = u_xlat75;
            u_xlat75 = ((x_3064 * x_3065) + x_3067);
            let x_3070 : vec4<f32> = u_xlat17;
            let x_3071 : vec2<f32> = vec2<f32>(x_3070.x, x_3070.y);
            let x_3073 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
            let x_3080 : vec3<f32> = txVec46;
            let x_3082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
            u_xlat76 = x_3082;
            let x_3084 : f32 = u_xlat20.w;
            let x_3085 : f32 = u_xlat76;
            let x_3087 : f32 = u_xlat75;
            u_xlat75 = ((x_3084 * x_3085) + x_3087);
            let x_3090 : vec4<f32> = u_xlat16;
            let x_3091 : vec2<f32> = vec2<f32>(x_3090.x, x_3090.y);
            let x_3093 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3091.x, x_3091.y, x_3093);
            let x_3100 : vec3<f32> = txVec47;
            let x_3102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
            u_xlat76 = x_3102;
            let x_3104 : f32 = u_xlat21.x;
            let x_3105 : f32 = u_xlat76;
            let x_3107 : f32 = u_xlat75;
            u_xlat75 = ((x_3104 * x_3105) + x_3107);
            let x_3110 : vec4<f32> = u_xlat16;
            let x_3111 : vec2<f32> = vec2<f32>(x_3110.z, x_3110.w);
            let x_3113 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3111.x, x_3111.y, x_3113);
            let x_3120 : vec3<f32> = txVec48;
            let x_3122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3120.xy, x_3120.z);
            u_xlat76 = x_3122;
            let x_3124 : f32 = u_xlat21.y;
            let x_3125 : f32 = u_xlat76;
            let x_3127 : f32 = u_xlat75;
            u_xlat75 = ((x_3124 * x_3125) + x_3127);
            let x_3130 : vec2<f32> = u_xlat61;
            let x_3132 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3139 : vec3<f32> = txVec49;
            let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
            u_xlat76 = x_3141;
            let x_3143 : f32 = u_xlat21.z;
            let x_3144 : f32 = u_xlat76;
            let x_3146 : f32 = u_xlat75;
            u_xlat75 = ((x_3143 * x_3144) + x_3146);
            let x_3149 : vec4<f32> = u_xlat17;
            let x_3150 : vec2<f32> = vec2<f32>(x_3149.z, x_3149.w);
            let x_3152 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3150.x, x_3150.y, x_3152);
            let x_3159 : vec3<f32> = txVec50;
            let x_3161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3159.xy, x_3159.z);
            u_xlat76 = x_3161;
            let x_3163 : f32 = u_xlat21.w;
            let x_3164 : f32 = u_xlat76;
            let x_3166 : f32 = u_xlat75;
            u_xlat75 = ((x_3163 * x_3164) + x_3166);
            let x_3169 : vec4<f32> = u_xlat18;
            let x_3170 : vec2<f32> = vec2<f32>(x_3169.x, x_3169.y);
            let x_3172 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec51;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat76 = x_3181;
            let x_3183 : f32 = u_xlat22.x;
            let x_3184 : f32 = u_xlat76;
            let x_3186 : f32 = u_xlat75;
            u_xlat75 = ((x_3183 * x_3184) + x_3186);
            let x_3189 : vec4<f32> = u_xlat18;
            let x_3190 : vec2<f32> = vec2<f32>(x_3189.z, x_3189.w);
            let x_3192 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3190.x, x_3190.y, x_3192);
            let x_3199 : vec3<f32> = txVec52;
            let x_3201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3199.xy, x_3199.z);
            u_xlat76 = x_3201;
            let x_3203 : f32 = u_xlat22.y;
            let x_3204 : f32 = u_xlat76;
            let x_3206 : f32 = u_xlat75;
            u_xlat75 = ((x_3203 * x_3204) + x_3206);
            let x_3209 : vec2<f32> = u_xlat33;
            let x_3211 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
            let x_3218 : vec3<f32> = txVec53;
            let x_3220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
            u_xlat76 = x_3220;
            let x_3222 : f32 = u_xlat22.z;
            let x_3223 : f32 = u_xlat76;
            let x_3225 : f32 = u_xlat75;
            u_xlat75 = ((x_3222 * x_3223) + x_3225);
            let x_3228 : vec2<f32> = u_xlat19;
            let x_3230 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3228.x, x_3228.y, x_3230);
            let x_3237 : vec3<f32> = txVec54;
            let x_3239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3237.xy, x_3237.z);
            u_xlat76 = x_3239;
            let x_3241 : f32 = u_xlat22.w;
            let x_3242 : f32 = u_xlat76;
            let x_3244 : f32 = u_xlat75;
            u_xlat75 = ((x_3241 * x_3242) + x_3244);
            let x_3247 : vec4<f32> = u_xlat13;
            let x_3248 : vec2<f32> = vec2<f32>(x_3247.x, x_3247.y);
            let x_3250 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
            let x_3257 : vec3<f32> = txVec55;
            let x_3259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
            u_xlat76 = x_3259;
            let x_3261 : f32 = u_xlat9.x;
            let x_3262 : f32 = u_xlat76;
            let x_3264 : f32 = u_xlat75;
            u_xlat75 = ((x_3261 * x_3262) + x_3264);
            let x_3267 : vec4<f32> = u_xlat13;
            let x_3268 : vec2<f32> = vec2<f32>(x_3267.z, x_3267.w);
            let x_3270 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec56;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat76 = x_3279;
            let x_3281 : f32 = u_xlat9.y;
            let x_3282 : f32 = u_xlat76;
            let x_3284 : f32 = u_xlat75;
            u_xlat75 = ((x_3281 * x_3282) + x_3284);
            let x_3287 : vec2<f32> = u_xlat58;
            let x_3289 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3287.x, x_3287.y, x_3289);
            let x_3296 : vec3<f32> = txVec57;
            let x_3298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3296.xy, x_3296.z);
            u_xlat76 = x_3298;
            let x_3300 : f32 = u_xlat9.z;
            let x_3301 : f32 = u_xlat76;
            let x_3303 : f32 = u_xlat75;
            u_xlat75 = ((x_3300 * x_3301) + x_3303);
            let x_3306 : vec2<f32> = u_xlat51;
            let x_3308 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
            let x_3315 : vec3<f32> = txVec58;
            let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
            u_xlat51.x = x_3317;
            let x_3320 : f32 = u_xlat9.w;
            let x_3322 : f32 = u_xlat51.x;
            let x_3324 : f32 = u_xlat75;
            u_xlat73 = ((x_3320 * x_3322) + x_3324);
          }
        }
      } else {
        let x_3328 : vec4<f32> = u_xlat8;
        let x_3329 : vec2<f32> = vec2<f32>(x_3328.x, x_3328.y);
        let x_3331 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
        let x_3338 : vec3<f32> = txVec59;
        let x_3340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
        u_xlat73 = x_3340;
      }
      let x_3341 : i32 = u_xlati71;
      let x_3343 : f32 = x_162.x_AdditionalShadowParams[x_3341].x;
      u_xlat51.x = (1.0f + -(x_3343));
      let x_3347 : f32 = u_xlat73;
      let x_3348 : i32 = u_xlati71;
      let x_3350 : f32 = x_162.x_AdditionalShadowParams[x_3348].x;
      let x_3353 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3347 * x_3350) + x_3353);
      let x_3356 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3356);
      let x_3360 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3360 >= 1.0f);
      let x_3362 : bool = u_xlatb74;
      let x_3363 : bool = u_xlatb51;
      u_xlatb51 = (x_3362 | x_3363);
      let x_3365 : bool = u_xlatb51;
      let x_3366 : f32 = u_xlat73;
      u_xlat73 = select(x_3366, 1.0f, x_3365);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3369 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3369) + 1.0f);
    let x_3373 : f32 = u_xlat69;
    let x_3375 : f32 = u_xlat51.x;
    let x_3377 : f32 = u_xlat73;
    u_xlat73 = ((x_3373 * x_3375) + x_3377);
    let x_3380 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3380 & 31i)));
    let x_3384 : i32 = u_xlati51;
    let x_3387 : f32 = x_1700.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3384) & bitcast<u32>(x_3387)));
    let x_3391 : i32 = u_xlati51;
    if ((x_3391 != 0i)) {
      let x_3395 : i32 = u_xlati71;
      let x_3397 : f32 = x_1700.x_AdditionalLightsLightTypes[x_3395].el;
      u_xlati51 = i32(x_3397);
      let x_3400 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3400 != 0i));
      let x_3404 : i32 = u_xlati71;
      u_xlati75 = (x_3404 << bitcast<u32>(2i));
      let x_3406 : i32 = u_xlati74;
      if ((x_3406 != 0i)) {
        let x_3410 : vec4<f32> = vs_TEXCOORD2;
        let x_3412 : i32 = u_xlati75;
        let x_3415 : i32 = u_xlati75;
        let x_3419 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3412 + 1i) / 4i)][((x_3415 + 1i) % 4i)];
        let x_3421 : vec3<f32> = (vec3<f32>(x_3410.y, x_3410.y, x_3410.y) * vec3<f32>(x_3419.x, x_3419.y, x_3419.w));
        let x_3422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3421.x, x_3421.y, x_3421.z, x_3422.w);
        let x_3424 : i32 = u_xlati75;
        let x_3426 : i32 = u_xlati75;
        let x_3429 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[(x_3424 / 4i)][(x_3426 % 4i)];
        let x_3431 : vec4<f32> = vs_TEXCOORD2;
        let x_3434 : vec4<f32> = u_xlat8;
        let x_3436 : vec3<f32> = ((vec3<f32>(x_3429.x, x_3429.y, x_3429.w) * vec3<f32>(x_3431.x, x_3431.x, x_3431.x)) + vec3<f32>(x_3434.x, x_3434.y, x_3434.z));
        let x_3437 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3436.x, x_3436.y, x_3436.z, x_3437.w);
        let x_3439 : i32 = u_xlati75;
        let x_3442 : i32 = u_xlati75;
        let x_3446 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3439 + 2i) / 4i)][((x_3442 + 2i) % 4i)];
        let x_3448 : vec4<f32> = vs_TEXCOORD2;
        let x_3451 : vec4<f32> = u_xlat8;
        let x_3453 : vec3<f32> = ((vec3<f32>(x_3446.x, x_3446.y, x_3446.w) * vec3<f32>(x_3448.z, x_3448.z, x_3448.z)) + vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
        let x_3454 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3453.x, x_3453.y, x_3453.z, x_3454.w);
        let x_3456 : vec4<f32> = u_xlat8;
        let x_3458 : i32 = u_xlati75;
        let x_3461 : i32 = u_xlati75;
        let x_3465 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3458 + 3i) / 4i)][((x_3461 + 3i) % 4i)];
        let x_3467 : vec3<f32> = (vec3<f32>(x_3456.x, x_3456.y, x_3456.z) + vec3<f32>(x_3465.x, x_3465.y, x_3465.w));
        let x_3468 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3467.x, x_3467.y, x_3467.z, x_3468.w);
        let x_3470 : vec4<f32> = u_xlat8;
        let x_3472 : vec4<f32> = u_xlat8;
        let x_3474 : vec2<f32> = (vec2<f32>(x_3470.x, x_3470.y) / vec2<f32>(x_3472.z, x_3472.z));
        let x_3475 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3474.x, x_3474.y, x_3475.z, x_3475.w);
        let x_3477 : vec4<f32> = u_xlat8;
        let x_3480 : vec2<f32> = ((vec2<f32>(x_3477.x, x_3477.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3481 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3480.x, x_3480.y, x_3481.z, x_3481.w);
        let x_3483 : vec4<f32> = u_xlat8;
        let x_3487 : vec2<f32> = clamp(vec2<f32>(x_3483.x, x_3483.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3488 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3487.x, x_3487.y, x_3488.z, x_3488.w);
        let x_3490 : i32 = u_xlati71;
        let x_3492 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3490];
        let x_3494 : vec4<f32> = u_xlat8;
        let x_3497 : i32 = u_xlati71;
        let x_3499 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3497];
        let x_3501 : vec2<f32> = ((vec2<f32>(x_3492.x, x_3492.y) * vec2<f32>(x_3494.x, x_3494.y)) + vec2<f32>(x_3499.z, x_3499.w));
        let x_3502 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3501.x, x_3501.y, x_3502.z, x_3502.w);
      } else {
        let x_3505 : i32 = u_xlati51;
        u_xlatb51 = (x_3505 == 1i);
        let x_3507 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3507);
        let x_3509 : i32 = u_xlati51;
        if ((x_3509 != 0i)) {
          let x_3513 : vec4<f32> = vs_TEXCOORD2;
          let x_3515 : i32 = u_xlati75;
          let x_3518 : i32 = u_xlati75;
          let x_3522 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3515 + 1i) / 4i)][((x_3518 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3513.y, x_3513.y) * vec2<f32>(x_3522.x, x_3522.y));
          let x_3525 : i32 = u_xlati75;
          let x_3527 : i32 = u_xlati75;
          let x_3530 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[(x_3525 / 4i)][(x_3527 % 4i)];
          let x_3532 : vec4<f32> = vs_TEXCOORD2;
          let x_3535 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3530.x, x_3530.y) * vec2<f32>(x_3532.x, x_3532.x)) + x_3535);
          let x_3537 : i32 = u_xlati75;
          let x_3540 : i32 = u_xlati75;
          let x_3544 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3537 + 2i) / 4i)][((x_3540 + 2i) % 4i)];
          let x_3546 : vec4<f32> = vs_TEXCOORD2;
          let x_3549 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3544.x, x_3544.y) * vec2<f32>(x_3546.z, x_3546.z)) + x_3549);
          let x_3551 : vec2<f32> = u_xlat51;
          let x_3552 : i32 = u_xlati75;
          let x_3555 : i32 = u_xlati75;
          let x_3559 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3552 + 3i) / 4i)][((x_3555 + 3i) % 4i)];
          u_xlat51 = (x_3551 + vec2<f32>(x_3559.x, x_3559.y));
          let x_3562 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3562 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3565 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3565);
          let x_3567 : i32 = u_xlati71;
          let x_3569 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3567];
          let x_3571 : vec2<f32> = u_xlat51;
          let x_3573 : i32 = u_xlati71;
          let x_3575 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3573];
          let x_3577 : vec2<f32> = ((vec2<f32>(x_3569.x, x_3569.y) * x_3571) + vec2<f32>(x_3575.z, x_3575.w));
          let x_3578 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3577.x, x_3577.y, x_3578.z, x_3578.w);
        } else {
          let x_3581 : vec4<f32> = vs_TEXCOORD2;
          let x_3583 : i32 = u_xlati75;
          let x_3586 : i32 = u_xlati75;
          let x_3590 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3583 + 1i) / 4i)][((x_3586 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3581.y, x_3581.y, x_3581.y, x_3581.y) * x_3590);
          let x_3592 : i32 = u_xlati75;
          let x_3594 : i32 = u_xlati75;
          let x_3597 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[(x_3592 / 4i)][(x_3594 % 4i)];
          let x_3598 : vec4<f32> = vs_TEXCOORD2;
          let x_3601 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3597 * vec4<f32>(x_3598.x, x_3598.x, x_3598.x, x_3598.x)) + x_3601);
          let x_3603 : i32 = u_xlati75;
          let x_3606 : i32 = u_xlati75;
          let x_3610 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3603 + 2i) / 4i)][((x_3606 + 2i) % 4i)];
          let x_3611 : vec4<f32> = vs_TEXCOORD2;
          let x_3614 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3610 * vec4<f32>(x_3611.z, x_3611.z, x_3611.z, x_3611.z)) + x_3614);
          let x_3616 : vec4<f32> = u_xlat9;
          let x_3617 : i32 = u_xlati75;
          let x_3620 : i32 = u_xlati75;
          let x_3624 : vec4<f32> = x_1700.x_AdditionalLightsWorldToLights[((x_3617 + 3i) / 4i)][((x_3620 + 3i) % 4i)];
          u_xlat9 = (x_3616 + x_3624);
          let x_3626 : vec4<f32> = u_xlat9;
          let x_3628 : vec4<f32> = u_xlat9;
          let x_3630 : vec3<f32> = (vec3<f32>(x_3626.x, x_3626.y, x_3626.z) / vec3<f32>(x_3628.w, x_3628.w, x_3628.w));
          let x_3631 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3630.x, x_3630.y, x_3630.z, x_3631.w);
          let x_3633 : vec4<f32> = u_xlat9;
          let x_3635 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3633.x, x_3633.y, x_3633.z), vec3<f32>(x_3635.x, x_3635.y, x_3635.z));
          let x_3640 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3640);
          let x_3643 : vec2<f32> = u_xlat51;
          let x_3645 : vec4<f32> = u_xlat9;
          let x_3647 : vec3<f32> = (vec3<f32>(x_3643.x, x_3643.x, x_3643.x) * vec3<f32>(x_3645.x, x_3645.y, x_3645.z));
          let x_3648 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3647.x, x_3647.y, x_3647.z, x_3648.w);
          let x_3650 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3650.x, x_3650.y, x_3650.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3657 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3657, 0.00000099999999747524f);
          let x_3662 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3662);
          let x_3665 : vec2<f32> = u_xlat51;
          let x_3667 : vec4<f32> = u_xlat9;
          let x_3669 : vec3<f32> = (vec3<f32>(x_3665.x, x_3665.x, x_3665.x) * vec3<f32>(x_3667.z, x_3667.x, x_3667.y));
          let x_3670 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3669.x, x_3669.y, x_3669.z, x_3670.w);
          let x_3673 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3673);
          let x_3677 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3677, 0.0f, 1.0f);
          let x_3681 : vec4<f32> = u_xlat10;
          let x_3683 : vec4<bool> = (vec4<f32>(x_3681.y, x_3681.z, x_3681.y, x_3681.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3683.x, x_3683.y);
          let x_3686 : bool = u_xlatb54.x;
          if (x_3686) {
            let x_3691 : f32 = u_xlat10.x;
            x_3687 = x_3691;
          } else {
            let x_3694 : f32 = u_xlat10.x;
            x_3687 = -(x_3694);
          }
          let x_3696 : f32 = x_3687;
          u_xlat54.x = x_3696;
          let x_3699 : bool = u_xlatb54.y;
          if (x_3699) {
            let x_3704 : f32 = u_xlat10.x;
            x_3700 = x_3704;
          } else {
            let x_3707 : f32 = u_xlat10.x;
            x_3700 = -(x_3707);
          }
          let x_3709 : f32 = x_3700;
          u_xlat54.y = x_3709;
          let x_3711 : vec4<f32> = u_xlat9;
          let x_3713 : vec2<f32> = u_xlat51;
          let x_3716 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3711.x, x_3711.y) * vec2<f32>(x_3713.x, x_3713.x)) + x_3716);
          let x_3718 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3718 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3721 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3721, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3725 : i32 = u_xlati71;
          let x_3727 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3725];
          let x_3729 : vec2<f32> = u_xlat51;
          let x_3731 : i32 = u_xlati71;
          let x_3733 : vec4<f32> = x_1700.x_AdditionalLightsCookieAtlasUVRects[x_3731];
          let x_3735 : vec2<f32> = ((vec2<f32>(x_3727.x, x_3727.y) * x_3729) + vec2<f32>(x_3733.z, x_3733.w));
          let x_3736 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3735.x, x_3735.y, x_3736.z, x_3736.w);
        }
      }
      let x_3743 : vec4<f32> = u_xlat8;
      let x_3745 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3743.x, x_3743.y), 0.0f);
      u_xlat8 = x_3745;
      let x_3747 : bool = u_xlatb5.y;
      if (x_3747) {
        let x_3752 : f32 = u_xlat8.w;
        x_3748 = x_3752;
      } else {
        let x_3755 : f32 = u_xlat8.x;
        x_3748 = x_3755;
      }
      let x_3756 : f32 = x_3748;
      u_xlat51.x = x_3756;
      let x_3759 : bool = u_xlatb5.x;
      if (x_3759) {
        let x_3763 : vec4<f32> = u_xlat8;
        x_3760 = vec3<f32>(x_3763.x, x_3763.y, x_3763.z);
      } else {
        let x_3766 : vec2<f32> = u_xlat51;
        x_3760 = vec3<f32>(x_3766.x, x_3766.x, x_3766.x);
      }
      let x_3768 : vec3<f32> = x_3760;
      let x_3769 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3768.x, x_3768.y, x_3768.z, x_3769.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3775 : vec4<f32> = u_xlat8;
    let x_3777 : i32 = u_xlati71;
    let x_3779 : vec4<f32> = x_1949.x_AdditionalLightsColor[x_3777];
    let x_3781 : vec3<f32> = (vec3<f32>(x_3775.x, x_3775.y, x_3775.z) * vec3<f32>(x_3779.x, x_3779.y, x_3779.z));
    let x_3782 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3781.x, x_3781.y, x_3781.z, x_3782.w);
    let x_3784 : f32 = u_xlat72;
    let x_3785 : f32 = u_xlat73;
    u_xlat71 = (x_3784 * x_3785);
    let x_3787 : f32 = u_xlat71;
    let x_3789 : vec4<f32> = u_xlat8;
    let x_3791 : vec3<f32> = (vec3<f32>(x_3787, x_3787, x_3787) * vec3<f32>(x_3789.x, x_3789.y, x_3789.z));
    let x_3792 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3791.x, x_3791.y, x_3791.z, x_3792.w);
    let x_3794 : vec3<f32> = u_xlat2;
    let x_3795 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(x_3794, vec3<f32>(x_3795.x, x_3795.y, x_3795.z));
    let x_3798 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3798, 0.0f, 1.0f);
    let x_3800 : f32 = u_xlat71;
    let x_3802 : vec4<f32> = u_xlat8;
    let x_3804 : vec3<f32> = (vec3<f32>(x_3800, x_3800, x_3800) * vec3<f32>(x_3802.x, x_3802.y, x_3802.z));
    let x_3805 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3804.x, x_3804.y, x_3804.z, x_3805.w);
    let x_3807 : vec4<f32> = u_xlat7;
    let x_3809 : vec4<f32> = u_xlat1;
    let x_3812 : vec4<f32> = u_xlat6;
    let x_3814 : vec3<f32> = ((vec3<f32>(x_3807.x, x_3807.y, x_3807.z) * vec3<f32>(x_3809.x, x_3809.y, x_3809.z)) + vec3<f32>(x_3812.x, x_3812.y, x_3812.z));
    let x_3815 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3814.x, x_3814.y, x_3814.z, x_3815.w);

    continuing {
      let x_3817 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3817 + bitcast<u32>(1i));
    }
  }
  let x_3819 : vec4<f32> = u_xlat4;
  let x_3821 : vec4<f32> = u_xlat1;
  let x_3824 : vec4<f32> = u_xlat3;
  let x_3826 : vec3<f32> = ((vec3<f32>(x_3819.x, x_3819.y, x_3819.z) * vec3<f32>(x_3821.x, x_3821.y, x_3821.z)) + vec3<f32>(x_3824.x, x_3824.y, x_3824.z));
  let x_3827 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3826.x, x_3826.y, x_3826.z, x_3827.w);
  let x_3831 : vec4<f32> = u_xlat6;
  let x_3833 : vec4<f32> = u_xlat1;
  let x_3835 : vec3<f32> = (vec3<f32>(x_3831.x, x_3831.y, x_3831.z) + vec3<f32>(x_3833.x, x_3833.y, x_3833.z));
  let x_3836 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3835.x, x_3835.y, x_3835.z, x_3836.w);
  let x_3838 : bool = u_xlatb46;
  let x_3839 : f32 = u_xlat23;
  SV_Target0.w = select(1.0f, x_3839, x_3838);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


