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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_175 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(1) @binding(2) var<uniform> x_414 : UnityPerDraw;

var<private> u_xlatb69 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb70 : bool;

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

var<private> u_xlat72 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb71 : bool;

@group(1) @binding(5) var<uniform> x_1765 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu69 : u32;

var<private> u_xlatu72 : u32;

var<private> u_xlati73 : i32;

var<private> u_xlati72 : i32;

@group(1) @binding(1) var<uniform> x_2005 : AdditionalLights;

var<private> u_xlat73 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb74 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat75 : f32;

var<private> u_xlat74 : f32;

var<private> u_xlatb51 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlatb75 : bool;

var<private> u_xlati74 : i32;

var<private> u_xlati75 : i32;

var<private> u_xlati76 : i32;

var<private> u_xlatb54 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu71 : u32;

var<private> u_xlatb72 : bool;

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
  var x_1848 : f32;
  var x_1859 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2153 : f32;
  var x_2163 : f32;
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
  var x_3432 : f32;
  var x_3753 : f32;
  var x_3766 : f32;
  var x_3814 : f32;
  var x_3825 : vec3<f32>;
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
  u_xlat23 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat46 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat69 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat69;
  let x_101 : f32 = u_xlat46;
  u_xlat46 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat46;
  u_xlat46 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat23;
  let x_108 : f32 = u_xlat46;
  u_xlat23 = (x_107 / x_108);
  let x_110 : f32 = u_xlat23;
  u_xlat23 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat23;
  u_xlat23 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb46;
  if (x_120) {
    let x_124 : f32 = u_xlat23;
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
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  let x_160 : vec3<f32> = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_178 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres0;
  let x_181 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec4<f32> = vs_TEXCOORD2;
  let x_189 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres1;
  let x_192 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = vs_TEXCOORD2;
  let x_200 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres2;
  let x_203 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec4<f32> = vs_TEXCOORD2;
  let x_210 : vec4<f32> = x_175.x_CascadeShadowSplitSpheres3;
  let x_213 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat3;
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_222 : vec4<f32> = u_xlat4;
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_222.x, x_222.y, x_222.z), vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_229 : vec4<f32> = u_xlat5;
  let x_231 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_229.x, x_229.y, x_229.z), vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_236 : vec4<f32> = u_xlat6;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_236.x, x_236.y, x_236.z), vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_245 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = x_175.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_245 < x_248);
  let x_251 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_251);
  let x_255 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_255);
  let x_259 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_259);
  let x_263 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_263);
  let x_267 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_267);
  let x_273 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_273);
  let x_277 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_277);
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = u_xlat4;
  let x_284 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + vec3<f32>(x_282.y, x_282.z, x_282.w));
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat3;
  let x_290 : vec3<f32> = max(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_291.x, x_290.x, x_290.y, x_290.z);
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_293, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_301 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_301) + 4.0f);
  let x_308 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_308);
  let x_312 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_312) << bitcast<u32>(2i));
  let x_315 : vec4<f32> = vs_TEXCOORD2;
  let x_317 : i32 = u_xlati0;
  let x_320 : i32 = u_xlati0;
  let x_324 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_317 + 1i) / 4i)][((x_320 + 1i) % 4i)];
  let x_326 : vec3<f32> = (vec3<f32>(x_315.y, x_315.y, x_315.y) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : i32 = u_xlati0;
  let x_331 : i32 = u_xlati0;
  let x_334 : vec4<f32> = x_175.x_MainLightWorldToShadow[(x_329 / 4i)][(x_331 % 4i)];
  let x_336 : vec4<f32> = vs_TEXCOORD2;
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.x, x_336.x, x_336.x)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : i32 = u_xlati0;
  let x_347 : i32 = u_xlati0;
  let x_351 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_344 + 2i) / 4i)][((x_347 + 2i) % 4i)];
  let x_353 : vec4<f32> = vs_TEXCOORD2;
  let x_356 : vec4<f32> = u_xlat3;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.z, x_353.z, x_353.z)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat3;
  let x_363 : i32 = u_xlati0;
  let x_366 : i32 = u_xlati0;
  let x_370 : vec4<f32> = x_175.x_MainLightWorldToShadow[((x_363 + 3i) / 4i)][((x_366 + 3i) % 4i)];
  let x_372 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = hlslcc_FragCoord.w;
  let x_378 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_376 * x_378);
  let x_382 : f32 = u_xlat0.x;
  let x_385 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_382 / x_385);
  let x_389 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_389) + 1.0f);
  let x_394 : f32 = u_xlat0.x;
  let x_396 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_394 * x_396);
  let x_400 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_400, 0.0f);
  let x_404 : f32 = u_xlat0.x;
  let x_407 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_404 * x_407);
  u_xlat2.w = 1.0f;
  let x_417 : vec4<f32> = x_414.unity_SHAr;
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_417, x_418);
  let x_423 : vec4<f32> = x_414.unity_SHAg;
  let x_424 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_423, x_424);
  let x_429 : vec4<f32> = x_414.unity_SHAb;
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_429, x_430);
  let x_433 : vec4<f32> = u_xlat2;
  let x_435 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_433.y, x_433.z, x_433.z, x_433.x) * vec4<f32>(x_435.x, x_435.y, x_435.z, x_435.z));
  let x_440 : vec4<f32> = x_414.unity_SHBr;
  let x_441 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_440, x_441);
  let x_446 : vec4<f32> = x_414.unity_SHBg;
  let x_447 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_446, x_447);
  let x_452 : vec4<f32> = x_414.unity_SHBb;
  let x_453 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_452, x_453);
  let x_457 : f32 = u_xlat2.y;
  let x_459 : f32 = u_xlat2.y;
  u_xlat69 = (x_457 * x_459);
  let x_462 : f32 = u_xlat2.x;
  let x_464 : f32 = u_xlat2.x;
  let x_466 : f32 = u_xlat69;
  u_xlat69 = ((x_462 * x_464) + -(x_466));
  let x_471 : vec4<f32> = x_414.unity_SHC;
  let x_473 : f32 = u_xlat69;
  let x_476 : vec4<f32> = u_xlat6;
  let x_478 : vec3<f32> = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(x_473, x_473, x_473)) + vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec4<f32> = u_xlat5;
  let x_485 : vec3<f32> = (vec3<f32>(x_481.x, x_481.y, x_481.z) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat4;
  let x_490 : vec3<f32> = max(vec3<f32>(x_488.x, x_488.y, x_488.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_491 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_496 : f32 = x_175.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_496);
  let x_498 : bool = u_xlatb69;
  if (x_498) {
    let x_502 : f32 = x_175.x_MainLightShadowParams.y;
    u_xlatb69 = (x_502 == 1.0f);
    let x_504 : bool = u_xlatb69;
    if (x_504) {
      let x_507 : vec4<f32> = u_xlat3;
      let x_510 : vec4<f32> = x_175.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_507.x, x_507.y, x_507.x, x_507.y) + x_510);
      let x_514 : vec4<f32> = u_xlat5;
      let x_515 : vec2<f32> = vec2<f32>(x_514.x, x_514.y);
      let x_517 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_515.x, x_515.y, x_517);
      let x_529 : vec3<f32> = txVec0;
      let x_531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_529.xy, x_529.z);
      u_xlat6.x = x_531;
      let x_534 : vec4<f32> = u_xlat5;
      let x_535 : vec2<f32> = vec2<f32>(x_534.z, x_534.w);
      let x_537 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_535.x, x_535.y, x_537);
      let x_544 : vec3<f32> = txVec1;
      let x_546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_544.xy, x_544.z);
      u_xlat6.y = x_546;
      let x_548 : vec4<f32> = u_xlat3;
      let x_551 : vec4<f32> = x_175.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y) + x_551);
      let x_554 : vec4<f32> = u_xlat5;
      let x_555 : vec2<f32> = vec2<f32>(x_554.x, x_554.y);
      let x_557 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_555.x, x_555.y, x_557);
      let x_564 : vec3<f32> = txVec2;
      let x_566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_564.xy, x_564.z);
      u_xlat6.z = x_566;
      let x_569 : vec4<f32> = u_xlat5;
      let x_570 : vec2<f32> = vec2<f32>(x_569.z, x_569.w);
      let x_572 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_570.x, x_570.y, x_572);
      let x_579 : vec3<f32> = txVec3;
      let x_581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_579.xy, x_579.z);
      u_xlat6.w = x_581;
      let x_583 : vec4<f32> = u_xlat6;
      u_xlat69 = dot(x_583, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_590 : f32 = x_175.x_MainLightShadowParams.y;
      u_xlatb70 = (x_590 == 2.0f);
      let x_592 : bool = u_xlatb70;
      if (x_592) {
        let x_595 : vec4<f32> = u_xlat3;
        let x_599 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_603 : vec2<f32> = ((vec2<f32>(x_595.x, x_595.y) * vec2<f32>(x_599.z, x_599.w)) + vec2<f32>(0.5f, 0.5f));
        let x_604 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat5;
        let x_608 : vec2<f32> = floor(vec2<f32>(x_606.x, x_606.y));
        let x_609 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_613 : vec4<f32> = u_xlat3;
        let x_616 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_616.z, x_616.w)) + -(vec2<f32>(x_619.x, x_619.y)));
        let x_623 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_623.x, x_623.x, x_623.y, x_623.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_628 : vec4<f32> = u_xlat6;
        let x_630 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_628.x, x_628.x, x_628.z, x_628.z) * vec4<f32>(x_630.x, x_630.x, x_630.z, x_630.z));
        let x_633 : vec4<f32> = u_xlat7;
        let x_637 : vec2<f32> = (vec2<f32>(x_633.y, x_633.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_638 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_637.x, x_638.y, x_637.y, x_638.w);
        let x_640 : vec4<f32> = u_xlat7;
        let x_643 : vec2<f32> = u_xlat51;
        let x_645 : vec2<f32> = ((vec2<f32>(x_640.x, x_640.z) * vec2<f32>(0.5f, 0.5f)) + -(x_643));
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_649 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_649) + vec2<f32>(1.0f, 1.0f));
        let x_654 : vec2<f32> = u_xlat51;
        let x_656 : vec2<f32> = min(x_654, vec2<f32>(0.0f, 0.0f));
        let x_657 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
        let x_659 : vec4<f32> = u_xlat8;
        let x_662 : vec4<f32> = u_xlat8;
        let x_665 : vec2<f32> = u_xlat53;
        let x_666 : vec2<f32> = ((-(vec2<f32>(x_659.x, x_659.y)) * vec2<f32>(x_662.x, x_662.y)) + x_665);
        let x_667 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_669 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_669, vec2<f32>(0.0f, 0.0f));
        let x_671 : vec2<f32> = u_xlat51;
        let x_673 : vec2<f32> = u_xlat51;
        let x_675 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_671) * x_673) + vec2<f32>(x_675.y, x_675.w));
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) + vec2<f32>(1.0f, 1.0f));
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_683 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_683 + vec2<f32>(1.0f, 1.0f));
        let x_686 : vec4<f32> = u_xlat7;
        let x_690 : vec2<f32> = (vec2<f32>(x_686.x, x_686.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_691 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
        let x_693 : vec2<f32> = u_xlat53;
        let x_694 : vec2<f32> = (x_693 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_695 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
        let x_697 : vec4<f32> = u_xlat8;
        let x_699 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_700 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_703 : vec2<f32> = u_xlat51;
        let x_704 : vec2<f32> = (x_703 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_705 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_707 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_707.y, x_707.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_711 : f32 = u_xlat8.x;
        u_xlat9.z = x_711;
        let x_714 : f32 = u_xlat51.x;
        u_xlat9.w = x_714;
        let x_717 : f32 = u_xlat10.x;
        u_xlat7.z = x_717;
        let x_720 : f32 = u_xlat6.x;
        u_xlat7.w = x_720;
        let x_723 : vec4<f32> = u_xlat7;
        let x_725 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_723.z, x_723.w, x_723.x, x_723.z) + vec4<f32>(x_725.z, x_725.w, x_725.x, x_725.z));
        let x_729 : f32 = u_xlat9.y;
        u_xlat8.z = x_729;
        let x_732 : f32 = u_xlat51.y;
        u_xlat8.w = x_732;
        let x_735 : f32 = u_xlat7.y;
        u_xlat10.z = x_735;
        let x_738 : f32 = u_xlat6.z;
        u_xlat10.w = x_738;
        let x_740 : vec4<f32> = u_xlat8;
        let x_742 : vec4<f32> = u_xlat10;
        let x_744 : vec3<f32> = (vec3<f32>(x_740.z, x_740.y, x_740.w) + vec3<f32>(x_742.z, x_742.y, x_742.w));
        let x_745 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat7;
        let x_749 : vec4<f32> = u_xlat11;
        let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.z, x_747.w) / vec3<f32>(x_749.z, x_749.w, x_749.y));
        let x_752 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat7;
        let x_760 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_761 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_763 : vec4<f32> = u_xlat10;
        let x_765 : vec4<f32> = u_xlat6;
        let x_767 : vec3<f32> = (vec3<f32>(x_763.z, x_763.y, x_763.w) / vec3<f32>(x_765.x, x_765.y, x_765.z));
        let x_768 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
        let x_770 : vec4<f32> = u_xlat8;
        let x_772 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_773 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
        let x_775 : vec4<f32> = u_xlat7;
        let x_778 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_780 : vec3<f32> = (vec3<f32>(x_775.y, x_775.x, x_775.z) * vec3<f32>(x_778.x, x_778.x, x_778.x));
        let x_781 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_783 : vec4<f32> = u_xlat8;
        let x_786 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_788 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_786.y, x_786.y, x_786.y));
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
        let x_792 : f32 = u_xlat8.x;
        u_xlat7.w = x_792;
        let x_794 : vec4<f32> = u_xlat5;
        let x_797 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_800 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_794.x, x_794.y, x_794.x, x_794.y) * vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y)) + vec4<f32>(x_800.y, x_800.w, x_800.x, x_800.w));
        let x_803 : vec4<f32> = u_xlat5;
        let x_806 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_809 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_803.x, x_803.y) * vec2<f32>(x_806.x, x_806.y)) + vec2<f32>(x_809.z, x_809.w));
        let x_813 : f32 = u_xlat7.y;
        u_xlat8.w = x_813;
        let x_815 : vec4<f32> = u_xlat8;
        let x_816 : vec2<f32> = vec2<f32>(x_815.y, x_815.z);
        let x_817 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_817.x, x_816.x, x_817.z, x_816.y);
        let x_819 : vec4<f32> = u_xlat5;
        let x_822 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_825 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.y) * vec4<f32>(x_822.x, x_822.y, x_822.x, x_822.y)) + vec4<f32>(x_825.x, x_825.y, x_825.z, x_825.y));
        let x_828 : vec4<f32> = u_xlat5;
        let x_831 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_834 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_828.x, x_828.y, x_828.x, x_828.y) * vec4<f32>(x_831.x, x_831.y, x_831.x, x_831.y)) + vec4<f32>(x_834.w, x_834.y, x_834.w, x_834.z));
        let x_837 : vec4<f32> = u_xlat5;
        let x_840 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_843 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_837.x, x_837.y, x_837.x, x_837.y) * vec4<f32>(x_840.x, x_840.y, x_840.x, x_840.y)) + vec4<f32>(x_843.x, x_843.w, x_843.z, x_843.w));
        let x_847 : vec4<f32> = u_xlat6;
        let x_849 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_847.x, x_847.x, x_847.x, x_847.y) * vec4<f32>(x_849.z, x_849.w, x_849.y, x_849.z));
        let x_853 : vec4<f32> = u_xlat6;
        let x_855 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_853.y, x_853.y, x_853.z, x_853.z) * x_855);
        let x_859 : f32 = u_xlat6.z;
        let x_861 : f32 = u_xlat11.y;
        u_xlat70 = (x_859 * x_861);
        let x_864 : vec4<f32> = u_xlat9;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_875 : vec3<f32> = txVec4;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat71 = x_877;
        let x_879 : vec4<f32> = u_xlat9;
        let x_880 : vec2<f32> = vec2<f32>(x_879.z, x_879.w);
        let x_882 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_880.x, x_880.y, x_882);
        let x_890 : vec3<f32> = txVec5;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_890.xy, x_890.z);
        u_xlat72 = x_892;
        let x_893 : f32 = u_xlat72;
        let x_895 : f32 = u_xlat12.y;
        u_xlat72 = (x_893 * x_895);
        let x_898 : f32 = u_xlat12.x;
        let x_899 : f32 = u_xlat71;
        let x_901 : f32 = u_xlat72;
        u_xlat71 = ((x_898 * x_899) + x_901);
        let x_904 : vec2<f32> = u_xlat51;
        let x_906 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_904.x, x_904.y, x_906);
        let x_913 : vec3<f32> = txVec6;
        let x_915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_913.xy, x_913.z);
        u_xlat72 = x_915;
        let x_917 : f32 = u_xlat12.z;
        let x_918 : f32 = u_xlat72;
        let x_920 : f32 = u_xlat71;
        u_xlat71 = ((x_917 * x_918) + x_920);
        let x_923 : vec4<f32> = u_xlat8;
        let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
        let x_926 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_924.x, x_924.y, x_926);
        let x_933 : vec3<f32> = txVec7;
        let x_935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_933.xy, x_933.z);
        u_xlat72 = x_935;
        let x_937 : f32 = u_xlat12.w;
        let x_938 : f32 = u_xlat72;
        let x_940 : f32 = u_xlat71;
        u_xlat71 = ((x_937 * x_938) + x_940);
        let x_943 : vec4<f32> = u_xlat10;
        let x_944 : vec2<f32> = vec2<f32>(x_943.x, x_943.y);
        let x_946 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_953 : vec3<f32> = txVec8;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_953.xy, x_953.z);
        u_xlat72 = x_955;
        let x_957 : f32 = u_xlat13.x;
        let x_958 : f32 = u_xlat72;
        let x_960 : f32 = u_xlat71;
        u_xlat71 = ((x_957 * x_958) + x_960);
        let x_963 : vec4<f32> = u_xlat10;
        let x_964 : vec2<f32> = vec2<f32>(x_963.z, x_963.w);
        let x_966 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec9;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_973.xy, x_973.z);
        u_xlat72 = x_975;
        let x_977 : f32 = u_xlat13.y;
        let x_978 : f32 = u_xlat72;
        let x_980 : f32 = u_xlat71;
        u_xlat71 = ((x_977 * x_978) + x_980);
        let x_983 : vec4<f32> = u_xlat8;
        let x_984 : vec2<f32> = vec2<f32>(x_983.z, x_983.w);
        let x_986 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_984.x, x_984.y, x_986);
        let x_993 : vec3<f32> = txVec10;
        let x_995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_993.xy, x_993.z);
        u_xlat72 = x_995;
        let x_997 : f32 = u_xlat13.z;
        let x_998 : f32 = u_xlat72;
        let x_1000 : f32 = u_xlat71;
        u_xlat71 = ((x_997 * x_998) + x_1000);
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1004 : vec2<f32> = vec2<f32>(x_1003.x, x_1003.y);
        let x_1006 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
        let x_1013 : vec3<f32> = txVec11;
        let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1013.xy, x_1013.z);
        u_xlat72 = x_1015;
        let x_1017 : f32 = u_xlat13.w;
        let x_1018 : f32 = u_xlat72;
        let x_1020 : f32 = u_xlat71;
        u_xlat71 = ((x_1017 * x_1018) + x_1020);
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1024 : vec2<f32> = vec2<f32>(x_1023.z, x_1023.w);
        let x_1026 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
        let x_1033 : vec3<f32> = txVec12;
        let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
        u_xlat72 = x_1035;
        let x_1036 : f32 = u_xlat70;
        let x_1037 : f32 = u_xlat72;
        let x_1039 : f32 = u_xlat71;
        u_xlat69 = ((x_1036 * x_1037) + x_1039);
      } else {
        let x_1042 : vec4<f32> = u_xlat3;
        let x_1045 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1045.z, x_1045.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1049 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat5;
        let x_1053 : vec2<f32> = floor(vec2<f32>(x_1051.x, x_1051.y));
        let x_1054 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1056 : vec4<f32> = u_xlat3;
        let x_1059 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1062 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1056.x, x_1056.y) * vec2<f32>(x_1059.z, x_1059.w)) + -(vec2<f32>(x_1062.x, x_1062.y)));
        let x_1066 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1066.x, x_1066.x, x_1066.y, x_1066.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1069 : vec4<f32> = u_xlat6;
        let x_1071 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1069.x, x_1069.x, x_1069.z, x_1069.z) * vec4<f32>(x_1071.x, x_1071.x, x_1071.z, x_1071.z));
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1078 : vec2<f32> = (vec2<f32>(x_1074.y, x_1074.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1079.x, x_1078.x, x_1079.z, x_1078.y);
        let x_1081 : vec4<f32> = u_xlat7;
        let x_1084 : vec2<f32> = u_xlat51;
        let x_1086 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1084));
        let x_1087 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1086.x, x_1087.y, x_1086.y, x_1087.w);
        let x_1089 : vec2<f32> = u_xlat51;
        let x_1091 : vec2<f32> = (-(x_1089) + vec2<f32>(1.0f, 1.0f));
        let x_1092 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
        let x_1094 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1094, vec2<f32>(0.0f, 0.0f));
        let x_1096 : vec2<f32> = u_xlat53;
        let x_1098 : vec2<f32> = u_xlat53;
        let x_1100 : vec4<f32> = u_xlat7;
        let x_1102 : vec2<f32> = ((-(x_1096) * x_1098) + vec2<f32>(x_1100.x, x_1100.y));
        let x_1103 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1105, vec2<f32>(0.0f, 0.0f));
        let x_1109 : vec2<f32> = u_xlat53;
        let x_1111 : vec2<f32> = u_xlat53;
        let x_1113 : vec4<f32> = u_xlat6;
        let x_1115 : vec2<f32> = ((-(x_1109) * x_1111) + vec2<f32>(x_1113.y, x_1113.w));
        let x_1116 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1115.x, x_1116.y, x_1115.y);
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1121 : vec2<f32> = (vec2<f32>(x_1118.x, x_1118.y) + vec2<f32>(2.0f, 2.0f));
        let x_1122 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec3<f32> = u_xlat29;
        let x_1126 : vec2<f32> = (vec2<f32>(x_1124.x, x_1124.z) + vec2<f32>(2.0f, 2.0f));
        let x_1127 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1127.x, x_1126.x, x_1127.z, x_1126.y);
        let x_1130 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1130 * 0.08163200318813323975f);
        let x_1134 : vec4<f32> = u_xlat6;
        let x_1137 : vec3<f32> = (vec3<f32>(x_1134.z, x_1134.x, x_1134.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1138 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1143 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1144 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1147 : f32 = u_xlat10.y;
        u_xlat9.x = x_1147;
        let x_1149 : vec2<f32> = u_xlat51;
        let x_1156 : vec2<f32> = ((vec2<f32>(x_1149.x, x_1149.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1157 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1157.x, x_1156.x, x_1157.z, x_1156.y);
        let x_1159 : vec2<f32> = u_xlat51;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1159.x, x_1159.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1164 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1163.x, x_1164.y, x_1163.y, x_1164.w);
        let x_1167 : f32 = u_xlat6.x;
        u_xlat7.y = x_1167;
        let x_1170 : f32 = u_xlat8.y;
        u_xlat7.w = x_1170;
        let x_1172 : vec4<f32> = u_xlat7;
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1172 + x_1173);
        let x_1175 : vec2<f32> = u_xlat51;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1175.y, x_1175.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1179 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1179.x, x_1178.x, x_1179.z, x_1178.y);
        let x_1181 : vec2<f32> = u_xlat51;
        let x_1184 : vec2<f32> = ((vec2<f32>(x_1181.y, x_1181.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1184.x, x_1185.y, x_1184.y, x_1185.w);
        let x_1188 : f32 = u_xlat6.y;
        u_xlat8.y = x_1188;
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1191 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1190 + x_1191);
        let x_1193 : vec4<f32> = u_xlat7;
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1193 / x_1194);
        let x_1196 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1196 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1202 : vec4<f32> = u_xlat8;
        let x_1203 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1202 / x_1203);
        let x_1205 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1205 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1207 : vec4<f32> = u_xlat7;
        let x_1210 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1207.w, x_1207.x, x_1207.y, x_1207.z) * vec4<f32>(x_1210.x, x_1210.x, x_1210.x, x_1210.x));
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1216 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1213.x, x_1213.w, x_1213.y, x_1213.z) * vec4<f32>(x_1216.y, x_1216.y, x_1216.y, x_1216.y));
        let x_1219 : vec4<f32> = u_xlat7;
        let x_1220 : vec3<f32> = vec3<f32>(x_1219.y, x_1219.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1220.x, x_1221.y, x_1220.y, x_1220.z);
        let x_1224 : f32 = u_xlat8.x;
        u_xlat10.y = x_1224;
        let x_1226 : vec4<f32> = u_xlat5;
        let x_1229 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y) * vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y)) + vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat5;
        let x_1238 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1235.x, x_1235.y) * vec2<f32>(x_1238.x, x_1238.y)) + vec2<f32>(x_1241.w, x_1241.y));
        let x_1245 : f32 = u_xlat10.y;
        u_xlat7.y = x_1245;
        let x_1248 : f32 = u_xlat8.z;
        u_xlat10.y = x_1248;
        let x_1250 : vec4<f32> = u_xlat5;
        let x_1253 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y) * vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y)) + vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat5;
        let x_1262 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat10;
        let x_1267 : vec2<f32> = ((vec2<f32>(x_1259.x, x_1259.y) * vec2<f32>(x_1262.x, x_1262.y)) + vec2<f32>(x_1265.w, x_1265.y));
        let x_1268 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1267.x, x_1267.y, x_1268.z, x_1268.w);
        let x_1271 : f32 = u_xlat10.y;
        u_xlat7.z = x_1271;
        let x_1274 : vec4<f32> = u_xlat5;
        let x_1277 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y) * vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y)) + vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.z));
        let x_1284 : f32 = u_xlat8.w;
        u_xlat10.y = x_1284;
        let x_1287 : vec4<f32> = u_xlat5;
        let x_1290 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1293 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y) * vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y)) + vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1293.y));
        let x_1297 : vec4<f32> = u_xlat5;
        let x_1300 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(x_1303.w, x_1303.y));
        let x_1307 : f32 = u_xlat10.y;
        u_xlat7.w = x_1307;
        let x_1310 : vec4<f32> = u_xlat5;
        let x_1313 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(x_1313.x, x_1313.y)) + vec2<f32>(x_1316.x, x_1316.w));
        let x_1319 : vec4<f32> = u_xlat10;
        let x_1320 : vec3<f32> = vec3<f32>(x_1319.x, x_1319.z, x_1319.w);
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1320.x, x_1321.y, x_1320.y, x_1320.z);
        let x_1323 : vec4<f32> = u_xlat5;
        let x_1326 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1329 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y) * vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y)) + vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1329.y));
        let x_1333 : vec4<f32> = u_xlat5;
        let x_1336 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1339 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1333.x, x_1333.y) * vec2<f32>(x_1336.x, x_1336.y)) + vec2<f32>(x_1339.w, x_1339.y));
        let x_1343 : f32 = u_xlat7.x;
        u_xlat8.x = x_1343;
        let x_1345 : vec4<f32> = u_xlat5;
        let x_1348 : vec4<f32> = x_175.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat8;
        let x_1353 : vec2<f32> = ((vec2<f32>(x_1345.x, x_1345.y) * vec2<f32>(x_1348.x, x_1348.y)) + vec2<f32>(x_1351.x, x_1351.y));
        let x_1354 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1353.x, x_1353.y, x_1354.z, x_1354.w);
        let x_1357 : vec4<f32> = u_xlat6;
        let x_1359 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1357.x, x_1357.x, x_1357.x, x_1357.x) * x_1359);
        let x_1362 : vec4<f32> = u_xlat6;
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1362.y, x_1362.y, x_1362.y, x_1362.y) * x_1364);
        let x_1367 : vec4<f32> = u_xlat6;
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1367.z, x_1367.z, x_1367.z, x_1367.z) * x_1369);
        let x_1371 : vec4<f32> = u_xlat6;
        let x_1373 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1371.w, x_1371.w, x_1371.w, x_1371.w) * x_1373);
        let x_1376 : vec4<f32> = u_xlat11;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.x, x_1376.y);
        let x_1379 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec13;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat70 = x_1388;
        let x_1390 : vec4<f32> = u_xlat11;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.z, x_1390.w);
        let x_1393 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec14;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat71 = x_1402;
        let x_1403 : f32 = u_xlat71;
        let x_1405 : f32 = u_xlat16.y;
        u_xlat71 = (x_1403 * x_1405);
        let x_1408 : f32 = u_xlat16.x;
        let x_1409 : f32 = u_xlat70;
        let x_1411 : f32 = u_xlat71;
        u_xlat70 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec2<f32> = u_xlat51;
        let x_1416 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec15;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat71 = x_1425;
        let x_1427 : f32 = u_xlat16.z;
        let x_1428 : f32 = u_xlat71;
        let x_1430 : f32 = u_xlat70;
        u_xlat70 = ((x_1427 * x_1428) + x_1430);
        let x_1433 : vec4<f32> = u_xlat14;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec16;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat71 = x_1445;
        let x_1447 : f32 = u_xlat16.w;
        let x_1448 : f32 = u_xlat71;
        let x_1450 : f32 = u_xlat70;
        u_xlat70 = ((x_1447 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat12;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec17;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat71 = x_1465;
        let x_1467 : f32 = u_xlat17.x;
        let x_1468 : f32 = u_xlat71;
        let x_1470 : f32 = u_xlat70;
        u_xlat70 = ((x_1467 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat12;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.z, x_1473.w);
        let x_1476 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec18;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat71 = x_1485;
        let x_1487 : f32 = u_xlat17.y;
        let x_1488 : f32 = u_xlat71;
        let x_1490 : f32 = u_xlat70;
        u_xlat70 = ((x_1487 * x_1488) + x_1490);
        let x_1493 : vec4<f32> = u_xlat13;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec19;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1503.xy, x_1503.z);
        u_xlat71 = x_1505;
        let x_1507 : f32 = u_xlat17.z;
        let x_1508 : f32 = u_xlat71;
        let x_1510 : f32 = u_xlat70;
        u_xlat70 = ((x_1507 * x_1508) + x_1510);
        let x_1513 : vec4<f32> = u_xlat14;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.z, x_1513.w);
        let x_1516 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec20;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat71 = x_1525;
        let x_1527 : f32 = u_xlat17.w;
        let x_1528 : f32 = u_xlat71;
        let x_1530 : f32 = u_xlat70;
        u_xlat70 = ((x_1527 * x_1528) + x_1530);
        let x_1533 : vec4<f32> = u_xlat15;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec21;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1543.xy, x_1543.z);
        u_xlat71 = x_1545;
        let x_1547 : f32 = u_xlat18.x;
        let x_1548 : f32 = u_xlat71;
        let x_1550 : f32 = u_xlat70;
        u_xlat70 = ((x_1547 * x_1548) + x_1550);
        let x_1553 : vec4<f32> = u_xlat15;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec22;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1563.xy, x_1563.z);
        u_xlat71 = x_1565;
        let x_1567 : f32 = u_xlat18.y;
        let x_1568 : f32 = u_xlat71;
        let x_1570 : f32 = u_xlat70;
        u_xlat70 = ((x_1567 * x_1568) + x_1570);
        let x_1573 : vec2<f32> = u_xlat30;
        let x_1575 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec23;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1582.xy, x_1582.z);
        u_xlat71 = x_1584;
        let x_1586 : f32 = u_xlat18.z;
        let x_1587 : f32 = u_xlat71;
        let x_1589 : f32 = u_xlat70;
        u_xlat70 = ((x_1586 * x_1587) + x_1589);
        let x_1592 : vec2<f32> = u_xlat59;
        let x_1594 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec24;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat71 = x_1603;
        let x_1605 : f32 = u_xlat18.w;
        let x_1606 : f32 = u_xlat71;
        let x_1608 : f32 = u_xlat70;
        u_xlat70 = ((x_1605 * x_1606) + x_1608);
        let x_1611 : vec4<f32> = u_xlat10;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
        let x_1614 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec25;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat71 = x_1623;
        let x_1625 : f32 = u_xlat6.x;
        let x_1626 : f32 = u_xlat71;
        let x_1628 : f32 = u_xlat70;
        u_xlat70 = ((x_1625 * x_1626) + x_1628);
        let x_1631 : vec4<f32> = u_xlat10;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.z, x_1631.w);
        let x_1634 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec26;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1641.xy, x_1641.z);
        u_xlat71 = x_1643;
        let x_1645 : f32 = u_xlat6.y;
        let x_1646 : f32 = u_xlat71;
        let x_1648 : f32 = u_xlat70;
        u_xlat70 = ((x_1645 * x_1646) + x_1648);
        let x_1651 : vec2<f32> = u_xlat54;
        let x_1653 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec27;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat71 = x_1662;
        let x_1664 : f32 = u_xlat6.z;
        let x_1665 : f32 = u_xlat71;
        let x_1667 : f32 = u_xlat70;
        u_xlat70 = ((x_1664 * x_1665) + x_1667);
        let x_1670 : vec4<f32> = u_xlat5;
        let x_1671 : vec2<f32> = vec2<f32>(x_1670.x, x_1670.y);
        let x_1673 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec28;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1680.xy, x_1680.z);
        u_xlat71 = x_1682;
        let x_1684 : f32 = u_xlat6.w;
        let x_1685 : f32 = u_xlat71;
        let x_1687 : f32 = u_xlat70;
        u_xlat69 = ((x_1684 * x_1685) + x_1687);
      }
    }
  } else {
    let x_1691 : vec4<f32> = u_xlat3;
    let x_1692 : vec2<f32> = vec2<f32>(x_1691.x, x_1691.y);
    let x_1694 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
    let x_1701 : vec3<f32> = txVec29;
    let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1701.xy, x_1701.z);
    u_xlat69 = x_1703;
  }
  let x_1705 : f32 = x_175.x_MainLightShadowParams.x;
  u_xlat70 = (-(x_1705) + 1.0f);
  let x_1708 : f32 = u_xlat69;
  let x_1710 : f32 = x_175.x_MainLightShadowParams.x;
  let x_1712 : f32 = u_xlat70;
  u_xlat69 = ((x_1708 * x_1710) + x_1712);
  let x_1715 : f32 = u_xlat3.z;
  u_xlatb70 = (0.0f >= x_1715);
  let x_1719 : f32 = u_xlat3.z;
  u_xlatb71 = (x_1719 >= 1.0f);
  let x_1721 : bool = u_xlatb70;
  let x_1722 : bool = u_xlatb71;
  u_xlatb70 = (x_1721 | x_1722);
  let x_1724 : bool = u_xlatb70;
  let x_1725 : f32 = u_xlat69;
  u_xlat69 = select(x_1725, 1.0f, x_1724);
  let x_1727 : vec4<f32> = vs_TEXCOORD2;
  let x_1731 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1733 : vec3<f32> = (vec3<f32>(x_1727.x, x_1727.y, x_1727.z) + -(x_1731));
  let x_1734 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
  let x_1736 : vec4<f32> = u_xlat3;
  let x_1738 : vec4<f32> = u_xlat3;
  u_xlat70 = dot(vec3<f32>(x_1736.x, x_1736.y, x_1736.z), vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
  let x_1741 : f32 = u_xlat70;
  let x_1743 : f32 = x_175.x_MainLightShadowParams.z;
  let x_1746 : f32 = x_175.x_MainLightShadowParams.w;
  u_xlat71 = ((x_1741 * x_1743) + x_1746);
  let x_1748 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1748, 0.0f, 1.0f);
  let x_1750 : f32 = u_xlat69;
  u_xlat3.x = (-(x_1750) + 1.0f);
  let x_1754 : f32 = u_xlat71;
  let x_1756 : f32 = u_xlat3.x;
  let x_1758 : f32 = u_xlat69;
  u_xlat69 = ((x_1754 * x_1756) + x_1758);
  let x_1767 : f32 = x_1765.x_MainLightCookieTextureFormat;
  u_xlatb71 = !((x_1767 == -1.0f));
  let x_1769 : bool = u_xlatb71;
  if (x_1769) {
    let x_1772 : vec4<f32> = vs_TEXCOORD2;
    let x_1775 : vec4<f32> = x_1765.x_MainLightWorldToLight[1i];
    let x_1777 : vec2<f32> = (vec2<f32>(x_1772.y, x_1772.y) * vec2<f32>(x_1775.x, x_1775.y));
    let x_1778 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
    let x_1781 : vec4<f32> = x_1765.x_MainLightWorldToLight[0i];
    let x_1783 : vec4<f32> = vs_TEXCOORD2;
    let x_1786 : vec4<f32> = u_xlat3;
    let x_1788 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.y) * vec2<f32>(x_1783.x, x_1783.x)) + vec2<f32>(x_1786.x, x_1786.y));
    let x_1789 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1788.x, x_1788.y, x_1789.z, x_1789.w);
    let x_1792 : vec4<f32> = x_1765.x_MainLightWorldToLight[2i];
    let x_1794 : vec4<f32> = vs_TEXCOORD2;
    let x_1797 : vec4<f32> = u_xlat3;
    let x_1799 : vec2<f32> = ((vec2<f32>(x_1792.x, x_1792.y) * vec2<f32>(x_1794.z, x_1794.z)) + vec2<f32>(x_1797.x, x_1797.y));
    let x_1800 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1799.x, x_1799.y, x_1800.z, x_1800.w);
    let x_1802 : vec4<f32> = u_xlat3;
    let x_1805 : vec4<f32> = x_1765.x_MainLightWorldToLight[3i];
    let x_1807 : vec2<f32> = (vec2<f32>(x_1802.x, x_1802.y) + vec2<f32>(x_1805.x, x_1805.y));
    let x_1808 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1807.x, x_1807.y, x_1808.z, x_1808.w);
    let x_1810 : vec4<f32> = u_xlat3;
    let x_1813 : vec2<f32> = ((vec2<f32>(x_1810.x, x_1810.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1814 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1813.x, x_1813.y, x_1814.z, x_1814.w);
    let x_1821 : vec4<f32> = u_xlat3;
    let x_1824 : f32 = x_44.x_GlobalMipBias.x;
    let x_1825 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1821.x, x_1821.y), x_1824);
    u_xlat3 = x_1825;
    let x_1830 : f32 = x_1765.x_MainLightCookieTextureFormat;
    let x_1832 : f32 = x_1765.x_MainLightCookieTextureFormat;
    let x_1834 : f32 = x_1765.x_MainLightCookieTextureFormat;
    let x_1836 : f32 = x_1765.x_MainLightCookieTextureFormat;
    let x_1837 : vec4<f32> = vec4<f32>(x_1830, x_1832, x_1834, x_1836);
    let x_1844 : vec4<bool> = (vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1837.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1844.x, x_1844.y);
    let x_1847 : bool = u_xlatb5.y;
    if (x_1847) {
      let x_1852 : f32 = u_xlat3.w;
      x_1848 = x_1852;
    } else {
      let x_1855 : f32 = u_xlat3.x;
      x_1848 = x_1855;
    }
    let x_1856 : f32 = x_1848;
    u_xlat71 = x_1856;
    let x_1858 : bool = u_xlatb5.x;
    if (x_1858) {
      let x_1862 : vec4<f32> = u_xlat3;
      x_1859 = vec3<f32>(x_1862.x, x_1862.y, x_1862.z);
    } else {
      let x_1865 : f32 = u_xlat71;
      x_1859 = vec3<f32>(x_1865, x_1865, x_1865);
    }
    let x_1867 : vec3<f32> = x_1859;
    let x_1868 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1867.x, x_1867.y, x_1867.z, x_1868.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1874 : vec4<f32> = u_xlat3;
  let x_1877 : vec4<f32> = x_44.x_MainLightColor;
  let x_1879 : vec3<f32> = (vec3<f32>(x_1874.x, x_1874.y, x_1874.z) * vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
  let x_1880 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
  let x_1882 : f32 = u_xlat69;
  let x_1884 : f32 = x_414.unity_LightData.z;
  u_xlat69 = (x_1882 * x_1884);
  let x_1886 : f32 = u_xlat69;
  let x_1888 : vec4<f32> = u_xlat3;
  let x_1890 : vec3<f32> = (vec3<f32>(x_1886, x_1886, x_1886) * vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
  let x_1891 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  let x_1893 : vec4<f32> = u_xlat2;
  let x_1896 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat69 = dot(vec3<f32>(x_1893.x, x_1893.y, x_1893.z), vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1899, 0.0f, 1.0f);
  let x_1901 : f32 = u_xlat69;
  let x_1903 : vec4<f32> = u_xlat3;
  let x_1905 : vec3<f32> = (vec3<f32>(x_1901, x_1901, x_1901) * vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1906.w);
  let x_1908 : vec4<f32> = u_xlat1;
  let x_1910 : vec4<f32> = u_xlat3;
  let x_1912 : vec3<f32> = (vec3<f32>(x_1908.x, x_1908.y, x_1908.z) * vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
  let x_1913 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
  let x_1916 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1918 : f32 = x_414.unity_LightData.y;
  u_xlat69 = min(x_1916, x_1918);
  let x_1921 : f32 = u_xlat69;
  u_xlatu69 = bitcast<u32>(i32(x_1921));
  let x_1924 : f32 = u_xlat70;
  let x_1927 : f32 = x_175.x_AdditionalShadowFadeParams.x;
  let x_1930 : f32 = x_175.x_AdditionalShadowFadeParams.y;
  u_xlat70 = ((x_1924 * x_1927) + x_1930);
  let x_1932 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1932, 0.0f, 1.0f);
  let x_1935 : f32 = x_1765.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1937 : f32 = x_1765.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1939 : f32 = x_1765.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1941 : f32 = x_1765.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1942 : vec4<f32> = vec4<f32>(x_1935, x_1937, x_1939, x_1941);
  let x_1948 : vec4<bool> = (vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1942.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1948.x, x_1948.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1960 : u32 = u_xlatu_loop_1;
    let x_1961 : u32 = u_xlatu69;
    if ((x_1960 < x_1961)) {
    } else {
      break;
    }
    let x_1964 : u32 = u_xlatu_loop_1;
    u_xlatu72 = (x_1964 >> 2u);
    let x_1967 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_1967 & 3u));
    let x_1970 : u32 = u_xlatu72;
    let x_1973 : vec4<f32> = x_414.unity_LightIndices[bitcast<i32>(x_1970)];
    let x_1983 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1988 : vec4<u32> = indexable[x_1983];
    u_xlat72 = dot(x_1973, bitcast<vec4<f32>>(x_1988));
    let x_1992 : f32 = u_xlat72;
    u_xlati72 = i32(x_1992);
    let x_1994 : vec4<f32> = vs_TEXCOORD2;
    let x_2006 : i32 = u_xlati72;
    let x_2008 : vec4<f32> = x_2005.x_AdditionalLightsPosition[x_2006];
    let x_2011 : i32 = u_xlati72;
    let x_2013 : vec4<f32> = x_2005.x_AdditionalLightsPosition[x_2011];
    let x_2015 : vec3<f32> = ((-(vec3<f32>(x_1994.x, x_1994.y, x_1994.z)) * vec3<f32>(x_2008.w, x_2008.w, x_2008.w)) + vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
    let x_2016 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
    let x_2019 : vec4<f32> = u_xlat7;
    let x_2021 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2019.x, x_2019.y, x_2019.z), vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
    let x_2024 : f32 = u_xlat73;
    u_xlat73 = max(x_2024, 0.00006103515625f);
    let x_2027 : f32 = u_xlat73;
    u_xlat51.x = inverseSqrt(x_2027);
    let x_2030 : vec2<f32> = u_xlat51;
    let x_2032 : vec4<f32> = u_xlat7;
    let x_2034 : vec3<f32> = (vec3<f32>(x_2030.x, x_2030.x, x_2030.x) * vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
    let x_2035 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2034.x, x_2034.y, x_2034.z, x_2035.w);
    let x_2037 : f32 = u_xlat73;
    u_xlat51.x = (1.0f / x_2037);
    let x_2040 : f32 = u_xlat73;
    let x_2041 : i32 = u_xlati72;
    let x_2043 : f32 = x_2005.x_AdditionalLightsAttenuation[x_2041].x;
    u_xlat73 = (x_2040 * x_2043);
    let x_2045 : f32 = u_xlat73;
    let x_2047 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2045) * x_2047) + 1.0f);
    let x_2050 : f32 = u_xlat73;
    u_xlat73 = max(x_2050, 0.0f);
    let x_2052 : f32 = u_xlat73;
    let x_2053 : f32 = u_xlat73;
    u_xlat73 = (x_2052 * x_2053);
    let x_2055 : f32 = u_xlat73;
    let x_2057 : f32 = u_xlat51.x;
    u_xlat73 = (x_2055 * x_2057);
    let x_2059 : i32 = u_xlati72;
    let x_2061 : vec4<f32> = x_2005.x_AdditionalLightsSpotDir[x_2059];
    let x_2063 : vec4<f32> = u_xlat7;
    u_xlat51.x = dot(vec3<f32>(x_2061.x, x_2061.y, x_2061.z), vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
    let x_2068 : f32 = u_xlat51.x;
    let x_2069 : i32 = u_xlati72;
    let x_2071 : f32 = x_2005.x_AdditionalLightsAttenuation[x_2069].z;
    let x_2073 : i32 = u_xlati72;
    let x_2075 : f32 = x_2005.x_AdditionalLightsAttenuation[x_2073].w;
    u_xlat51.x = ((x_2068 * x_2071) + x_2075);
    let x_2079 : f32 = u_xlat51.x;
    u_xlat51.x = clamp(x_2079, 0.0f, 1.0f);
    let x_2083 : f32 = u_xlat51.x;
    let x_2085 : f32 = u_xlat51.x;
    u_xlat51.x = (x_2083 * x_2085);
    let x_2088 : f32 = u_xlat73;
    let x_2090 : f32 = u_xlat51.x;
    u_xlat73 = (x_2088 * x_2090);
    let x_2094 : i32 = u_xlati72;
    let x_2096 : f32 = x_175.x_AdditionalShadowParams[x_2094].w;
    u_xlati51 = i32(x_2096);
    let x_2099 : i32 = u_xlati51;
    u_xlatb74 = (x_2099 >= 0i);
    let x_2101 : bool = u_xlatb74;
    if (x_2101) {
      let x_2105 : i32 = u_xlati72;
      let x_2107 : f32 = x_175.x_AdditionalShadowParams[x_2105].z;
      u_xlatb74 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2107, x_2107, x_2107, x_2107))));
      let x_2111 : bool = u_xlatb74;
      if (x_2111) {
        let x_2115 : vec4<f32> = u_xlat7;
        let x_2118 : vec4<f32> = u_xlat7;
        let x_2121 : vec4<bool> = (abs(vec4<f32>(x_2115.z, x_2115.z, x_2115.y, x_2115.z)) >= abs(vec4<f32>(x_2118.x, x_2118.y, x_2118.x, x_2118.x)));
        let x_2123 : vec3<bool> = vec3<bool>(x_2121.x, x_2121.y, x_2121.z);
        let x_2124 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
        let x_2127 : bool = u_xlatb8.y;
        let x_2129 : bool = u_xlatb8.x;
        u_xlatb74 = (x_2127 & x_2129);
        let x_2131 : vec4<f32> = u_xlat7;
        let x_2134 : vec4<bool> = (-(vec4<f32>(x_2131.z, x_2131.y, x_2131.z, x_2131.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2135 : vec3<bool> = vec3<bool>(x_2134.x, x_2134.y, x_2134.w);
        let x_2136 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2135.x, x_2135.y, x_2136.z, x_2135.z);
        let x_2139 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2139);
        let x_2144 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2144);
        let x_2149 : bool = u_xlatb8.w;
        u_xlat75 = select(0.0f, 1.0f, x_2149);
        let x_2152 : bool = u_xlatb8.z;
        if (x_2152) {
          let x_2157 : f32 = u_xlat8.y;
          x_2153 = x_2157;
        } else {
          let x_2159 : f32 = u_xlat75;
          x_2153 = x_2159;
        }
        let x_2160 : f32 = x_2153;
        u_xlat75 = x_2160;
        let x_2162 : bool = u_xlatb74;
        if (x_2162) {
          let x_2167 : f32 = u_xlat8.x;
          x_2163 = x_2167;
        } else {
          let x_2169 : f32 = u_xlat75;
          x_2163 = x_2169;
        }
        let x_2170 : f32 = x_2163;
        u_xlat74 = x_2170;
        let x_2171 : i32 = u_xlati72;
        let x_2173 : f32 = x_175.x_AdditionalShadowParams[x_2171].w;
        u_xlat75 = trunc(x_2173);
        let x_2175 : f32 = u_xlat74;
        let x_2176 : f32 = u_xlat75;
        u_xlat74 = (x_2175 + x_2176);
        let x_2178 : f32 = u_xlat74;
        u_xlati51 = i32(x_2178);
      }
      let x_2180 : i32 = u_xlati51;
      u_xlati51 = (x_2180 << bitcast<u32>(2i));
      let x_2182 : vec4<f32> = vs_TEXCOORD2;
      let x_2185 : i32 = u_xlati51;
      let x_2188 : i32 = u_xlati51;
      let x_2192 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_2185 + 1i) / 4i)][((x_2188 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2182.y, x_2182.y, x_2182.y, x_2182.y) * x_2192);
      let x_2194 : i32 = u_xlati51;
      let x_2196 : i32 = u_xlati51;
      let x_2199 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[(x_2194 / 4i)][(x_2196 % 4i)];
      let x_2200 : vec4<f32> = vs_TEXCOORD2;
      let x_2203 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2199 * vec4<f32>(x_2200.x, x_2200.x, x_2200.x, x_2200.x)) + x_2203);
      let x_2205 : i32 = u_xlati51;
      let x_2208 : i32 = u_xlati51;
      let x_2212 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_2205 + 2i) / 4i)][((x_2208 + 2i) % 4i)];
      let x_2213 : vec4<f32> = vs_TEXCOORD2;
      let x_2216 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2212 * vec4<f32>(x_2213.z, x_2213.z, x_2213.z, x_2213.z)) + x_2216);
      let x_2218 : vec4<f32> = u_xlat8;
      let x_2219 : i32 = u_xlati51;
      let x_2222 : i32 = u_xlati51;
      let x_2226 : vec4<f32> = x_175.x_AdditionalLightsWorldToShadow[((x_2219 + 3i) / 4i)][((x_2222 + 3i) % 4i)];
      u_xlat8 = (x_2218 + x_2226);
      let x_2228 : vec4<f32> = u_xlat8;
      let x_2230 : vec4<f32> = u_xlat8;
      let x_2232 : vec3<f32> = (vec3<f32>(x_2228.x, x_2228.y, x_2228.z) / vec3<f32>(x_2230.w, x_2230.w, x_2230.w));
      let x_2233 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
      let x_2236 : i32 = u_xlati72;
      let x_2238 : f32 = x_175.x_AdditionalShadowParams[x_2236].y;
      u_xlatb51 = (0.0f < x_2238);
      let x_2240 : bool = u_xlatb51;
      if (x_2240) {
        let x_2243 : i32 = u_xlati72;
        let x_2245 : f32 = x_175.x_AdditionalShadowParams[x_2243].y;
        u_xlatb51 = (1.0f == x_2245);
        let x_2247 : bool = u_xlatb51;
        if (x_2247) {
          let x_2250 : vec4<f32> = u_xlat8;
          let x_2254 : vec4<f32> = x_175.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2250.x, x_2250.y, x_2250.x, x_2250.y) + x_2254);
          let x_2257 : vec4<f32> = u_xlat9;
          let x_2258 : vec2<f32> = vec2<f32>(x_2257.x, x_2257.y);
          let x_2260 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2258.x, x_2258.y, x_2260);
          let x_2268 : vec3<f32> = txVec30;
          let x_2270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2268.xy, x_2268.z);
          u_xlat10.x = x_2270;
          let x_2273 : vec4<f32> = u_xlat9;
          let x_2274 : vec2<f32> = vec2<f32>(x_2273.z, x_2273.w);
          let x_2276 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
          let x_2283 : vec3<f32> = txVec31;
          let x_2285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2283.xy, x_2283.z);
          u_xlat10.y = x_2285;
          let x_2287 : vec4<f32> = u_xlat8;
          let x_2291 : vec4<f32> = x_175.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2287.x, x_2287.y, x_2287.x, x_2287.y) + x_2291);
          let x_2294 : vec4<f32> = u_xlat9;
          let x_2295 : vec2<f32> = vec2<f32>(x_2294.x, x_2294.y);
          let x_2297 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2295.x, x_2295.y, x_2297);
          let x_2304 : vec3<f32> = txVec32;
          let x_2306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2304.xy, x_2304.z);
          u_xlat10.z = x_2306;
          let x_2309 : vec4<f32> = u_xlat9;
          let x_2310 : vec2<f32> = vec2<f32>(x_2309.z, x_2309.w);
          let x_2312 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2310.x, x_2310.y, x_2312);
          let x_2319 : vec3<f32> = txVec33;
          let x_2321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2319.xy, x_2319.z);
          u_xlat10.w = x_2321;
          let x_2323 : vec4<f32> = u_xlat10;
          u_xlat51.x = dot(x_2323, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2327 : i32 = u_xlati72;
          let x_2329 : f32 = x_175.x_AdditionalShadowParams[x_2327].y;
          u_xlatb74 = (2.0f == x_2329);
          let x_2331 : bool = u_xlatb74;
          if (x_2331) {
            let x_2334 : vec4<f32> = u_xlat8;
            let x_2338 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2341 : vec2<f32> = ((vec2<f32>(x_2334.x, x_2334.y) * vec2<f32>(x_2338.z, x_2338.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2342 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
            let x_2344 : vec4<f32> = u_xlat9;
            let x_2346 : vec2<f32> = floor(vec2<f32>(x_2344.x, x_2344.y));
            let x_2347 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2346.x, x_2346.y, x_2347.z, x_2347.w);
            let x_2350 : vec4<f32> = u_xlat8;
            let x_2353 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2356 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2350.x, x_2350.y) * vec2<f32>(x_2353.z, x_2353.w)) + -(vec2<f32>(x_2356.x, x_2356.y)));
            let x_2360 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2360.x, x_2360.x, x_2360.y, x_2360.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2363 : vec4<f32> = u_xlat10;
            let x_2365 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2363.x, x_2363.x, x_2363.z, x_2363.z) * vec4<f32>(x_2365.x, x_2365.x, x_2365.z, x_2365.z));
            let x_2368 : vec4<f32> = u_xlat11;
            let x_2370 : vec2<f32> = (vec2<f32>(x_2368.y, x_2368.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2371 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2370.x, x_2371.y, x_2370.y, x_2371.w);
            let x_2373 : vec4<f32> = u_xlat11;
            let x_2376 : vec2<f32> = u_xlat55;
            let x_2378 : vec2<f32> = ((vec2<f32>(x_2373.x, x_2373.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2376));
            let x_2379 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2378.x, x_2378.y, x_2379.z, x_2379.w);
            let x_2382 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2382) + vec2<f32>(1.0f, 1.0f));
            let x_2385 : vec2<f32> = u_xlat55;
            let x_2386 : vec2<f32> = min(x_2385, vec2<f32>(0.0f, 0.0f));
            let x_2387 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2386.x, x_2386.y, x_2387.z, x_2387.w);
            let x_2389 : vec4<f32> = u_xlat12;
            let x_2392 : vec4<f32> = u_xlat12;
            let x_2395 : vec2<f32> = u_xlat57;
            let x_2396 : vec2<f32> = ((-(vec2<f32>(x_2389.x, x_2389.y)) * vec2<f32>(x_2392.x, x_2392.y)) + x_2395);
            let x_2397 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2396.x, x_2396.y, x_2397.z, x_2397.w);
            let x_2399 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2399, vec2<f32>(0.0f, 0.0f));
            let x_2401 : vec2<f32> = u_xlat55;
            let x_2403 : vec2<f32> = u_xlat55;
            let x_2405 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2401) * x_2403) + vec2<f32>(x_2405.y, x_2405.w));
            let x_2408 : vec4<f32> = u_xlat12;
            let x_2410 : vec2<f32> = (vec2<f32>(x_2408.x, x_2408.y) + vec2<f32>(1.0f, 1.0f));
            let x_2411 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2410.x, x_2410.y, x_2411.z, x_2411.w);
            let x_2413 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2413 + vec2<f32>(1.0f, 1.0f));
            let x_2415 : vec4<f32> = u_xlat11;
            let x_2417 : vec2<f32> = (vec2<f32>(x_2415.x, x_2415.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2418 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
            let x_2420 : vec2<f32> = u_xlat57;
            let x_2421 : vec2<f32> = (x_2420 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2422 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2421.x, x_2421.y, x_2422.z, x_2422.w);
            let x_2424 : vec4<f32> = u_xlat12;
            let x_2426 : vec2<f32> = (vec2<f32>(x_2424.x, x_2424.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2427 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2426.x, x_2426.y, x_2427.z, x_2427.w);
            let x_2429 : vec2<f32> = u_xlat55;
            let x_2430 : vec2<f32> = (x_2429 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2431 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2430.x, x_2430.y, x_2431.z, x_2431.w);
            let x_2433 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2433.y, x_2433.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2437 : f32 = u_xlat12.x;
            u_xlat13.z = x_2437;
            let x_2440 : f32 = u_xlat55.x;
            u_xlat13.w = x_2440;
            let x_2443 : f32 = u_xlat14.x;
            u_xlat11.z = x_2443;
            let x_2446 : f32 = u_xlat10.x;
            u_xlat11.w = x_2446;
            let x_2448 : vec4<f32> = u_xlat11;
            let x_2450 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2448.z, x_2448.w, x_2448.x, x_2448.z) + vec4<f32>(x_2450.z, x_2450.w, x_2450.x, x_2450.z));
            let x_2454 : f32 = u_xlat13.y;
            u_xlat12.z = x_2454;
            let x_2457 : f32 = u_xlat55.y;
            u_xlat12.w = x_2457;
            let x_2460 : f32 = u_xlat11.y;
            u_xlat14.z = x_2460;
            let x_2463 : f32 = u_xlat10.z;
            u_xlat14.w = x_2463;
            let x_2465 : vec4<f32> = u_xlat12;
            let x_2467 : vec4<f32> = u_xlat14;
            let x_2469 : vec3<f32> = (vec3<f32>(x_2465.z, x_2465.y, x_2465.w) + vec3<f32>(x_2467.z, x_2467.y, x_2467.w));
            let x_2470 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2469.x, x_2469.y, x_2469.z, x_2470.w);
            let x_2472 : vec4<f32> = u_xlat11;
            let x_2474 : vec4<f32> = u_xlat15;
            let x_2476 : vec3<f32> = (vec3<f32>(x_2472.x, x_2472.z, x_2472.w) / vec3<f32>(x_2474.z, x_2474.w, x_2474.y));
            let x_2477 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
            let x_2479 : vec4<f32> = u_xlat11;
            let x_2481 : vec3<f32> = (vec3<f32>(x_2479.x, x_2479.y, x_2479.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2482 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2482.w);
            let x_2484 : vec4<f32> = u_xlat14;
            let x_2486 : vec4<f32> = u_xlat10;
            let x_2488 : vec3<f32> = (vec3<f32>(x_2484.z, x_2484.y, x_2484.w) / vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
            let x_2489 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
            let x_2491 : vec4<f32> = u_xlat12;
            let x_2493 : vec3<f32> = (vec3<f32>(x_2491.x, x_2491.y, x_2491.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2494 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2493.x, x_2493.y, x_2493.z, x_2494.w);
            let x_2496 : vec4<f32> = u_xlat11;
            let x_2499 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2501 : vec3<f32> = (vec3<f32>(x_2496.y, x_2496.x, x_2496.z) * vec3<f32>(x_2499.x, x_2499.x, x_2499.x));
            let x_2502 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
            let x_2504 : vec4<f32> = u_xlat12;
            let x_2507 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2509 : vec3<f32> = (vec3<f32>(x_2504.x, x_2504.y, x_2504.z) * vec3<f32>(x_2507.y, x_2507.y, x_2507.y));
            let x_2510 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2510.w);
            let x_2513 : f32 = u_xlat12.x;
            u_xlat11.w = x_2513;
            let x_2515 : vec4<f32> = u_xlat9;
            let x_2518 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2521 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2515.x, x_2515.y, x_2515.x, x_2515.y) * vec4<f32>(x_2518.x, x_2518.y, x_2518.x, x_2518.y)) + vec4<f32>(x_2521.y, x_2521.w, x_2521.x, x_2521.w));
            let x_2524 : vec4<f32> = u_xlat9;
            let x_2527 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2530 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2524.x, x_2524.y) * vec2<f32>(x_2527.x, x_2527.y)) + vec2<f32>(x_2530.z, x_2530.w));
            let x_2534 : f32 = u_xlat11.y;
            u_xlat12.w = x_2534;
            let x_2536 : vec4<f32> = u_xlat12;
            let x_2537 : vec2<f32> = vec2<f32>(x_2536.y, x_2536.z);
            let x_2538 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2538.x, x_2537.x, x_2538.z, x_2537.y);
            let x_2540 : vec4<f32> = u_xlat9;
            let x_2543 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2546 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2540.x, x_2540.y, x_2540.x, x_2540.y) * vec4<f32>(x_2543.x, x_2543.y, x_2543.x, x_2543.y)) + vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2546.y));
            let x_2549 : vec4<f32> = u_xlat9;
            let x_2552 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2555 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2549.x, x_2549.y, x_2549.x, x_2549.y) * vec4<f32>(x_2552.x, x_2552.y, x_2552.x, x_2552.y)) + vec4<f32>(x_2555.w, x_2555.y, x_2555.w, x_2555.z));
            let x_2558 : vec4<f32> = u_xlat9;
            let x_2561 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2564 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2558.x, x_2558.y, x_2558.x, x_2558.y) * vec4<f32>(x_2561.x, x_2561.y, x_2561.x, x_2561.y)) + vec4<f32>(x_2564.x, x_2564.w, x_2564.z, x_2564.w));
            let x_2567 : vec4<f32> = u_xlat10;
            let x_2569 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2567.x, x_2567.x, x_2567.x, x_2567.y) * vec4<f32>(x_2569.z, x_2569.w, x_2569.y, x_2569.z));
            let x_2572 : vec4<f32> = u_xlat10;
            let x_2574 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2572.y, x_2572.y, x_2572.z, x_2572.z) * x_2574);
            let x_2577 : f32 = u_xlat10.z;
            let x_2579 : f32 = u_xlat15.y;
            u_xlat74 = (x_2577 * x_2579);
            let x_2582 : vec4<f32> = u_xlat13;
            let x_2583 : vec2<f32> = vec2<f32>(x_2582.x, x_2582.y);
            let x_2585 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2583.x, x_2583.y, x_2585);
            let x_2592 : vec3<f32> = txVec34;
            let x_2594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2592.xy, x_2592.z);
            u_xlat75 = x_2594;
            let x_2596 : vec4<f32> = u_xlat13;
            let x_2597 : vec2<f32> = vec2<f32>(x_2596.z, x_2596.w);
            let x_2599 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2597.x, x_2597.y, x_2599);
            let x_2607 : vec3<f32> = txVec35;
            let x_2609 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2607.xy, x_2607.z);
            u_xlat76 = x_2609;
            let x_2610 : f32 = u_xlat76;
            let x_2612 : f32 = u_xlat16.y;
            u_xlat76 = (x_2610 * x_2612);
            let x_2615 : f32 = u_xlat16.x;
            let x_2616 : f32 = u_xlat75;
            let x_2618 : f32 = u_xlat76;
            u_xlat75 = ((x_2615 * x_2616) + x_2618);
            let x_2621 : vec2<f32> = u_xlat55;
            let x_2623 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2621.x, x_2621.y, x_2623);
            let x_2630 : vec3<f32> = txVec36;
            let x_2632 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2630.xy, x_2630.z);
            u_xlat76 = x_2632;
            let x_2634 : f32 = u_xlat16.z;
            let x_2635 : f32 = u_xlat76;
            let x_2637 : f32 = u_xlat75;
            u_xlat75 = ((x_2634 * x_2635) + x_2637);
            let x_2640 : vec4<f32> = u_xlat12;
            let x_2641 : vec2<f32> = vec2<f32>(x_2640.x, x_2640.y);
            let x_2643 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2641.x, x_2641.y, x_2643);
            let x_2650 : vec3<f32> = txVec37;
            let x_2652 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2650.xy, x_2650.z);
            u_xlat76 = x_2652;
            let x_2654 : f32 = u_xlat16.w;
            let x_2655 : f32 = u_xlat76;
            let x_2657 : f32 = u_xlat75;
            u_xlat75 = ((x_2654 * x_2655) + x_2657);
            let x_2660 : vec4<f32> = u_xlat14;
            let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
            let x_2663 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
            let x_2670 : vec3<f32> = txVec38;
            let x_2672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
            u_xlat76 = x_2672;
            let x_2674 : f32 = u_xlat17.x;
            let x_2675 : f32 = u_xlat76;
            let x_2677 : f32 = u_xlat75;
            u_xlat75 = ((x_2674 * x_2675) + x_2677);
            let x_2680 : vec4<f32> = u_xlat14;
            let x_2681 : vec2<f32> = vec2<f32>(x_2680.z, x_2680.w);
            let x_2683 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2681.x, x_2681.y, x_2683);
            let x_2690 : vec3<f32> = txVec39;
            let x_2692 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2690.xy, x_2690.z);
            u_xlat76 = x_2692;
            let x_2694 : f32 = u_xlat17.y;
            let x_2695 : f32 = u_xlat76;
            let x_2697 : f32 = u_xlat75;
            u_xlat75 = ((x_2694 * x_2695) + x_2697);
            let x_2700 : vec4<f32> = u_xlat12;
            let x_2701 : vec2<f32> = vec2<f32>(x_2700.z, x_2700.w);
            let x_2703 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2701.x, x_2701.y, x_2703);
            let x_2710 : vec3<f32> = txVec40;
            let x_2712 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2710.xy, x_2710.z);
            u_xlat76 = x_2712;
            let x_2714 : f32 = u_xlat17.z;
            let x_2715 : f32 = u_xlat76;
            let x_2717 : f32 = u_xlat75;
            u_xlat75 = ((x_2714 * x_2715) + x_2717);
            let x_2720 : vec4<f32> = u_xlat11;
            let x_2721 : vec2<f32> = vec2<f32>(x_2720.x, x_2720.y);
            let x_2723 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
            let x_2730 : vec3<f32> = txVec41;
            let x_2732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2730.xy, x_2730.z);
            u_xlat76 = x_2732;
            let x_2734 : f32 = u_xlat17.w;
            let x_2735 : f32 = u_xlat76;
            let x_2737 : f32 = u_xlat75;
            u_xlat75 = ((x_2734 * x_2735) + x_2737);
            let x_2740 : vec4<f32> = u_xlat11;
            let x_2741 : vec2<f32> = vec2<f32>(x_2740.z, x_2740.w);
            let x_2743 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2741.x, x_2741.y, x_2743);
            let x_2750 : vec3<f32> = txVec42;
            let x_2752 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2750.xy, x_2750.z);
            u_xlat76 = x_2752;
            let x_2753 : f32 = u_xlat74;
            let x_2754 : f32 = u_xlat76;
            let x_2756 : f32 = u_xlat75;
            u_xlat51.x = ((x_2753 * x_2754) + x_2756);
          } else {
            let x_2760 : vec4<f32> = u_xlat8;
            let x_2763 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2766 : vec2<f32> = ((vec2<f32>(x_2760.x, x_2760.y) * vec2<f32>(x_2763.z, x_2763.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2767 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
            let x_2769 : vec4<f32> = u_xlat9;
            let x_2771 : vec2<f32> = floor(vec2<f32>(x_2769.x, x_2769.y));
            let x_2772 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2771.x, x_2771.y, x_2772.z, x_2772.w);
            let x_2774 : vec4<f32> = u_xlat8;
            let x_2777 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2780 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2774.x, x_2774.y) * vec2<f32>(x_2777.z, x_2777.w)) + -(vec2<f32>(x_2780.x, x_2780.y)));
            let x_2784 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2784.x, x_2784.x, x_2784.y, x_2784.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2787 : vec4<f32> = u_xlat10;
            let x_2789 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2787.x, x_2787.x, x_2787.z, x_2787.z) * vec4<f32>(x_2789.x, x_2789.x, x_2789.z, x_2789.z));
            let x_2792 : vec4<f32> = u_xlat11;
            let x_2794 : vec2<f32> = (vec2<f32>(x_2792.y, x_2792.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2795 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2795.x, x_2794.x, x_2795.z, x_2794.y);
            let x_2797 : vec4<f32> = u_xlat11;
            let x_2800 : vec2<f32> = u_xlat55;
            let x_2802 : vec2<f32> = ((vec2<f32>(x_2797.x, x_2797.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2800));
            let x_2803 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2802.x, x_2803.y, x_2802.y, x_2803.w);
            let x_2805 : vec2<f32> = u_xlat55;
            let x_2807 : vec2<f32> = (-(x_2805) + vec2<f32>(1.0f, 1.0f));
            let x_2808 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2807.x, x_2807.y, x_2808.z, x_2808.w);
            let x_2810 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2810, vec2<f32>(0.0f, 0.0f));
            let x_2812 : vec2<f32> = u_xlat57;
            let x_2814 : vec2<f32> = u_xlat57;
            let x_2816 : vec4<f32> = u_xlat11;
            let x_2818 : vec2<f32> = ((-(x_2812) * x_2814) + vec2<f32>(x_2816.x, x_2816.y));
            let x_2819 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2818.x, x_2818.y, x_2819.z, x_2819.w);
            let x_2821 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2821, vec2<f32>(0.0f, 0.0f));
            let x_2824 : vec2<f32> = u_xlat57;
            let x_2826 : vec2<f32> = u_xlat57;
            let x_2828 : vec4<f32> = u_xlat10;
            let x_2830 : vec2<f32> = ((-(x_2824) * x_2826) + vec2<f32>(x_2828.y, x_2828.w));
            let x_2831 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2830.x, x_2831.y, x_2830.y);
            let x_2833 : vec4<f32> = u_xlat11;
            let x_2835 : vec2<f32> = (vec2<f32>(x_2833.x, x_2833.y) + vec2<f32>(2.0f, 2.0f));
            let x_2836 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2835.x, x_2835.y, x_2836.z, x_2836.w);
            let x_2838 : vec3<f32> = u_xlat33;
            let x_2840 : vec2<f32> = (vec2<f32>(x_2838.x, x_2838.z) + vec2<f32>(2.0f, 2.0f));
            let x_2841 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2841.x, x_2840.x, x_2841.z, x_2840.y);
            let x_2844 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2844 * 0.08163200318813323975f);
            let x_2847 : vec4<f32> = u_xlat10;
            let x_2849 : vec3<f32> = (vec3<f32>(x_2847.z, x_2847.x, x_2847.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2850 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2849.x, x_2849.y, x_2849.z, x_2850.w);
            let x_2852 : vec4<f32> = u_xlat11;
            let x_2854 : vec2<f32> = (vec2<f32>(x_2852.x, x_2852.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2855 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2854.x, x_2854.y, x_2855.z, x_2855.w);
            let x_2858 : f32 = u_xlat14.y;
            u_xlat13.x = x_2858;
            let x_2860 : vec2<f32> = u_xlat55;
            let x_2863 : vec2<f32> = ((vec2<f32>(x_2860.x, x_2860.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2864 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2864.x, x_2863.x, x_2864.z, x_2863.y);
            let x_2866 : vec2<f32> = u_xlat55;
            let x_2869 : vec2<f32> = ((vec2<f32>(x_2866.x, x_2866.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2870 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2869.x, x_2870.y, x_2869.y, x_2870.w);
            let x_2873 : f32 = u_xlat10.x;
            u_xlat11.y = x_2873;
            let x_2876 : f32 = u_xlat12.y;
            u_xlat11.w = x_2876;
            let x_2878 : vec4<f32> = u_xlat11;
            let x_2879 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2878 + x_2879);
            let x_2881 : vec2<f32> = u_xlat55;
            let x_2884 : vec2<f32> = ((vec2<f32>(x_2881.y, x_2881.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2885 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2885.x, x_2884.x, x_2885.z, x_2884.y);
            let x_2887 : vec2<f32> = u_xlat55;
            let x_2890 : vec2<f32> = ((vec2<f32>(x_2887.y, x_2887.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2891 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2890.x, x_2891.y, x_2890.y, x_2891.w);
            let x_2894 : f32 = u_xlat10.y;
            u_xlat12.y = x_2894;
            let x_2896 : vec4<f32> = u_xlat12;
            let x_2897 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2896 + x_2897);
            let x_2899 : vec4<f32> = u_xlat11;
            let x_2900 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2899 / x_2900);
            let x_2902 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2902 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2904 : vec4<f32> = u_xlat12;
            let x_2905 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2904 / x_2905);
            let x_2907 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2907 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2909 : vec4<f32> = u_xlat11;
            let x_2912 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2909.w, x_2909.x, x_2909.y, x_2909.z) * vec4<f32>(x_2912.x, x_2912.x, x_2912.x, x_2912.x));
            let x_2915 : vec4<f32> = u_xlat12;
            let x_2918 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2915.x, x_2915.w, x_2915.y, x_2915.z) * vec4<f32>(x_2918.y, x_2918.y, x_2918.y, x_2918.y));
            let x_2921 : vec4<f32> = u_xlat11;
            let x_2922 : vec3<f32> = vec3<f32>(x_2921.y, x_2921.z, x_2921.w);
            let x_2923 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2922.x, x_2923.y, x_2922.y, x_2922.z);
            let x_2926 : f32 = u_xlat12.x;
            u_xlat14.y = x_2926;
            let x_2928 : vec4<f32> = u_xlat9;
            let x_2931 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y) * vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y)) + vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2934.y));
            let x_2937 : vec4<f32> = u_xlat9;
            let x_2940 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(x_2940.x, x_2940.y)) + vec2<f32>(x_2943.w, x_2943.y));
            let x_2947 : f32 = u_xlat14.y;
            u_xlat11.y = x_2947;
            let x_2950 : f32 = u_xlat12.z;
            u_xlat14.y = x_2950;
            let x_2952 : vec4<f32> = u_xlat9;
            let x_2955 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2958 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2952.x, x_2952.y, x_2952.x, x_2952.y) * vec4<f32>(x_2955.x, x_2955.y, x_2955.x, x_2955.y)) + vec4<f32>(x_2958.x, x_2958.y, x_2958.z, x_2958.y));
            let x_2961 : vec4<f32> = u_xlat9;
            let x_2964 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2967 : vec4<f32> = u_xlat14;
            let x_2969 : vec2<f32> = ((vec2<f32>(x_2961.x, x_2961.y) * vec2<f32>(x_2964.x, x_2964.y)) + vec2<f32>(x_2967.w, x_2967.y));
            let x_2970 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2969.x, x_2969.y, x_2970.z, x_2970.w);
            let x_2973 : f32 = u_xlat14.y;
            u_xlat11.z = x_2973;
            let x_2975 : vec4<f32> = u_xlat9;
            let x_2978 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2981 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2975.x, x_2975.y, x_2975.x, x_2975.y) * vec4<f32>(x_2978.x, x_2978.y, x_2978.x, x_2978.y)) + vec4<f32>(x_2981.x, x_2981.y, x_2981.x, x_2981.z));
            let x_2985 : f32 = u_xlat12.w;
            u_xlat14.y = x_2985;
            let x_2988 : vec4<f32> = u_xlat9;
            let x_2991 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_2994 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2988.x, x_2988.y, x_2988.x, x_2988.y) * vec4<f32>(x_2991.x, x_2991.y, x_2991.x, x_2991.y)) + vec4<f32>(x_2994.x, x_2994.y, x_2994.z, x_2994.y));
            let x_2998 : vec4<f32> = u_xlat9;
            let x_3001 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_3004 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2998.x, x_2998.y) * vec2<f32>(x_3001.x, x_3001.y)) + vec2<f32>(x_3004.w, x_3004.y));
            let x_3008 : f32 = u_xlat14.y;
            u_xlat11.w = x_3008;
            let x_3011 : vec4<f32> = u_xlat9;
            let x_3014 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_3017 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3011.x, x_3011.y) * vec2<f32>(x_3014.x, x_3014.y)) + vec2<f32>(x_3017.x, x_3017.w));
            let x_3020 : vec4<f32> = u_xlat14;
            let x_3021 : vec3<f32> = vec3<f32>(x_3020.x, x_3020.z, x_3020.w);
            let x_3022 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3021.x, x_3022.y, x_3021.y, x_3021.z);
            let x_3024 : vec4<f32> = u_xlat9;
            let x_3027 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_3030 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y) * vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y)) + vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3030.y));
            let x_3034 : vec4<f32> = u_xlat9;
            let x_3037 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_3040 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3034.x, x_3034.y) * vec2<f32>(x_3037.x, x_3037.y)) + vec2<f32>(x_3040.w, x_3040.y));
            let x_3044 : f32 = u_xlat11.x;
            u_xlat12.x = x_3044;
            let x_3046 : vec4<f32> = u_xlat9;
            let x_3049 : vec4<f32> = x_175.x_AdditionalShadowmapSize;
            let x_3052 : vec4<f32> = u_xlat12;
            let x_3054 : vec2<f32> = ((vec2<f32>(x_3046.x, x_3046.y) * vec2<f32>(x_3049.x, x_3049.y)) + vec2<f32>(x_3052.x, x_3052.y));
            let x_3055 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3054.x, x_3054.y, x_3055.z, x_3055.w);
            let x_3058 : vec4<f32> = u_xlat10;
            let x_3060 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3058.x, x_3058.x, x_3058.x, x_3058.x) * x_3060);
            let x_3063 : vec4<f32> = u_xlat10;
            let x_3065 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3063.y, x_3063.y, x_3063.y, x_3063.y) * x_3065);
            let x_3068 : vec4<f32> = u_xlat10;
            let x_3070 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3068.z, x_3068.z, x_3068.z, x_3068.z) * x_3070);
            let x_3072 : vec4<f32> = u_xlat10;
            let x_3074 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3072.w, x_3072.w, x_3072.w, x_3072.w) * x_3074);
            let x_3077 : vec4<f32> = u_xlat15;
            let x_3078 : vec2<f32> = vec2<f32>(x_3077.x, x_3077.y);
            let x_3080 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3078.x, x_3078.y, x_3080);
            let x_3087 : vec3<f32> = txVec43;
            let x_3089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
            u_xlat74 = x_3089;
            let x_3091 : vec4<f32> = u_xlat15;
            let x_3092 : vec2<f32> = vec2<f32>(x_3091.z, x_3091.w);
            let x_3094 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3092.x, x_3092.y, x_3094);
            let x_3101 : vec3<f32> = txVec44;
            let x_3103 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3101.xy, x_3101.z);
            u_xlat75 = x_3103;
            let x_3104 : f32 = u_xlat75;
            let x_3106 : f32 = u_xlat20.y;
            u_xlat75 = (x_3104 * x_3106);
            let x_3109 : f32 = u_xlat20.x;
            let x_3110 : f32 = u_xlat74;
            let x_3112 : f32 = u_xlat75;
            u_xlat74 = ((x_3109 * x_3110) + x_3112);
            let x_3115 : vec2<f32> = u_xlat55;
            let x_3117 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
            let x_3124 : vec3<f32> = txVec45;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat75 = x_3126;
            let x_3128 : f32 = u_xlat20.z;
            let x_3129 : f32 = u_xlat75;
            let x_3131 : f32 = u_xlat74;
            u_xlat74 = ((x_3128 * x_3129) + x_3131);
            let x_3134 : vec4<f32> = u_xlat18;
            let x_3135 : vec2<f32> = vec2<f32>(x_3134.x, x_3134.y);
            let x_3137 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
            let x_3144 : vec3<f32> = txVec46;
            let x_3146 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
            u_xlat75 = x_3146;
            let x_3148 : f32 = u_xlat20.w;
            let x_3149 : f32 = u_xlat75;
            let x_3151 : f32 = u_xlat74;
            u_xlat74 = ((x_3148 * x_3149) + x_3151);
            let x_3154 : vec4<f32> = u_xlat16;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.x, x_3154.y);
            let x_3157 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec47;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat75 = x_3166;
            let x_3168 : f32 = u_xlat21.x;
            let x_3169 : f32 = u_xlat75;
            let x_3171 : f32 = u_xlat74;
            u_xlat74 = ((x_3168 * x_3169) + x_3171);
            let x_3174 : vec4<f32> = u_xlat16;
            let x_3175 : vec2<f32> = vec2<f32>(x_3174.z, x_3174.w);
            let x_3177 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec48;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat75 = x_3186;
            let x_3188 : f32 = u_xlat21.y;
            let x_3189 : f32 = u_xlat75;
            let x_3191 : f32 = u_xlat74;
            u_xlat74 = ((x_3188 * x_3189) + x_3191);
            let x_3194 : vec4<f32> = u_xlat17;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.x, x_3194.y);
            let x_3197 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec49;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat75 = x_3206;
            let x_3208 : f32 = u_xlat21.z;
            let x_3209 : f32 = u_xlat75;
            let x_3211 : f32 = u_xlat74;
            u_xlat74 = ((x_3208 * x_3209) + x_3211);
            let x_3214 : vec4<f32> = u_xlat18;
            let x_3215 : vec2<f32> = vec2<f32>(x_3214.z, x_3214.w);
            let x_3217 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3215.x, x_3215.y, x_3217);
            let x_3224 : vec3<f32> = txVec50;
            let x_3226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3224.xy, x_3224.z);
            u_xlat75 = x_3226;
            let x_3228 : f32 = u_xlat21.w;
            let x_3229 : f32 = u_xlat75;
            let x_3231 : f32 = u_xlat74;
            u_xlat74 = ((x_3228 * x_3229) + x_3231);
            let x_3234 : vec4<f32> = u_xlat19;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.x, x_3234.y);
            let x_3237 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3244 : vec3<f32> = txVec51;
            let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
            u_xlat75 = x_3246;
            let x_3248 : f32 = u_xlat22.x;
            let x_3249 : f32 = u_xlat75;
            let x_3251 : f32 = u_xlat74;
            u_xlat74 = ((x_3248 * x_3249) + x_3251);
            let x_3254 : vec4<f32> = u_xlat19;
            let x_3255 : vec2<f32> = vec2<f32>(x_3254.z, x_3254.w);
            let x_3257 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
            let x_3264 : vec3<f32> = txVec52;
            let x_3266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
            u_xlat75 = x_3266;
            let x_3268 : f32 = u_xlat22.y;
            let x_3269 : f32 = u_xlat75;
            let x_3271 : f32 = u_xlat74;
            u_xlat74 = ((x_3268 * x_3269) + x_3271);
            let x_3274 : vec2<f32> = u_xlat34;
            let x_3276 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3274.x, x_3274.y, x_3276);
            let x_3283 : vec3<f32> = txVec53;
            let x_3285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3283.xy, x_3283.z);
            u_xlat75 = x_3285;
            let x_3287 : f32 = u_xlat22.z;
            let x_3288 : f32 = u_xlat75;
            let x_3290 : f32 = u_xlat74;
            u_xlat74 = ((x_3287 * x_3288) + x_3290);
            let x_3293 : vec2<f32> = u_xlat63;
            let x_3295 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3293.x, x_3293.y, x_3295);
            let x_3302 : vec3<f32> = txVec54;
            let x_3304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3302.xy, x_3302.z);
            u_xlat75 = x_3304;
            let x_3306 : f32 = u_xlat22.w;
            let x_3307 : f32 = u_xlat75;
            let x_3309 : f32 = u_xlat74;
            u_xlat74 = ((x_3306 * x_3307) + x_3309);
            let x_3312 : vec4<f32> = u_xlat14;
            let x_3313 : vec2<f32> = vec2<f32>(x_3312.x, x_3312.y);
            let x_3315 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
            let x_3322 : vec3<f32> = txVec55;
            let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
            u_xlat75 = x_3324;
            let x_3326 : f32 = u_xlat10.x;
            let x_3327 : f32 = u_xlat75;
            let x_3329 : f32 = u_xlat74;
            u_xlat74 = ((x_3326 * x_3327) + x_3329);
            let x_3332 : vec4<f32> = u_xlat14;
            let x_3333 : vec2<f32> = vec2<f32>(x_3332.z, x_3332.w);
            let x_3335 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
            let x_3342 : vec3<f32> = txVec56;
            let x_3344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
            u_xlat75 = x_3344;
            let x_3346 : f32 = u_xlat10.y;
            let x_3347 : f32 = u_xlat75;
            let x_3349 : f32 = u_xlat74;
            u_xlat74 = ((x_3346 * x_3347) + x_3349);
            let x_3352 : vec2<f32> = u_xlat58;
            let x_3354 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3361 : vec3<f32> = txVec57;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat75 = x_3363;
            let x_3365 : f32 = u_xlat10.z;
            let x_3366 : f32 = u_xlat75;
            let x_3368 : f32 = u_xlat74;
            u_xlat74 = ((x_3365 * x_3366) + x_3368);
            let x_3371 : vec4<f32> = u_xlat9;
            let x_3372 : vec2<f32> = vec2<f32>(x_3371.x, x_3371.y);
            let x_3374 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3372.x, x_3372.y, x_3374);
            let x_3381 : vec3<f32> = txVec58;
            let x_3383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3381.xy, x_3381.z);
            u_xlat75 = x_3383;
            let x_3385 : f32 = u_xlat10.w;
            let x_3386 : f32 = u_xlat75;
            let x_3388 : f32 = u_xlat74;
            u_xlat51.x = ((x_3385 * x_3386) + x_3388);
          }
        }
      } else {
        let x_3393 : vec4<f32> = u_xlat8;
        let x_3394 : vec2<f32> = vec2<f32>(x_3393.x, x_3393.y);
        let x_3396 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
        let x_3403 : vec3<f32> = txVec59;
        let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
        u_xlat51.x = x_3405;
      }
      let x_3407 : i32 = u_xlati72;
      let x_3409 : f32 = x_175.x_AdditionalShadowParams[x_3407].x;
      u_xlat74 = (1.0f + -(x_3409));
      let x_3413 : f32 = u_xlat51.x;
      let x_3414 : i32 = u_xlati72;
      let x_3416 : f32 = x_175.x_AdditionalShadowParams[x_3414].x;
      let x_3418 : f32 = u_xlat74;
      u_xlat51.x = ((x_3413 * x_3416) + x_3418);
      let x_3422 : f32 = u_xlat8.z;
      u_xlatb74 = (0.0f >= x_3422);
      let x_3426 : f32 = u_xlat8.z;
      u_xlatb75 = (x_3426 >= 1.0f);
      let x_3428 : bool = u_xlatb74;
      let x_3429 : bool = u_xlatb75;
      u_xlatb74 = (x_3428 | x_3429);
      let x_3431 : bool = u_xlatb74;
      if (x_3431) {
        x_3432 = 1.0f;
      } else {
        let x_3437 : f32 = u_xlat51.x;
        x_3432 = x_3437;
      }
      let x_3438 : f32 = x_3432;
      u_xlat51.x = x_3438;
    } else {
      u_xlat51.x = 1.0f;
    }
    let x_3443 : f32 = u_xlat51.x;
    u_xlat74 = (-(x_3443) + 1.0f);
    let x_3446 : f32 = u_xlat70;
    let x_3447 : f32 = u_xlat74;
    let x_3450 : f32 = u_xlat51.x;
    u_xlat51.x = ((x_3446 * x_3447) + x_3450);
    let x_3454 : i32 = u_xlati72;
    u_xlati74 = (1i << bitcast<u32>((x_3454 & 31i)));
    let x_3458 : i32 = u_xlati74;
    let x_3461 : f32 = x_1765.x_AdditionalLightsCookieEnableBits;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_3458) & bitcast<u32>(x_3461)));
    let x_3465 : i32 = u_xlati74;
    if ((x_3465 != 0i)) {
      let x_3469 : i32 = u_xlati72;
      let x_3471 : f32 = x_1765.x_AdditionalLightsLightTypes[x_3469].el;
      u_xlati74 = i32(x_3471);
      let x_3474 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_3474 != 0i));
      let x_3478 : i32 = u_xlati72;
      u_xlati76 = (x_3478 << bitcast<u32>(2i));
      let x_3480 : i32 = u_xlati75;
      if ((x_3480 != 0i)) {
        let x_3484 : vec4<f32> = vs_TEXCOORD2;
        let x_3486 : i32 = u_xlati76;
        let x_3489 : i32 = u_xlati76;
        let x_3493 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3486 + 1i) / 4i)][((x_3489 + 1i) % 4i)];
        let x_3495 : vec3<f32> = (vec3<f32>(x_3484.y, x_3484.y, x_3484.y) * vec3<f32>(x_3493.x, x_3493.y, x_3493.w));
        let x_3496 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3495.x, x_3495.y, x_3495.z, x_3496.w);
        let x_3498 : i32 = u_xlati76;
        let x_3500 : i32 = u_xlati76;
        let x_3503 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[(x_3498 / 4i)][(x_3500 % 4i)];
        let x_3505 : vec4<f32> = vs_TEXCOORD2;
        let x_3508 : vec4<f32> = u_xlat8;
        let x_3510 : vec3<f32> = ((vec3<f32>(x_3503.x, x_3503.y, x_3503.w) * vec3<f32>(x_3505.x, x_3505.x, x_3505.x)) + vec3<f32>(x_3508.x, x_3508.y, x_3508.z));
        let x_3511 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3510.x, x_3510.y, x_3510.z, x_3511.w);
        let x_3513 : i32 = u_xlati76;
        let x_3516 : i32 = u_xlati76;
        let x_3520 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3513 + 2i) / 4i)][((x_3516 + 2i) % 4i)];
        let x_3522 : vec4<f32> = vs_TEXCOORD2;
        let x_3525 : vec4<f32> = u_xlat8;
        let x_3527 : vec3<f32> = ((vec3<f32>(x_3520.x, x_3520.y, x_3520.w) * vec3<f32>(x_3522.z, x_3522.z, x_3522.z)) + vec3<f32>(x_3525.x, x_3525.y, x_3525.z));
        let x_3528 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3527.x, x_3527.y, x_3527.z, x_3528.w);
        let x_3530 : vec4<f32> = u_xlat8;
        let x_3532 : i32 = u_xlati76;
        let x_3535 : i32 = u_xlati76;
        let x_3539 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3532 + 3i) / 4i)][((x_3535 + 3i) % 4i)];
        let x_3541 : vec3<f32> = (vec3<f32>(x_3530.x, x_3530.y, x_3530.z) + vec3<f32>(x_3539.x, x_3539.y, x_3539.w));
        let x_3542 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3541.x, x_3541.y, x_3541.z, x_3542.w);
        let x_3544 : vec4<f32> = u_xlat8;
        let x_3546 : vec4<f32> = u_xlat8;
        let x_3548 : vec2<f32> = (vec2<f32>(x_3544.x, x_3544.y) / vec2<f32>(x_3546.z, x_3546.z));
        let x_3549 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3548.x, x_3548.y, x_3549.z, x_3549.w);
        let x_3551 : vec4<f32> = u_xlat8;
        let x_3554 : vec2<f32> = ((vec2<f32>(x_3551.x, x_3551.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3555 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3554.x, x_3554.y, x_3555.z, x_3555.w);
        let x_3557 : vec4<f32> = u_xlat8;
        let x_3561 : vec2<f32> = clamp(vec2<f32>(x_3557.x, x_3557.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3562 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3561.x, x_3561.y, x_3562.z, x_3562.w);
        let x_3564 : i32 = u_xlati72;
        let x_3566 : vec4<f32> = x_1765.x_AdditionalLightsCookieAtlasUVRects[x_3564];
        let x_3568 : vec4<f32> = u_xlat8;
        let x_3571 : i32 = u_xlati72;
        let x_3573 : vec4<f32> = x_1765.x_AdditionalLightsCookieAtlasUVRects[x_3571];
        let x_3575 : vec2<f32> = ((vec2<f32>(x_3566.x, x_3566.y) * vec2<f32>(x_3568.x, x_3568.y)) + vec2<f32>(x_3573.z, x_3573.w));
        let x_3576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3575.x, x_3575.y, x_3576.z, x_3576.w);
      } else {
        let x_3579 : i32 = u_xlati74;
        u_xlatb74 = (x_3579 == 1i);
        let x_3581 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_3581);
        let x_3583 : i32 = u_xlati74;
        if ((x_3583 != 0i)) {
          let x_3587 : vec4<f32> = vs_TEXCOORD2;
          let x_3589 : i32 = u_xlati76;
          let x_3592 : i32 = u_xlati76;
          let x_3596 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3589 + 1i) / 4i)][((x_3592 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_3587.y, x_3587.y) * vec2<f32>(x_3596.x, x_3596.y));
          let x_3599 : i32 = u_xlati76;
          let x_3601 : i32 = u_xlati76;
          let x_3604 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[(x_3599 / 4i)][(x_3601 % 4i)];
          let x_3606 : vec4<f32> = vs_TEXCOORD2;
          let x_3609 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3604.x, x_3604.y) * vec2<f32>(x_3606.x, x_3606.x)) + x_3609);
          let x_3611 : i32 = u_xlati76;
          let x_3614 : i32 = u_xlati76;
          let x_3618 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3611 + 2i) / 4i)][((x_3614 + 2i) % 4i)];
          let x_3620 : vec4<f32> = vs_TEXCOORD2;
          let x_3623 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3618.x, x_3618.y) * vec2<f32>(x_3620.z, x_3620.z)) + x_3623);
          let x_3625 : vec2<f32> = u_xlat54;
          let x_3626 : i32 = u_xlati76;
          let x_3629 : i32 = u_xlati76;
          let x_3633 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3626 + 3i) / 4i)][((x_3629 + 3i) % 4i)];
          u_xlat54 = (x_3625 + vec2<f32>(x_3633.x, x_3633.y));
          let x_3636 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3636 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3639 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_3639);
          let x_3641 : i32 = u_xlati72;
          let x_3643 : vec4<f32> = x_1765.x_AdditionalLightsCookieAtlasUVRects[x_3641];
          let x_3645 : vec2<f32> = u_xlat54;
          let x_3647 : i32 = u_xlati72;
          let x_3649 : vec4<f32> = x_1765.x_AdditionalLightsCookieAtlasUVRects[x_3647];
          let x_3651 : vec2<f32> = ((vec2<f32>(x_3643.x, x_3643.y) * x_3645) + vec2<f32>(x_3649.z, x_3649.w));
          let x_3652 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3651.x, x_3651.y, x_3652.z, x_3652.w);
        } else {
          let x_3655 : vec4<f32> = vs_TEXCOORD2;
          let x_3657 : i32 = u_xlati76;
          let x_3660 : i32 = u_xlati76;
          let x_3664 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3657 + 1i) / 4i)][((x_3660 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3655.y, x_3655.y, x_3655.y, x_3655.y) * x_3664);
          let x_3666 : i32 = u_xlati76;
          let x_3668 : i32 = u_xlati76;
          let x_3671 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[(x_3666 / 4i)][(x_3668 % 4i)];
          let x_3672 : vec4<f32> = vs_TEXCOORD2;
          let x_3675 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3671 * vec4<f32>(x_3672.x, x_3672.x, x_3672.x, x_3672.x)) + x_3675);
          let x_3677 : i32 = u_xlati76;
          let x_3680 : i32 = u_xlati76;
          let x_3684 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3677 + 2i) / 4i)][((x_3680 + 2i) % 4i)];
          let x_3685 : vec4<f32> = vs_TEXCOORD2;
          let x_3688 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3684 * vec4<f32>(x_3685.z, x_3685.z, x_3685.z, x_3685.z)) + x_3688);
          let x_3690 : vec4<f32> = u_xlat9;
          let x_3691 : i32 = u_xlati76;
          let x_3694 : i32 = u_xlati76;
          let x_3698 : vec4<f32> = x_1765.x_AdditionalLightsWorldToLights[((x_3691 + 3i) / 4i)][((x_3694 + 3i) % 4i)];
          u_xlat9 = (x_3690 + x_3698);
          let x_3700 : vec4<f32> = u_xlat9;
          let x_3702 : vec4<f32> = u_xlat9;
          let x_3704 : vec3<f32> = (vec3<f32>(x_3700.x, x_3700.y, x_3700.z) / vec3<f32>(x_3702.w, x_3702.w, x_3702.w));
          let x_3705 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3704.x, x_3704.y, x_3704.z, x_3705.w);
          let x_3707 : vec4<f32> = u_xlat9;
          let x_3709 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(vec3<f32>(x_3707.x, x_3707.y, x_3707.z), vec3<f32>(x_3709.x, x_3709.y, x_3709.z));
          let x_3712 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3712);
          let x_3714 : f32 = u_xlat74;
          let x_3716 : vec4<f32> = u_xlat9;
          let x_3718 : vec3<f32> = (vec3<f32>(x_3714, x_3714, x_3714) * vec3<f32>(x_3716.x, x_3716.y, x_3716.z));
          let x_3719 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3718.x, x_3718.y, x_3718.z, x_3719.w);
          let x_3721 : vec4<f32> = u_xlat9;
          u_xlat74 = dot(abs(vec3<f32>(x_3721.x, x_3721.y, x_3721.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3726 : f32 = u_xlat74;
          u_xlat74 = max(x_3726, 0.00000099999999747524f);
          let x_3729 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3729);
          let x_3731 : f32 = u_xlat74;
          let x_3733 : vec4<f32> = u_xlat9;
          let x_3735 : vec3<f32> = (vec3<f32>(x_3731, x_3731, x_3731) * vec3<f32>(x_3733.z, x_3733.x, x_3733.y));
          let x_3736 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3735.x, x_3735.y, x_3735.z, x_3736.w);
          let x_3739 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3739);
          let x_3743 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3743, 0.0f, 1.0f);
          let x_3747 : vec4<f32> = u_xlat10;
          let x_3749 : vec4<bool> = (vec4<f32>(x_3747.y, x_3747.z, x_3747.y, x_3747.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3749.x, x_3749.y);
          let x_3752 : bool = u_xlatb54.x;
          if (x_3752) {
            let x_3757 : f32 = u_xlat10.x;
            x_3753 = x_3757;
          } else {
            let x_3760 : f32 = u_xlat10.x;
            x_3753 = -(x_3760);
          }
          let x_3762 : f32 = x_3753;
          u_xlat54.x = x_3762;
          let x_3765 : bool = u_xlatb54.y;
          if (x_3765) {
            let x_3770 : f32 = u_xlat10.x;
            x_3766 = x_3770;
          } else {
            let x_3773 : f32 = u_xlat10.x;
            x_3766 = -(x_3773);
          }
          let x_3775 : f32 = x_3766;
          u_xlat54.y = x_3775;
          let x_3777 : vec4<f32> = u_xlat9;
          let x_3779 : f32 = u_xlat74;
          let x_3782 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_3777.x, x_3777.y) * vec2<f32>(x_3779, x_3779)) + x_3782);
          let x_3784 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_3784 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3787 : vec2<f32> = u_xlat54;
          u_xlat54 = clamp(x_3787, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3791 : i32 = u_xlati72;
          let x_3793 : vec4<f32> = x_1765.x_AdditionalLightsCookieAtlasUVRects[x_3791];
          let x_3795 : vec2<f32> = u_xlat54;
          let x_3797 : i32 = u_xlati72;
          let x_3799 : vec4<f32> = x_1765.x_AdditionalLightsCookieAtlasUVRects[x_3797];
          let x_3801 : vec2<f32> = ((vec2<f32>(x_3793.x, x_3793.y) * x_3795) + vec2<f32>(x_3799.z, x_3799.w));
          let x_3802 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3801.x, x_3801.y, x_3802.z, x_3802.w);
        }
      }
      let x_3809 : vec4<f32> = u_xlat8;
      let x_3811 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3809.x, x_3809.y), 0.0f);
      u_xlat8 = x_3811;
      let x_3813 : bool = u_xlatb5.y;
      if (x_3813) {
        let x_3818 : f32 = u_xlat8.w;
        x_3814 = x_3818;
      } else {
        let x_3821 : f32 = u_xlat8.x;
        x_3814 = x_3821;
      }
      let x_3822 : f32 = x_3814;
      u_xlat74 = x_3822;
      let x_3824 : bool = u_xlatb5.x;
      if (x_3824) {
        let x_3828 : vec4<f32> = u_xlat8;
        x_3825 = vec3<f32>(x_3828.x, x_3828.y, x_3828.z);
      } else {
        let x_3831 : f32 = u_xlat74;
        x_3825 = vec3<f32>(x_3831, x_3831, x_3831);
      }
      let x_3833 : vec3<f32> = x_3825;
      let x_3834 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3833.x, x_3833.y, x_3833.z, x_3834.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3840 : vec4<f32> = u_xlat8;
    let x_3842 : i32 = u_xlati72;
    let x_3844 : vec4<f32> = x_2005.x_AdditionalLightsColor[x_3842];
    let x_3846 : vec3<f32> = (vec3<f32>(x_3840.x, x_3840.y, x_3840.z) * vec3<f32>(x_3844.x, x_3844.y, x_3844.z));
    let x_3847 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3846.x, x_3846.y, x_3846.z, x_3847.w);
    let x_3849 : f32 = u_xlat73;
    let x_3851 : f32 = u_xlat51.x;
    u_xlat72 = (x_3849 * x_3851);
    let x_3853 : f32 = u_xlat72;
    let x_3855 : vec4<f32> = u_xlat8;
    let x_3857 : vec3<f32> = (vec3<f32>(x_3853, x_3853, x_3853) * vec3<f32>(x_3855.x, x_3855.y, x_3855.z));
    let x_3858 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3857.x, x_3857.y, x_3857.z, x_3858.w);
    let x_3860 : vec4<f32> = u_xlat2;
    let x_3862 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_3860.x, x_3860.y, x_3860.z), vec3<f32>(x_3862.x, x_3862.y, x_3862.z));
    let x_3865 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3865, 0.0f, 1.0f);
    let x_3867 : f32 = u_xlat72;
    let x_3869 : vec4<f32> = u_xlat8;
    let x_3871 : vec3<f32> = (vec3<f32>(x_3867, x_3867, x_3867) * vec3<f32>(x_3869.x, x_3869.y, x_3869.z));
    let x_3872 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3871.x, x_3871.y, x_3871.z, x_3872.w);
    let x_3874 : vec4<f32> = u_xlat7;
    let x_3876 : vec4<f32> = u_xlat1;
    let x_3879 : vec4<f32> = u_xlat6;
    let x_3881 : vec3<f32> = ((vec3<f32>(x_3874.x, x_3874.y, x_3874.z) * vec3<f32>(x_3876.x, x_3876.y, x_3876.z)) + vec3<f32>(x_3879.x, x_3879.y, x_3879.z));
    let x_3882 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3881.x, x_3881.y, x_3881.z, x_3882.w);

    continuing {
      let x_3884 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3884 + bitcast<u32>(1i));
    }
  }
  let x_3886 : vec4<f32> = u_xlat4;
  let x_3888 : vec4<f32> = u_xlat1;
  let x_3891 : vec4<f32> = u_xlat3;
  let x_3893 : vec3<f32> = ((vec3<f32>(x_3886.x, x_3886.y, x_3886.z) * vec3<f32>(x_3888.x, x_3888.y, x_3888.z)) + vec3<f32>(x_3891.x, x_3891.y, x_3891.z));
  let x_3894 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3893.x, x_3893.y, x_3893.z, x_3894.w);
  let x_3896 : vec4<f32> = u_xlat6;
  let x_3898 : vec4<f32> = u_xlat1;
  let x_3900 : vec3<f32> = (vec3<f32>(x_3896.x, x_3896.y, x_3896.z) + vec3<f32>(x_3898.x, x_3898.y, x_3898.z));
  let x_3901 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3900.x, x_3900.y, x_3900.z, x_3901.w);
  let x_3904 : f32 = u_xlat0.x;
  let x_3906 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3904 * -(x_3906));
  let x_3911 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_3911);
  let x_3914 : vec4<f32> = u_xlat1;
  let x_3917 : vec4<f32> = x_44.unity_FogColor;
  let x_3920 : vec3<f32> = (vec3<f32>(x_3914.x, x_3914.y, x_3914.z) + -(vec3<f32>(x_3917.x, x_3917.y, x_3917.z)));
  let x_3921 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3920.x, x_3920.y, x_3920.z, x_3921.w);
  let x_3925 : vec4<f32> = u_xlat0;
  let x_3927 : vec4<f32> = u_xlat1;
  let x_3931 : vec4<f32> = x_44.unity_FogColor;
  let x_3933 : vec3<f32> = ((vec3<f32>(x_3925.x, x_3925.x, x_3925.x) * vec3<f32>(x_3927.x, x_3927.y, x_3927.z)) + vec3<f32>(x_3931.x, x_3931.y, x_3931.z));
  let x_3934 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3933.x, x_3933.y, x_3933.z, x_3934.w);
  let x_3936 : bool = u_xlatb46;
  let x_3937 : f32 = u_xlat23;
  SV_Target0.w = select(1.0f, x_3937, x_3936);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


