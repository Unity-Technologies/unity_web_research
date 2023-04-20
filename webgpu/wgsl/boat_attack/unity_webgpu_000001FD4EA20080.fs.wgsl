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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb23 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu23 : u32;

var<private> u_xlati23 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

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

var<private> u_xlatb1 : bool;

@group(1) @binding(5) var<uniform> x_1719 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_1841 : UnityPerDraw;

var<private> u_xlatu71 : u32;

var<private> u_xlati72 : i32;

var<private> u_xlati71 : i32;

@group(1) @binding(1) var<uniform> x_1961 : AdditionalLights;

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

var<private> u_xlatu1 : u32;

var<private> u_xlatb71 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
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
  var x_1802 : f32;
  var x_1814 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2098 : f32;
  var x_2107 : f32;
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
  var x_3699 : f32;
  var x_3712 : f32;
  var x_3760 : f32;
  var x_3772 : vec3<f32>;
  var x_3857 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat23 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat46 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat69 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat69;
  let x_90 : f32 = u_xlat46;
  u_xlat46 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat46;
  u_xlat46 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat23;
  let x_97 : f32 = u_xlat46;
  u_xlat23 = (x_96 / x_97);
  let x_99 : f32 = u_xlat23;
  u_xlat23 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat23;
  u_xlat23 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb46 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb46;
  if (x_109) {
    let x_113 : f32 = u_xlat23;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat23 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat23;
  u_xlatb23 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb23;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat23 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat23;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_149 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  let x_192 : vec3<f32> = (x_187 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : vec4<f32> = u_xlat5;
  let x_210 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_224 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_224 < x_227);
  let x_230 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_246);
  let x_252 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_252);
  let x_256 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_256);
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + vec3<f32>(x_261.y, x_261.z, x_261.w));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat3;
  let x_269 : vec3<f32> = max(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(x_272, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_278 : f32 = u_xlat23;
  u_xlat23 = (-(x_278) + 4.0f);
  let x_283 : f32 = u_xlat23;
  u_xlatu23 = u32(x_283);
  let x_287 : u32 = u_xlatu23;
  u_xlati23 = (bitcast<i32>(x_287) << bitcast<u32>(2i));
  let x_290 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : i32 = u_xlati23;
  let x_295 : i32 = u_xlati23;
  let x_299 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_292 + 1i) / 4i)][((x_295 + 1i) % 4i)];
  let x_301 : vec3<f32> = (vec3<f32>(x_290.y, x_290.y, x_290.y) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : i32 = u_xlati23;
  let x_306 : i32 = u_xlati23;
  let x_309 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_304 / 4i)][(x_306 % 4i)];
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : i32 = u_xlati23;
  let x_322 : i32 = u_xlati23;
  let x_326 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_319 + 2i) / 4i)][((x_322 + 2i) % 4i)];
  let x_328 : vec3<f32> = vs_TEXCOORD1;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.z, x_328.z, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : i32 = u_xlati23;
  let x_341 : i32 = u_xlati23;
  let x_345 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_338 + 3i) / 4i)][((x_341 + 3i) % 4i)];
  let x_347 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_356 : vec2<f32> = vs_TEXCOORD7;
  let x_358 : f32 = x_27.x_GlobalMipBias.x;
  let x_359 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_356, x_358);
  u_xlat4 = x_359;
  let x_364 : vec2<f32> = vs_TEXCOORD7;
  let x_366 : f32 = x_27.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_364, x_366);
  let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_375 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec3<f32> = u_xlat2;
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(x_378, vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : f32 = u_xlat23;
  u_xlat23 = (x_382 + 0.5f);
  let x_384 : f32 = u_xlat23;
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = (vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat4.w;
  u_xlat23 = max(x_392, 0.00009999999747378752f);
  let x_394 : vec4<f32> = u_xlat4;
  let x_396 : f32 = u_xlat23;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) / vec3<f32>(x_396, x_396, x_396));
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_403 : f32 = x_158.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_403);
  let x_405 : bool = u_xlatb23;
  if (x_405) {
    let x_409 : f32 = x_158.x_MainLightShadowParams.y;
    u_xlatb23 = (x_409 == 1.0f);
    let x_411 : bool = u_xlatb23;
    if (x_411) {
      let x_414 : vec4<f32> = u_xlat3;
      let x_418 : vec4<f32> = x_158.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_414.x, x_414.y, x_414.x, x_414.y) + x_418);
      let x_422 : vec4<f32> = u_xlat5;
      let x_423 : vec2<f32> = vec2<f32>(x_422.x, x_422.y);
      let x_425 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_423.x, x_423.y, x_425);
      let x_437 : vec3<f32> = txVec0;
      let x_439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_437.xy, x_437.z);
      u_xlat6.x = x_439;
      let x_442 : vec4<f32> = u_xlat5;
      let x_443 : vec2<f32> = vec2<f32>(x_442.z, x_442.w);
      let x_445 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_443.x, x_443.y, x_445);
      let x_452 : vec3<f32> = txVec1;
      let x_454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_452.xy, x_452.z);
      u_xlat6.y = x_454;
      let x_456 : vec4<f32> = u_xlat3;
      let x_460 : vec4<f32> = x_158.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_456.x, x_456.y, x_456.x, x_456.y) + x_460);
      let x_463 : vec4<f32> = u_xlat5;
      let x_464 : vec2<f32> = vec2<f32>(x_463.x, x_463.y);
      let x_466 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_464.x, x_464.y, x_466);
      let x_473 : vec3<f32> = txVec2;
      let x_475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_473.xy, x_473.z);
      u_xlat6.z = x_475;
      let x_478 : vec4<f32> = u_xlat5;
      let x_479 : vec2<f32> = vec2<f32>(x_478.z, x_478.w);
      let x_481 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_479.x, x_479.y, x_481);
      let x_488 : vec3<f32> = txVec3;
      let x_490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_488.xy, x_488.z);
      u_xlat6.w = x_490;
      let x_492 : vec4<f32> = u_xlat6;
      u_xlat23 = dot(x_492, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_499 : f32 = x_158.x_MainLightShadowParams.y;
      u_xlatb69 = (x_499 == 2.0f);
      let x_501 : bool = u_xlatb69;
      if (x_501) {
        let x_504 : vec4<f32> = u_xlat3;
        let x_508 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_512 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(x_508.z, x_508.w)) + vec2<f32>(0.5f, 0.5f));
        let x_513 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_515 : vec4<f32> = u_xlat5;
        let x_517 : vec2<f32> = floor(vec2<f32>(x_515.x, x_515.y));
        let x_518 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_522 : vec4<f32> = u_xlat3;
        let x_525 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_528 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_525.z, x_525.w)) + -(vec2<f32>(x_528.x, x_528.y)));
        let x_532 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_532.x, x_532.x, x_532.y, x_532.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_537 : vec4<f32> = u_xlat6;
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_537.x, x_537.x, x_537.z, x_537.z) * vec4<f32>(x_539.x, x_539.x, x_539.z, x_539.z));
        let x_542 : vec4<f32> = u_xlat7;
        let x_546 : vec2<f32> = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_546.x, x_547.y, x_546.y, x_547.w);
        let x_549 : vec4<f32> = u_xlat7;
        let x_552 : vec2<f32> = u_xlat51;
        let x_554 : vec2<f32> = ((vec2<f32>(x_549.x, x_549.z) * vec2<f32>(0.5f, 0.5f)) + -(x_552));
        let x_555 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_558 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_558) + vec2<f32>(1.0f, 1.0f));
        let x_563 : vec2<f32> = u_xlat51;
        let x_565 : vec2<f32> = min(x_563, vec2<f32>(0.0f, 0.0f));
        let x_566 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat8;
        let x_571 : vec4<f32> = u_xlat8;
        let x_574 : vec2<f32> = u_xlat53;
        let x_575 : vec2<f32> = ((-(vec2<f32>(x_568.x, x_568.y)) * vec2<f32>(x_571.x, x_571.y)) + x_574);
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_578 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_578, vec2<f32>(0.0f, 0.0f));
        let x_580 : vec2<f32> = u_xlat51;
        let x_582 : vec2<f32> = u_xlat51;
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_580) * x_582) + vec2<f32>(x_584.y, x_584.w));
        let x_587 : vec4<f32> = u_xlat8;
        let x_589 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) + vec2<f32>(1.0f, 1.0f));
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_592 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_592 + vec2<f32>(1.0f, 1.0f));
        let x_595 : vec4<f32> = u_xlat7;
        let x_599 : vec2<f32> = (vec2<f32>(x_595.x, x_595.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec2<f32> = u_xlat53;
        let x_603 : vec2<f32> = (x_602 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat8;
        let x_608 : vec2<f32> = (vec2<f32>(x_606.x, x_606.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_612 : vec2<f32> = u_xlat51;
        let x_613 : vec2<f32> = (x_612 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_616.y, x_616.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_620 : f32 = u_xlat8.x;
        u_xlat9.z = x_620;
        let x_623 : f32 = u_xlat51.x;
        u_xlat9.w = x_623;
        let x_626 : f32 = u_xlat10.x;
        u_xlat7.z = x_626;
        let x_629 : f32 = u_xlat6.x;
        u_xlat7.w = x_629;
        let x_632 : vec4<f32> = u_xlat7;
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_632.z, x_632.w, x_632.x, x_632.z) + vec4<f32>(x_634.z, x_634.w, x_634.x, x_634.z));
        let x_638 : f32 = u_xlat9.y;
        u_xlat8.z = x_638;
        let x_641 : f32 = u_xlat51.y;
        u_xlat8.w = x_641;
        let x_644 : f32 = u_xlat7.y;
        u_xlat10.z = x_644;
        let x_647 : f32 = u_xlat6.z;
        u_xlat10.w = x_647;
        let x_649 : vec4<f32> = u_xlat8;
        let x_651 : vec4<f32> = u_xlat10;
        let x_653 : vec3<f32> = (vec3<f32>(x_649.z, x_649.y, x_649.w) + vec3<f32>(x_651.z, x_651.y, x_651.w));
        let x_654 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat7;
        let x_658 : vec4<f32> = u_xlat11;
        let x_660 : vec3<f32> = (vec3<f32>(x_656.x, x_656.z, x_656.w) / vec3<f32>(x_658.z, x_658.w, x_658.y));
        let x_661 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
        let x_663 : vec4<f32> = u_xlat7;
        let x_668 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat10;
        let x_673 : vec4<f32> = u_xlat6;
        let x_675 : vec3<f32> = (vec3<f32>(x_671.z, x_671.y, x_671.w) / vec3<f32>(x_673.x, x_673.y, x_673.z));
        let x_676 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat7;
        let x_686 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_688 : vec3<f32> = (vec3<f32>(x_683.y, x_683.x, x_683.z) * vec3<f32>(x_686.x, x_686.x, x_686.x));
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_696 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_694.y, x_694.y, x_694.y));
        let x_697 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_700 : f32 = u_xlat8.x;
        u_xlat7.w = x_700;
        let x_702 : vec4<f32> = u_xlat5;
        let x_705 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_708 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y) * vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y)) + vec4<f32>(x_708.y, x_708.w, x_708.x, x_708.w));
        let x_711 : vec4<f32> = u_xlat5;
        let x_714 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_711.x, x_711.y) * vec2<f32>(x_714.x, x_714.y)) + vec2<f32>(x_717.z, x_717.w));
        let x_721 : f32 = u_xlat7.y;
        u_xlat8.w = x_721;
        let x_723 : vec4<f32> = u_xlat8;
        let x_724 : vec2<f32> = vec2<f32>(x_723.y, x_723.z);
        let x_725 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_725.x, x_724.x, x_725.z, x_724.y);
        let x_727 : vec4<f32> = u_xlat5;
        let x_730 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y) * vec4<f32>(x_730.x, x_730.y, x_730.x, x_730.y)) + vec4<f32>(x_733.x, x_733.y, x_733.z, x_733.y));
        let x_736 : vec4<f32> = u_xlat5;
        let x_739 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y) * vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y)) + vec4<f32>(x_742.w, x_742.y, x_742.w, x_742.z));
        let x_745 : vec4<f32> = u_xlat5;
        let x_748 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y) * vec4<f32>(x_748.x, x_748.y, x_748.x, x_748.y)) + vec4<f32>(x_751.x, x_751.w, x_751.z, x_751.w));
        let x_755 : vec4<f32> = u_xlat6;
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_755.x, x_755.x, x_755.x, x_755.y) * vec4<f32>(x_757.z, x_757.w, x_757.y, x_757.z));
        let x_761 : vec4<f32> = u_xlat6;
        let x_763 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_761.y, x_761.y, x_761.z, x_761.z) * x_763);
        let x_766 : f32 = u_xlat6.z;
        let x_768 : f32 = u_xlat11.y;
        u_xlat69 = (x_766 * x_768);
        let x_771 : vec4<f32> = u_xlat9;
        let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
        let x_774 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec4;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat1.x = x_783;
        let x_786 : vec4<f32> = u_xlat9;
        let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
        let x_789 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_797 : vec3<f32> = txVec5;
        let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
        u_xlat71 = x_799;
        let x_800 : f32 = u_xlat71;
        let x_802 : f32 = u_xlat12.y;
        u_xlat71 = (x_800 * x_802);
        let x_805 : f32 = u_xlat12.x;
        let x_807 : f32 = u_xlat1.x;
        let x_809 : f32 = u_xlat71;
        u_xlat1.x = ((x_805 * x_807) + x_809);
        let x_813 : vec2<f32> = u_xlat51;
        let x_815 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_813.x, x_813.y, x_815);
        let x_822 : vec3<f32> = txVec6;
        let x_824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_822.xy, x_822.z);
        u_xlat71 = x_824;
        let x_826 : f32 = u_xlat12.z;
        let x_827 : f32 = u_xlat71;
        let x_830 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_826 * x_827) + x_830);
        let x_834 : vec4<f32> = u_xlat8;
        let x_835 : vec2<f32> = vec2<f32>(x_834.x, x_834.y);
        let x_837 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_835.x, x_835.y, x_837);
        let x_844 : vec3<f32> = txVec7;
        let x_846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_844.xy, x_844.z);
        u_xlat71 = x_846;
        let x_848 : f32 = u_xlat12.w;
        let x_849 : f32 = u_xlat71;
        let x_852 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_848 * x_849) + x_852);
        let x_856 : vec4<f32> = u_xlat10;
        let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
        let x_859 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec8;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_866.xy, x_866.z);
        u_xlat71 = x_868;
        let x_870 : f32 = u_xlat13.x;
        let x_871 : f32 = u_xlat71;
        let x_874 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_870 * x_871) + x_874);
        let x_878 : vec4<f32> = u_xlat10;
        let x_879 : vec2<f32> = vec2<f32>(x_878.z, x_878.w);
        let x_881 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec9;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
        u_xlat71 = x_890;
        let x_892 : f32 = u_xlat13.y;
        let x_893 : f32 = u_xlat71;
        let x_896 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_892 * x_893) + x_896);
        let x_900 : vec4<f32> = u_xlat8;
        let x_901 : vec2<f32> = vec2<f32>(x_900.z, x_900.w);
        let x_903 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec10;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat71 = x_912;
        let x_914 : f32 = u_xlat13.z;
        let x_915 : f32 = u_xlat71;
        let x_918 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_914 * x_915) + x_918);
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
        let x_925 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec11;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
        u_xlat71 = x_934;
        let x_936 : f32 = u_xlat13.w;
        let x_937 : f32 = u_xlat71;
        let x_940 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_936 * x_937) + x_940);
        let x_944 : vec4<f32> = u_xlat7;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec12;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat71 = x_956;
        let x_957 : f32 = u_xlat69;
        let x_958 : f32 = u_xlat71;
        let x_961 : f32 = u_xlat1.x;
        u_xlat23 = ((x_957 * x_958) + x_961);
      } else {
        let x_964 : vec4<f32> = u_xlat3;
        let x_967 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_970 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_967.z, x_967.w)) + vec2<f32>(0.5f, 0.5f));
        let x_971 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat5;
        let x_975 : vec2<f32> = floor(vec2<f32>(x_973.x, x_973.y));
        let x_976 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat3;
        let x_981 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_984 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_978.x, x_978.y) * vec2<f32>(x_981.z, x_981.w)) + -(vec2<f32>(x_984.x, x_984.y)));
        let x_988 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_988.x, x_988.x, x_988.y, x_988.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_991 : vec4<f32> = u_xlat6;
        let x_993 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_991.x, x_991.x, x_991.z, x_991.z) * vec4<f32>(x_993.x, x_993.x, x_993.z, x_993.z));
        let x_996 : vec4<f32> = u_xlat7;
        let x_1000 : vec2<f32> = (vec2<f32>(x_996.y, x_996.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1006 : vec2<f32> = u_xlat51;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1006));
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1009.w);
        let x_1011 : vec2<f32> = u_xlat51;
        let x_1013 : vec2<f32> = (-(x_1011) + vec2<f32>(1.0f, 1.0f));
        let x_1014 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1016 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1016, vec2<f32>(0.0f, 0.0f));
        let x_1018 : vec2<f32> = u_xlat53;
        let x_1020 : vec2<f32> = u_xlat53;
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1024 : vec2<f32> = ((-(x_1018) * x_1020) + vec2<f32>(x_1022.x, x_1022.y));
        let x_1025 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1027 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1027, vec2<f32>(0.0f, 0.0f));
        let x_1030 : vec2<f32> = u_xlat53;
        let x_1032 : vec2<f32> = u_xlat53;
        let x_1034 : vec4<f32> = u_xlat6;
        let x_1036 : vec2<f32> = ((-(x_1030) * x_1032) + vec2<f32>(x_1034.y, x_1034.w));
        let x_1037 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1036.x, x_1037.y, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1042 : vec2<f32> = (vec2<f32>(x_1039.x, x_1039.y) + vec2<f32>(2.0f, 2.0f));
        let x_1043 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1045 : vec3<f32> = u_xlat29;
        let x_1047 : vec2<f32> = (vec2<f32>(x_1045.x, x_1045.z) + vec2<f32>(2.0f, 2.0f));
        let x_1048 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1048.x, x_1047.x, x_1048.z, x_1047.y);
        let x_1051 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1051 * 0.08163200318813323975f);
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1058 : vec3<f32> = (vec3<f32>(x_1055.z, x_1055.x, x_1055.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = (vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1065 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1068 : f32 = u_xlat10.y;
        u_xlat9.x = x_1068;
        let x_1070 : vec2<f32> = u_xlat51;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1070.x, x_1070.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1080 : vec2<f32> = u_xlat51;
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1085 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1084.x, x_1085.y, x_1084.y, x_1085.w);
        let x_1088 : f32 = u_xlat6.x;
        u_xlat7.y = x_1088;
        let x_1091 : f32 = u_xlat8.y;
        u_xlat7.w = x_1091;
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1093 + x_1094);
        let x_1096 : vec2<f32> = u_xlat51;
        let x_1099 : vec2<f32> = ((vec2<f32>(x_1096.y, x_1096.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1100 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1100.x, x_1099.x, x_1100.z, x_1099.y);
        let x_1102 : vec2<f32> = u_xlat51;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1102.y, x_1102.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1106.w);
        let x_1109 : f32 = u_xlat6.y;
        u_xlat8.y = x_1109;
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1111 + x_1112);
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1114 / x_1115);
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1117 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1124 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1123 / x_1124);
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1126 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1131 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1128.w, x_1128.x, x_1128.y, x_1128.z) * vec4<f32>(x_1131.x, x_1131.x, x_1131.x, x_1131.x));
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1137 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1134.x, x_1134.w, x_1134.y, x_1134.z) * vec4<f32>(x_1137.y, x_1137.y, x_1137.y, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1141 : vec3<f32> = vec3<f32>(x_1140.y, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1141.z);
        let x_1145 : f32 = u_xlat8.x;
        u_xlat10.y = x_1145;
        let x_1147 : vec4<f32> = u_xlat5;
        let x_1150 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.y));
        let x_1156 : vec4<f32> = u_xlat5;
        let x_1159 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.w, x_1162.y));
        let x_1166 : f32 = u_xlat10.y;
        u_xlat7.y = x_1166;
        let x_1169 : f32 = u_xlat8.z;
        u_xlat10.y = x_1169;
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1174 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) * vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y)) + vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat5;
        let x_1183 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1189 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1192 : f32 = u_xlat10.y;
        u_xlat7.z = x_1192;
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1198 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.z));
        let x_1205 : f32 = u_xlat8.w;
        u_xlat10.y = x_1205;
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1221 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.w, x_1224.y));
        let x_1228 : f32 = u_xlat10.y;
        u_xlat7.w = x_1228;
        let x_1231 : vec4<f32> = u_xlat5;
        let x_1234 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1237.x, x_1237.w));
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1241 : vec3<f32> = vec3<f32>(x_1240.x, x_1240.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1241.z);
        let x_1244 : vec4<f32> = u_xlat5;
        let x_1247 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1254 : vec4<f32> = u_xlat5;
        let x_1257 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1264 : f32 = u_xlat7.x;
        u_xlat8.x = x_1264;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.x, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1280 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1278.x, x_1278.x, x_1278.x, x_1278.x) * x_1280);
        let x_1283 : vec4<f32> = u_xlat6;
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1283.y, x_1283.y, x_1283.y, x_1283.y) * x_1285);
        let x_1288 : vec4<f32> = u_xlat6;
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1288.z, x_1288.z, x_1288.z, x_1288.z) * x_1290);
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1292.w, x_1292.w, x_1292.w, x_1292.w) * x_1294);
        let x_1297 : vec4<f32> = u_xlat11;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec13;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat69 = x_1309;
        let x_1311 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec14;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat1.x = x_1323;
        let x_1326 : f32 = u_xlat1.x;
        let x_1328 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1326 * x_1328);
        let x_1332 : f32 = u_xlat16.x;
        let x_1333 : f32 = u_xlat69;
        let x_1336 : f32 = u_xlat1.x;
        u_xlat69 = ((x_1332 * x_1333) + x_1336);
        let x_1339 : vec2<f32> = u_xlat51;
        let x_1341 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec15;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1348.xy, x_1348.z);
        u_xlat1.x = x_1350;
        let x_1353 : f32 = u_xlat16.z;
        let x_1355 : f32 = u_xlat1.x;
        let x_1357 : f32 = u_xlat69;
        u_xlat69 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat14;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.x, x_1360.y);
        let x_1363 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec16;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat1.x = x_1372;
        let x_1375 : f32 = u_xlat16.w;
        let x_1377 : f32 = u_xlat1.x;
        let x_1379 : f32 = u_xlat69;
        u_xlat69 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec4<f32> = u_xlat12;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec17;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat1.x = x_1394;
        let x_1397 : f32 = u_xlat17.x;
        let x_1399 : f32 = u_xlat1.x;
        let x_1401 : f32 = u_xlat69;
        u_xlat69 = ((x_1397 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat12;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec18;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat1.x = x_1416;
        let x_1419 : f32 = u_xlat17.y;
        let x_1421 : f32 = u_xlat1.x;
        let x_1423 : f32 = u_xlat69;
        u_xlat69 = ((x_1419 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat13;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec19;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat1.x = x_1438;
        let x_1441 : f32 = u_xlat17.z;
        let x_1443 : f32 = u_xlat1.x;
        let x_1445 : f32 = u_xlat69;
        u_xlat69 = ((x_1441 * x_1443) + x_1445);
        let x_1448 : vec4<f32> = u_xlat14;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.z, x_1448.w);
        let x_1451 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec20;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1458.xy, x_1458.z);
        u_xlat1.x = x_1460;
        let x_1463 : f32 = u_xlat17.w;
        let x_1465 : f32 = u_xlat1.x;
        let x_1467 : f32 = u_xlat69;
        u_xlat69 = ((x_1463 * x_1465) + x_1467);
        let x_1470 : vec4<f32> = u_xlat15;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.x, x_1470.y);
        let x_1473 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec21;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
        u_xlat1.x = x_1482;
        let x_1485 : f32 = u_xlat18.x;
        let x_1487 : f32 = u_xlat1.x;
        let x_1489 : f32 = u_xlat69;
        u_xlat69 = ((x_1485 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat15;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.z, x_1492.w);
        let x_1495 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec22;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat1.x = x_1504;
        let x_1507 : f32 = u_xlat18.y;
        let x_1509 : f32 = u_xlat1.x;
        let x_1511 : f32 = u_xlat69;
        u_xlat69 = ((x_1507 * x_1509) + x_1511);
        let x_1514 : vec2<f32> = u_xlat30;
        let x_1516 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec23;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat1.x = x_1525;
        let x_1528 : f32 = u_xlat18.z;
        let x_1530 : f32 = u_xlat1.x;
        let x_1532 : f32 = u_xlat69;
        u_xlat69 = ((x_1528 * x_1530) + x_1532);
        let x_1535 : vec2<f32> = u_xlat59;
        let x_1537 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec24;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1544.xy, x_1544.z);
        u_xlat1.x = x_1546;
        let x_1549 : f32 = u_xlat18.w;
        let x_1551 : f32 = u_xlat1.x;
        let x_1553 : f32 = u_xlat69;
        u_xlat69 = ((x_1549 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat10;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.x, x_1556.y);
        let x_1559 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec25;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat1.x = x_1568;
        let x_1571 : f32 = u_xlat6.x;
        let x_1573 : f32 = u_xlat1.x;
        let x_1575 : f32 = u_xlat69;
        u_xlat69 = ((x_1571 * x_1573) + x_1575);
        let x_1578 : vec4<f32> = u_xlat10;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.z, x_1578.w);
        let x_1581 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec26;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat1.x = x_1590;
        let x_1593 : f32 = u_xlat6.y;
        let x_1595 : f32 = u_xlat1.x;
        let x_1597 : f32 = u_xlat69;
        u_xlat69 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec2<f32> = u_xlat54;
        let x_1602 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec27;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
        u_xlat1.x = x_1611;
        let x_1614 : f32 = u_xlat6.z;
        let x_1616 : f32 = u_xlat1.x;
        let x_1618 : f32 = u_xlat69;
        u_xlat69 = ((x_1614 * x_1616) + x_1618);
        let x_1621 : vec4<f32> = u_xlat5;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
        let x_1624 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec28;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1631.xy, x_1631.z);
        u_xlat1.x = x_1633;
        let x_1636 : f32 = u_xlat6.w;
        let x_1638 : f32 = u_xlat1.x;
        let x_1640 : f32 = u_xlat69;
        u_xlat23 = ((x_1636 * x_1638) + x_1640);
      }
    }
  } else {
    let x_1644 : vec4<f32> = u_xlat3;
    let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
    let x_1647 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
    let x_1654 : vec3<f32> = txVec29;
    let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1654.xy, x_1654.z);
    u_xlat23 = x_1656;
  }
  let x_1658 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1658) + 1.0f);
  let x_1661 : f32 = u_xlat23;
  let x_1663 : f32 = x_158.x_MainLightShadowParams.x;
  let x_1665 : f32 = u_xlat69;
  u_xlat23 = ((x_1661 * x_1663) + x_1665);
  let x_1668 : f32 = u_xlat3.z;
  u_xlatb69 = (0.0f >= x_1668);
  let x_1672 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1672 >= 1.0f);
  let x_1674 : bool = u_xlatb69;
  let x_1675 : bool = u_xlatb1;
  u_xlatb69 = (x_1674 | x_1675);
  let x_1677 : bool = u_xlatb69;
  let x_1678 : f32 = u_xlat23;
  u_xlat23 = select(x_1678, 1.0f, x_1677);
  let x_1680 : vec3<f32> = vs_TEXCOORD1;
  let x_1683 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1685 : vec3<f32> = (x_1680 + -(x_1683));
  let x_1686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : vec4<f32> = u_xlat3;
  let x_1690 : vec4<f32> = u_xlat3;
  u_xlat69 = dot(vec3<f32>(x_1688.x, x_1688.y, x_1688.z), vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : f32 = u_xlat69;
  let x_1695 : f32 = x_158.x_MainLightShadowParams.z;
  let x_1698 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1693 * x_1695) + x_1698);
  let x_1702 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1702, 0.0f, 1.0f);
  let x_1705 : f32 = u_xlat23;
  u_xlat71 = (-(x_1705) + 1.0f);
  let x_1709 : f32 = u_xlat1.x;
  let x_1710 : f32 = u_xlat71;
  let x_1712 : f32 = u_xlat23;
  u_xlat23 = ((x_1709 * x_1710) + x_1712);
  let x_1721 : f32 = x_1719.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1721 == -1.0f));
  let x_1723 : bool = u_xlatb1;
  if (x_1723) {
    let x_1726 : vec3<f32> = vs_TEXCOORD1;
    let x_1729 : vec4<f32> = x_1719.x_MainLightWorldToLight[1i];
    let x_1731 : vec2<f32> = (vec2<f32>(x_1726.y, x_1726.y) * vec2<f32>(x_1729.x, x_1729.y));
    let x_1732 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
    let x_1735 : vec4<f32> = x_1719.x_MainLightWorldToLight[0i];
    let x_1737 : vec3<f32> = vs_TEXCOORD1;
    let x_1740 : vec4<f32> = u_xlat3;
    let x_1742 : vec2<f32> = ((vec2<f32>(x_1735.x, x_1735.y) * vec2<f32>(x_1737.x, x_1737.x)) + vec2<f32>(x_1740.x, x_1740.y));
    let x_1743 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1742.x, x_1742.y, x_1743.z, x_1743.w);
    let x_1746 : vec4<f32> = x_1719.x_MainLightWorldToLight[2i];
    let x_1748 : vec3<f32> = vs_TEXCOORD1;
    let x_1751 : vec4<f32> = u_xlat3;
    let x_1753 : vec2<f32> = ((vec2<f32>(x_1746.x, x_1746.y) * vec2<f32>(x_1748.z, x_1748.z)) + vec2<f32>(x_1751.x, x_1751.y));
    let x_1754 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
    let x_1756 : vec4<f32> = u_xlat3;
    let x_1759 : vec4<f32> = x_1719.x_MainLightWorldToLight[3i];
    let x_1761 : vec2<f32> = (vec2<f32>(x_1756.x, x_1756.y) + vec2<f32>(x_1759.x, x_1759.y));
    let x_1762 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1761.x, x_1761.y, x_1762.z, x_1762.w);
    let x_1764 : vec4<f32> = u_xlat3;
    let x_1767 : vec2<f32> = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1768 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1767.x, x_1767.y, x_1768.z, x_1768.w);
    let x_1775 : vec4<f32> = u_xlat3;
    let x_1778 : f32 = x_27.x_GlobalMipBias.x;
    let x_1779 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1775.x, x_1775.y), x_1778);
    u_xlat3 = x_1779;
    let x_1784 : f32 = x_1719.x_MainLightCookieTextureFormat;
    let x_1786 : f32 = x_1719.x_MainLightCookieTextureFormat;
    let x_1788 : f32 = x_1719.x_MainLightCookieTextureFormat;
    let x_1790 : f32 = x_1719.x_MainLightCookieTextureFormat;
    let x_1791 : vec4<f32> = vec4<f32>(x_1784, x_1786, x_1788, x_1790);
    let x_1798 : vec4<bool> = (vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1791.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1798.x, x_1798.y);
    let x_1801 : bool = u_xlatb5.y;
    if (x_1801) {
      let x_1806 : f32 = u_xlat3.w;
      x_1802 = x_1806;
    } else {
      let x_1809 : f32 = u_xlat3.x;
      x_1802 = x_1809;
    }
    let x_1810 : f32 = x_1802;
    u_xlat1.x = x_1810;
    let x_1813 : bool = u_xlatb5.x;
    if (x_1813) {
      let x_1817 : vec4<f32> = u_xlat3;
      x_1814 = vec3<f32>(x_1817.x, x_1817.y, x_1817.z);
    } else {
      let x_1820 : vec4<f32> = u_xlat1;
      x_1814 = vec3<f32>(x_1820.x, x_1820.x, x_1820.x);
    }
    let x_1822 : vec3<f32> = x_1814;
    let x_1823 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1829 : vec4<f32> = u_xlat3;
  let x_1832 : vec4<f32> = x_27.x_MainLightColor;
  let x_1834 : vec3<f32> = (vec3<f32>(x_1829.x, x_1829.y, x_1829.z) * vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
  let x_1835 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
  let x_1837 : f32 = u_xlat23;
  let x_1843 : f32 = x_1841.unity_LightData.z;
  u_xlat23 = (x_1837 * x_1843);
  let x_1845 : f32 = u_xlat23;
  let x_1847 : vec4<f32> = u_xlat3;
  let x_1849 : vec3<f32> = (vec3<f32>(x_1845, x_1845, x_1845) * vec3<f32>(x_1847.x, x_1847.y, x_1847.z));
  let x_1850 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1852 : vec3<f32> = u_xlat2;
  let x_1854 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat23 = dot(x_1852, vec3<f32>(x_1854.x, x_1854.y, x_1854.z));
  let x_1857 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1857, 0.0f, 1.0f);
  let x_1859 : f32 = u_xlat23;
  let x_1861 : vec4<f32> = u_xlat3;
  let x_1863 : vec3<f32> = (vec3<f32>(x_1859, x_1859, x_1859) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec4<f32> = u_xlat1;
  let x_1868 : vec4<f32> = u_xlat3;
  let x_1870 : vec3<f32> = (vec3<f32>(x_1866.y, x_1866.z, x_1866.w) * vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1874 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1876 : f32 = x_1841.unity_LightData.y;
  u_xlat23 = min(x_1874, x_1876);
  let x_1878 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_1878));
  let x_1881 : f32 = u_xlat69;
  let x_1884 : f32 = x_158.x_AdditionalShadowFadeParams.x;
  let x_1887 : f32 = x_158.x_AdditionalShadowFadeParams.y;
  u_xlat69 = ((x_1881 * x_1884) + x_1887);
  let x_1889 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1889, 0.0f, 1.0f);
  let x_1892 : f32 = x_1719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1894 : f32 = x_1719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1896 : f32 = x_1719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1898 : f32 = x_1719.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1899 : vec4<f32> = vec4<f32>(x_1892, x_1894, x_1896, x_1898);
  let x_1905 : vec4<bool> = (vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1899.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1905.x, x_1905.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1917 : u32 = u_xlatu_loop_1;
    let x_1918 : u32 = u_xlatu23;
    if ((x_1917 < x_1918)) {
    } else {
      break;
    }
    let x_1921 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_1921 >> 2u);
    let x_1924 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_1924 & 3u));
    let x_1927 : u32 = u_xlatu71;
    let x_1930 : vec4<f32> = x_1841.unity_LightIndices[bitcast<i32>(x_1927)];
    let x_1940 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1945 : vec4<u32> = indexable[x_1940];
    u_xlat71 = dot(x_1930, bitcast<vec4<f32>>(x_1945));
    let x_1949 : f32 = u_xlat71;
    u_xlati71 = i32(x_1949);
    let x_1951 : vec3<f32> = vs_TEXCOORD1;
    let x_1962 : i32 = u_xlati71;
    let x_1964 : vec4<f32> = x_1961.x_AdditionalLightsPosition[x_1962];
    let x_1967 : i32 = u_xlati71;
    let x_1969 : vec4<f32> = x_1961.x_AdditionalLightsPosition[x_1967];
    let x_1971 : vec3<f32> = ((-(x_1951) * vec3<f32>(x_1964.w, x_1964.w, x_1964.w)) + vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
    let x_1972 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
    let x_1975 : vec4<f32> = u_xlat7;
    let x_1977 : vec4<f32> = u_xlat7;
    u_xlat72 = dot(vec3<f32>(x_1975.x, x_1975.y, x_1975.z), vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
    let x_1980 : f32 = u_xlat72;
    u_xlat72 = max(x_1980, 0.00006103515625f);
    let x_1984 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_1984);
    let x_1986 : f32 = u_xlat73;
    let x_1988 : vec4<f32> = u_xlat7;
    let x_1990 : vec3<f32> = (vec3<f32>(x_1986, x_1986, x_1986) * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
    let x_1991 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
    let x_1993 : f32 = u_xlat72;
    u_xlat73 = (1.0f / x_1993);
    let x_1995 : f32 = u_xlat72;
    let x_1996 : i32 = u_xlati71;
    let x_1998 : f32 = x_1961.x_AdditionalLightsAttenuation[x_1996].x;
    u_xlat72 = (x_1995 * x_1998);
    let x_2000 : f32 = u_xlat72;
    let x_2002 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2000) * x_2002) + 1.0f);
    let x_2005 : f32 = u_xlat72;
    u_xlat72 = max(x_2005, 0.0f);
    let x_2007 : f32 = u_xlat72;
    let x_2008 : f32 = u_xlat72;
    u_xlat72 = (x_2007 * x_2008);
    let x_2010 : f32 = u_xlat72;
    let x_2011 : f32 = u_xlat73;
    u_xlat72 = (x_2010 * x_2011);
    let x_2013 : i32 = u_xlati71;
    let x_2015 : vec4<f32> = x_1961.x_AdditionalLightsSpotDir[x_2013];
    let x_2017 : vec4<f32> = u_xlat7;
    u_xlat73 = dot(vec3<f32>(x_2015.x, x_2015.y, x_2015.z), vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
    let x_2020 : f32 = u_xlat73;
    let x_2021 : i32 = u_xlati71;
    let x_2023 : f32 = x_1961.x_AdditionalLightsAttenuation[x_2021].z;
    let x_2025 : i32 = u_xlati71;
    let x_2027 : f32 = x_1961.x_AdditionalLightsAttenuation[x_2025].w;
    u_xlat73 = ((x_2020 * x_2023) + x_2027);
    let x_2029 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2029, 0.0f, 1.0f);
    let x_2031 : f32 = u_xlat73;
    let x_2032 : f32 = u_xlat73;
    u_xlat73 = (x_2031 * x_2032);
    let x_2034 : f32 = u_xlat72;
    let x_2035 : f32 = u_xlat73;
    u_xlat72 = (x_2034 * x_2035);
    let x_2039 : i32 = u_xlati71;
    let x_2041 : f32 = x_158.x_AdditionalShadowParams[x_2039].w;
    u_xlati73 = i32(x_2041);
    let x_2044 : i32 = u_xlati73;
    u_xlatb51 = (x_2044 >= 0i);
    let x_2046 : bool = u_xlatb51;
    if (x_2046) {
      let x_2050 : i32 = u_xlati71;
      let x_2052 : f32 = x_158.x_AdditionalShadowParams[x_2050].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2052, x_2052, x_2052, x_2052))));
      let x_2056 : bool = u_xlatb51;
      if (x_2056) {
        let x_2060 : vec4<f32> = u_xlat7;
        let x_2063 : vec4<f32> = u_xlat7;
        let x_2066 : vec4<bool> = (abs(vec4<f32>(x_2060.z, x_2060.z, x_2060.y, x_2060.z)) >= abs(vec4<f32>(x_2063.x, x_2063.y, x_2063.x, x_2063.x)));
        let x_2068 : vec3<bool> = vec3<bool>(x_2066.x, x_2066.y, x_2066.z);
        let x_2069 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2068.x, x_2068.y, x_2068.z, x_2069.w);
        let x_2072 : bool = u_xlatb8.y;
        let x_2074 : bool = u_xlatb8.x;
        u_xlatb51 = (x_2072 & x_2074);
        let x_2076 : vec4<f32> = u_xlat7;
        let x_2079 : vec4<bool> = (-(vec4<f32>(x_2076.z, x_2076.y, x_2076.z, x_2076.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2080 : vec3<bool> = vec3<bool>(x_2079.x, x_2079.y, x_2079.w);
        let x_2081 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2080.x, x_2080.y, x_2081.z, x_2080.z);
        let x_2084 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2084);
        let x_2089 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2089);
        let x_2094 : bool = u_xlatb8.w;
        u_xlat74 = select(0.0f, 1.0f, x_2094);
        let x_2097 : bool = u_xlatb8.z;
        if (x_2097) {
          let x_2102 : f32 = u_xlat8.y;
          x_2098 = x_2102;
        } else {
          let x_2104 : f32 = u_xlat74;
          x_2098 = x_2104;
        }
        let x_2105 : f32 = x_2098;
        u_xlat74 = x_2105;
        let x_2106 : bool = u_xlatb51;
        if (x_2106) {
          let x_2111 : f32 = u_xlat8.x;
          x_2107 = x_2111;
        } else {
          let x_2113 : f32 = u_xlat74;
          x_2107 = x_2113;
        }
        let x_2114 : f32 = x_2107;
        u_xlat51.x = x_2114;
        let x_2116 : i32 = u_xlati71;
        let x_2118 : f32 = x_158.x_AdditionalShadowParams[x_2116].w;
        u_xlat74 = trunc(x_2118);
        let x_2121 : f32 = u_xlat51.x;
        let x_2122 : f32 = u_xlat74;
        u_xlat51.x = (x_2121 + x_2122);
        let x_2126 : f32 = u_xlat51.x;
        u_xlati73 = i32(x_2126);
      }
      let x_2128 : i32 = u_xlati73;
      u_xlati73 = (x_2128 << bitcast<u32>(2i));
      let x_2130 : vec3<f32> = vs_TEXCOORD1;
      let x_2133 : i32 = u_xlati73;
      let x_2136 : i32 = u_xlati73;
      let x_2140 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2133 + 1i) / 4i)][((x_2136 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2130.y, x_2130.y, x_2130.y, x_2130.y) * x_2140);
      let x_2142 : i32 = u_xlati73;
      let x_2144 : i32 = u_xlati73;
      let x_2147 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[(x_2142 / 4i)][(x_2144 % 4i)];
      let x_2148 : vec3<f32> = vs_TEXCOORD1;
      let x_2151 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2147 * vec4<f32>(x_2148.x, x_2148.x, x_2148.x, x_2148.x)) + x_2151);
      let x_2153 : i32 = u_xlati73;
      let x_2156 : i32 = u_xlati73;
      let x_2160 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2153 + 2i) / 4i)][((x_2156 + 2i) % 4i)];
      let x_2161 : vec3<f32> = vs_TEXCOORD1;
      let x_2164 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2160 * vec4<f32>(x_2161.z, x_2161.z, x_2161.z, x_2161.z)) + x_2164);
      let x_2166 : vec4<f32> = u_xlat8;
      let x_2167 : i32 = u_xlati73;
      let x_2170 : i32 = u_xlati73;
      let x_2174 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2167 + 3i) / 4i)][((x_2170 + 3i) % 4i)];
      u_xlat8 = (x_2166 + x_2174);
      let x_2176 : vec4<f32> = u_xlat8;
      let x_2178 : vec4<f32> = u_xlat8;
      let x_2180 : vec3<f32> = (vec3<f32>(x_2176.x, x_2176.y, x_2176.z) / vec3<f32>(x_2178.w, x_2178.w, x_2178.w));
      let x_2181 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
      let x_2184 : i32 = u_xlati71;
      let x_2186 : f32 = x_158.x_AdditionalShadowParams[x_2184].y;
      u_xlatb73 = (0.0f < x_2186);
      let x_2188 : bool = u_xlatb73;
      if (x_2188) {
        let x_2191 : i32 = u_xlati71;
        let x_2193 : f32 = x_158.x_AdditionalShadowParams[x_2191].y;
        u_xlatb73 = (1.0f == x_2193);
        let x_2195 : bool = u_xlatb73;
        if (x_2195) {
          let x_2198 : vec4<f32> = u_xlat8;
          let x_2202 : vec4<f32> = x_158.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2198.x, x_2198.y, x_2198.x, x_2198.y) + x_2202);
          let x_2205 : vec4<f32> = u_xlat9;
          let x_2206 : vec2<f32> = vec2<f32>(x_2205.x, x_2205.y);
          let x_2208 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
          let x_2216 : vec3<f32> = txVec30;
          let x_2218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2216.xy, x_2216.z);
          u_xlat10.x = x_2218;
          let x_2221 : vec4<f32> = u_xlat9;
          let x_2222 : vec2<f32> = vec2<f32>(x_2221.z, x_2221.w);
          let x_2224 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
          let x_2231 : vec3<f32> = txVec31;
          let x_2233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
          u_xlat10.y = x_2233;
          let x_2235 : vec4<f32> = u_xlat8;
          let x_2239 : vec4<f32> = x_158.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2235.x, x_2235.y, x_2235.x, x_2235.y) + x_2239);
          let x_2242 : vec4<f32> = u_xlat9;
          let x_2243 : vec2<f32> = vec2<f32>(x_2242.x, x_2242.y);
          let x_2245 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2243.x, x_2243.y, x_2245);
          let x_2252 : vec3<f32> = txVec32;
          let x_2254 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2252.xy, x_2252.z);
          u_xlat10.z = x_2254;
          let x_2257 : vec4<f32> = u_xlat9;
          let x_2258 : vec2<f32> = vec2<f32>(x_2257.z, x_2257.w);
          let x_2260 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2258.x, x_2258.y, x_2260);
          let x_2267 : vec3<f32> = txVec33;
          let x_2269 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2267.xy, x_2267.z);
          u_xlat10.w = x_2269;
          let x_2271 : vec4<f32> = u_xlat10;
          u_xlat73 = dot(x_2271, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2274 : i32 = u_xlati71;
          let x_2276 : f32 = x_158.x_AdditionalShadowParams[x_2274].y;
          u_xlatb51 = (2.0f == x_2276);
          let x_2278 : bool = u_xlatb51;
          if (x_2278) {
            let x_2281 : vec4<f32> = u_xlat8;
            let x_2285 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2281.x, x_2281.y) * vec2<f32>(x_2285.z, x_2285.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2289 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2289);
            let x_2291 : vec4<f32> = u_xlat8;
            let x_2294 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2297 : vec2<f32> = u_xlat51;
            let x_2299 : vec2<f32> = ((vec2<f32>(x_2291.x, x_2291.y) * vec2<f32>(x_2294.z, x_2294.w)) + -(x_2297));
            let x_2300 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2299.x, x_2299.y, x_2300.z, x_2300.w);
            let x_2302 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2302.x, x_2302.x, x_2302.y, x_2302.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2305 : vec4<f32> = u_xlat10;
            let x_2307 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2305.x, x_2305.x, x_2305.z, x_2305.z) * vec4<f32>(x_2307.x, x_2307.x, x_2307.z, x_2307.z));
            let x_2311 : vec4<f32> = u_xlat11;
            u_xlat55 = (vec2<f32>(x_2311.y, x_2311.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2314 : vec4<f32> = u_xlat11;
            let x_2317 : vec4<f32> = u_xlat9;
            let x_2320 : vec2<f32> = ((vec2<f32>(x_2314.x, x_2314.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2317.x, x_2317.y)));
            let x_2321 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2320.x, x_2321.y, x_2320.y, x_2321.w);
            let x_2323 : vec4<f32> = u_xlat9;
            let x_2326 : vec2<f32> = (-(vec2<f32>(x_2323.x, x_2323.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2327 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2326.x, x_2326.y, x_2327.z, x_2327.w);
            let x_2330 : vec4<f32> = u_xlat9;
            u_xlat57 = min(vec2<f32>(x_2330.x, x_2330.y), vec2<f32>(0.0f, 0.0f));
            let x_2333 : vec2<f32> = u_xlat57;
            let x_2335 : vec2<f32> = u_xlat57;
            let x_2337 : vec4<f32> = u_xlat11;
            u_xlat57 = ((-(x_2333) * x_2335) + vec2<f32>(x_2337.x, x_2337.y));
            let x_2340 : vec4<f32> = u_xlat9;
            let x_2342 : vec2<f32> = max(vec2<f32>(x_2340.x, x_2340.y), vec2<f32>(0.0f, 0.0f));
            let x_2343 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2342.x, x_2342.y, x_2343.z, x_2343.w);
            let x_2345 : vec4<f32> = u_xlat9;
            let x_2348 : vec4<f32> = u_xlat9;
            let x_2351 : vec4<f32> = u_xlat10;
            let x_2353 : vec2<f32> = ((-(vec2<f32>(x_2345.x, x_2345.y)) * vec2<f32>(x_2348.x, x_2348.y)) + vec2<f32>(x_2351.y, x_2351.w));
            let x_2354 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2353.x, x_2353.y, x_2354.z, x_2354.w);
            let x_2356 : vec2<f32> = u_xlat57;
            u_xlat57 = (x_2356 + vec2<f32>(1.0f, 1.0f));
            let x_2358 : vec4<f32> = u_xlat9;
            let x_2360 : vec2<f32> = (vec2<f32>(x_2358.x, x_2358.y) + vec2<f32>(1.0f, 1.0f));
            let x_2361 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2360.x, x_2360.y, x_2361.z, x_2361.w);
            let x_2363 : vec4<f32> = u_xlat10;
            let x_2365 : vec2<f32> = (vec2<f32>(x_2363.x, x_2363.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2366 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2365.x, x_2365.y, x_2366.z, x_2366.w);
            let x_2368 : vec4<f32> = u_xlat11;
            let x_2370 : vec2<f32> = (vec2<f32>(x_2368.x, x_2368.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2371 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2370.x, x_2370.y, x_2371.z, x_2371.w);
            let x_2373 : vec2<f32> = u_xlat57;
            let x_2374 : vec2<f32> = (x_2373 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2375 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2374.x, x_2374.y, x_2375.z, x_2375.w);
            let x_2377 : vec4<f32> = u_xlat9;
            let x_2379 : vec2<f32> = (vec2<f32>(x_2377.x, x_2377.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2380 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2379.x, x_2379.y, x_2380.z, x_2380.w);
            let x_2382 : vec4<f32> = u_xlat10;
            let x_2384 : vec2<f32> = (vec2<f32>(x_2382.y, x_2382.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2385 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
            let x_2388 : f32 = u_xlat11.x;
            u_xlat12.z = x_2388;
            let x_2391 : f32 = u_xlat9.x;
            u_xlat12.w = x_2391;
            let x_2394 : f32 = u_xlat14.x;
            u_xlat13.z = x_2394;
            let x_2397 : f32 = u_xlat55.x;
            u_xlat13.w = x_2397;
            let x_2399 : vec4<f32> = u_xlat12;
            let x_2401 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2399.z, x_2399.w, x_2399.x, x_2399.z) + vec4<f32>(x_2401.z, x_2401.w, x_2401.x, x_2401.z));
            let x_2405 : f32 = u_xlat12.y;
            u_xlat11.z = x_2405;
            let x_2408 : f32 = u_xlat9.y;
            u_xlat11.w = x_2408;
            let x_2411 : f32 = u_xlat13.y;
            u_xlat14.z = x_2411;
            let x_2414 : f32 = u_xlat55.y;
            u_xlat14.w = x_2414;
            let x_2416 : vec4<f32> = u_xlat11;
            let x_2418 : vec4<f32> = u_xlat14;
            let x_2420 : vec3<f32> = (vec3<f32>(x_2416.z, x_2416.y, x_2416.w) + vec3<f32>(x_2418.z, x_2418.y, x_2418.w));
            let x_2421 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
            let x_2423 : vec4<f32> = u_xlat13;
            let x_2425 : vec4<f32> = u_xlat10;
            let x_2427 : vec3<f32> = (vec3<f32>(x_2423.x, x_2423.z, x_2423.w) / vec3<f32>(x_2425.z, x_2425.w, x_2425.y));
            let x_2428 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2427.x, x_2427.y, x_2427.z, x_2428.w);
            let x_2430 : vec4<f32> = u_xlat11;
            let x_2432 : vec3<f32> = (vec3<f32>(x_2430.x, x_2430.y, x_2430.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2433 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
            let x_2435 : vec4<f32> = u_xlat14;
            let x_2437 : vec4<f32> = u_xlat9;
            let x_2439 : vec3<f32> = (vec3<f32>(x_2435.z, x_2435.y, x_2435.w) / vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
            let x_2440 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
            let x_2442 : vec4<f32> = u_xlat12;
            let x_2444 : vec3<f32> = (vec3<f32>(x_2442.x, x_2442.y, x_2442.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2445 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
            let x_2447 : vec4<f32> = u_xlat11;
            let x_2450 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2452 : vec3<f32> = (vec3<f32>(x_2447.y, x_2447.x, x_2447.z) * vec3<f32>(x_2450.x, x_2450.x, x_2450.x));
            let x_2453 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
            let x_2455 : vec4<f32> = u_xlat12;
            let x_2458 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2460 : vec3<f32> = (vec3<f32>(x_2455.x, x_2455.y, x_2455.z) * vec3<f32>(x_2458.y, x_2458.y, x_2458.y));
            let x_2461 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2460.x, x_2460.y, x_2460.z, x_2461.w);
            let x_2464 : f32 = u_xlat12.x;
            u_xlat11.w = x_2464;
            let x_2466 : vec2<f32> = u_xlat51;
            let x_2469 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2472 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2466.x, x_2466.y, x_2466.x, x_2466.y) * vec4<f32>(x_2469.x, x_2469.y, x_2469.x, x_2469.y)) + vec4<f32>(x_2472.y, x_2472.w, x_2472.x, x_2472.w));
            let x_2475 : vec2<f32> = u_xlat51;
            let x_2477 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2480 : vec4<f32> = u_xlat11;
            let x_2482 : vec2<f32> = ((x_2475 * vec2<f32>(x_2477.x, x_2477.y)) + vec2<f32>(x_2480.z, x_2480.w));
            let x_2483 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2486 : f32 = u_xlat11.y;
            u_xlat12.w = x_2486;
            let x_2488 : vec4<f32> = u_xlat12;
            let x_2489 : vec2<f32> = vec2<f32>(x_2488.y, x_2488.z);
            let x_2490 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2490.x, x_2489.x, x_2490.z, x_2489.y);
            let x_2492 : vec2<f32> = u_xlat51;
            let x_2495 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2498 : vec4<f32> = u_xlat11;
            u_xlat15 = ((vec4<f32>(x_2492.x, x_2492.y, x_2492.x, x_2492.y) * vec4<f32>(x_2495.x, x_2495.y, x_2495.x, x_2495.y)) + vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2498.y));
            let x_2501 : vec2<f32> = u_xlat51;
            let x_2504 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2507 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2501.x, x_2501.y, x_2501.x, x_2501.y) * vec4<f32>(x_2504.x, x_2504.y, x_2504.x, x_2504.y)) + vec4<f32>(x_2507.w, x_2507.y, x_2507.w, x_2507.z));
            let x_2510 : vec2<f32> = u_xlat51;
            let x_2513 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2516 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2510.x, x_2510.y, x_2510.x, x_2510.y) * vec4<f32>(x_2513.x, x_2513.y, x_2513.x, x_2513.y)) + vec4<f32>(x_2516.x, x_2516.w, x_2516.z, x_2516.w));
            let x_2519 : vec4<f32> = u_xlat9;
            let x_2521 : vec4<f32> = u_xlat10;
            u_xlat16 = (vec4<f32>(x_2519.x, x_2519.x, x_2519.x, x_2519.y) * vec4<f32>(x_2521.z, x_2521.w, x_2521.y, x_2521.z));
            let x_2524 : vec4<f32> = u_xlat9;
            let x_2526 : vec4<f32> = u_xlat10;
            u_xlat17 = (vec4<f32>(x_2524.y, x_2524.y, x_2524.z, x_2524.z) * x_2526);
            let x_2529 : f32 = u_xlat9.z;
            let x_2531 : f32 = u_xlat10.y;
            u_xlat51.x = (x_2529 * x_2531);
            let x_2535 : vec4<f32> = u_xlat13;
            let x_2536 : vec2<f32> = vec2<f32>(x_2535.x, x_2535.y);
            let x_2538 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2536.x, x_2536.y, x_2538);
            let x_2545 : vec3<f32> = txVec34;
            let x_2547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2545.xy, x_2545.z);
            u_xlat74 = x_2547;
            let x_2549 : vec4<f32> = u_xlat13;
            let x_2550 : vec2<f32> = vec2<f32>(x_2549.z, x_2549.w);
            let x_2552 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
            let x_2560 : vec3<f32> = txVec35;
            let x_2562 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2560.xy, x_2560.z);
            u_xlat75 = x_2562;
            let x_2563 : f32 = u_xlat75;
            let x_2565 : f32 = u_xlat16.y;
            u_xlat75 = (x_2563 * x_2565);
            let x_2568 : f32 = u_xlat16.x;
            let x_2569 : f32 = u_xlat74;
            let x_2571 : f32 = u_xlat75;
            u_xlat74 = ((x_2568 * x_2569) + x_2571);
            let x_2574 : vec4<f32> = u_xlat14;
            let x_2575 : vec2<f32> = vec2<f32>(x_2574.x, x_2574.y);
            let x_2577 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2575.x, x_2575.y, x_2577);
            let x_2584 : vec3<f32> = txVec36;
            let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
            u_xlat75 = x_2586;
            let x_2588 : f32 = u_xlat16.z;
            let x_2589 : f32 = u_xlat75;
            let x_2591 : f32 = u_xlat74;
            u_xlat74 = ((x_2588 * x_2589) + x_2591);
            let x_2594 : vec4<f32> = u_xlat12;
            let x_2595 : vec2<f32> = vec2<f32>(x_2594.x, x_2594.y);
            let x_2597 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2595.x, x_2595.y, x_2597);
            let x_2604 : vec3<f32> = txVec37;
            let x_2606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2604.xy, x_2604.z);
            u_xlat75 = x_2606;
            let x_2608 : f32 = u_xlat16.w;
            let x_2609 : f32 = u_xlat75;
            let x_2611 : f32 = u_xlat74;
            u_xlat74 = ((x_2608 * x_2609) + x_2611);
            let x_2614 : vec4<f32> = u_xlat15;
            let x_2615 : vec2<f32> = vec2<f32>(x_2614.x, x_2614.y);
            let x_2617 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2615.x, x_2615.y, x_2617);
            let x_2624 : vec3<f32> = txVec38;
            let x_2626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2624.xy, x_2624.z);
            u_xlat75 = x_2626;
            let x_2628 : f32 = u_xlat17.x;
            let x_2629 : f32 = u_xlat75;
            let x_2631 : f32 = u_xlat74;
            u_xlat74 = ((x_2628 * x_2629) + x_2631);
            let x_2634 : vec4<f32> = u_xlat15;
            let x_2635 : vec2<f32> = vec2<f32>(x_2634.z, x_2634.w);
            let x_2637 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2635.x, x_2635.y, x_2637);
            let x_2644 : vec3<f32> = txVec39;
            let x_2646 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2644.xy, x_2644.z);
            u_xlat75 = x_2646;
            let x_2648 : f32 = u_xlat17.y;
            let x_2649 : f32 = u_xlat75;
            let x_2651 : f32 = u_xlat74;
            u_xlat74 = ((x_2648 * x_2649) + x_2651);
            let x_2654 : vec4<f32> = u_xlat12;
            let x_2655 : vec2<f32> = vec2<f32>(x_2654.z, x_2654.w);
            let x_2657 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2655.x, x_2655.y, x_2657);
            let x_2664 : vec3<f32> = txVec40;
            let x_2666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2664.xy, x_2664.z);
            u_xlat75 = x_2666;
            let x_2668 : f32 = u_xlat17.z;
            let x_2669 : f32 = u_xlat75;
            let x_2671 : f32 = u_xlat74;
            u_xlat74 = ((x_2668 * x_2669) + x_2671);
            let x_2674 : vec4<f32> = u_xlat11;
            let x_2675 : vec2<f32> = vec2<f32>(x_2674.x, x_2674.y);
            let x_2677 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2675.x, x_2675.y, x_2677);
            let x_2684 : vec3<f32> = txVec41;
            let x_2686 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2684.xy, x_2684.z);
            u_xlat75 = x_2686;
            let x_2688 : f32 = u_xlat17.w;
            let x_2689 : f32 = u_xlat75;
            let x_2691 : f32 = u_xlat74;
            u_xlat74 = ((x_2688 * x_2689) + x_2691);
            let x_2694 : vec4<f32> = u_xlat11;
            let x_2695 : vec2<f32> = vec2<f32>(x_2694.z, x_2694.w);
            let x_2697 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2695.x, x_2695.y, x_2697);
            let x_2704 : vec3<f32> = txVec42;
            let x_2706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2704.xy, x_2704.z);
            u_xlat75 = x_2706;
            let x_2708 : f32 = u_xlat51.x;
            let x_2709 : f32 = u_xlat75;
            let x_2711 : f32 = u_xlat74;
            u_xlat73 = ((x_2708 * x_2709) + x_2711);
          } else {
            let x_2714 : vec4<f32> = u_xlat8;
            let x_2717 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat51 = ((vec2<f32>(x_2714.x, x_2714.y) * vec2<f32>(x_2717.z, x_2717.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2721 : vec2<f32> = u_xlat51;
            u_xlat51 = floor(x_2721);
            let x_2723 : vec4<f32> = u_xlat8;
            let x_2726 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2729 : vec2<f32> = u_xlat51;
            let x_2731 : vec2<f32> = ((vec2<f32>(x_2723.x, x_2723.y) * vec2<f32>(x_2726.z, x_2726.w)) + -(x_2729));
            let x_2732 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2731.x, x_2731.y, x_2732.z, x_2732.w);
            let x_2734 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2734.x, x_2734.x, x_2734.y, x_2734.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2737 : vec4<f32> = u_xlat10;
            let x_2739 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2737.x, x_2737.x, x_2737.z, x_2737.z) * vec4<f32>(x_2739.x, x_2739.x, x_2739.z, x_2739.z));
            let x_2742 : vec4<f32> = u_xlat11;
            let x_2744 : vec2<f32> = (vec2<f32>(x_2742.y, x_2742.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2745 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2745.x, x_2744.x, x_2745.z, x_2744.y);
            let x_2747 : vec4<f32> = u_xlat11;
            let x_2750 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2747.x, x_2747.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2750.x, x_2750.y)));
            let x_2754 : vec4<f32> = u_xlat9;
            let x_2757 : vec2<f32> = (-(vec2<f32>(x_2754.x, x_2754.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2758 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2757.x, x_2758.y, x_2757.y, x_2758.w);
            let x_2760 : vec4<f32> = u_xlat9;
            let x_2762 : vec2<f32> = min(vec2<f32>(x_2760.x, x_2760.y), vec2<f32>(0.0f, 0.0f));
            let x_2763 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2762.x, x_2762.y, x_2763.z, x_2763.w);
            let x_2765 : vec4<f32> = u_xlat11;
            let x_2768 : vec4<f32> = u_xlat11;
            let x_2771 : vec4<f32> = u_xlat10;
            let x_2773 : vec2<f32> = ((-(vec2<f32>(x_2765.x, x_2765.y)) * vec2<f32>(x_2768.x, x_2768.y)) + vec2<f32>(x_2771.x, x_2771.z));
            let x_2774 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2773.x, x_2774.y, x_2773.y, x_2774.w);
            let x_2776 : vec4<f32> = u_xlat9;
            let x_2778 : vec2<f32> = max(vec2<f32>(x_2776.x, x_2776.y), vec2<f32>(0.0f, 0.0f));
            let x_2779 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2778.x, x_2778.y, x_2779.z, x_2779.w);
            let x_2781 : vec4<f32> = u_xlat11;
            let x_2784 : vec4<f32> = u_xlat11;
            let x_2787 : vec4<f32> = u_xlat10;
            let x_2789 : vec2<f32> = ((-(vec2<f32>(x_2781.x, x_2781.y)) * vec2<f32>(x_2784.x, x_2784.y)) + vec2<f32>(x_2787.y, x_2787.w));
            let x_2790 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2790.x, x_2789.x, x_2790.z, x_2789.y);
            let x_2792 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2792 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2796 : f32 = u_xlat10.y;
            u_xlat11.z = (x_2796 * 0.08163200318813323975f);
            let x_2799 : vec2<f32> = u_xlat55;
            let x_2801 : vec2<f32> = (vec2<f32>(x_2799.y, x_2799.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2802 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2801.x, x_2801.y, x_2802.z, x_2802.w);
            let x_2804 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2804.x, x_2804.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2808 : f32 = u_xlat10.w;
            u_xlat13.z = (x_2808 * 0.08163200318813323975f);
            let x_2812 : f32 = u_xlat13.y;
            u_xlat11.x = x_2812;
            let x_2814 : vec4<f32> = u_xlat9;
            let x_2817 : vec2<f32> = ((vec2<f32>(x_2814.x, x_2814.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2818 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2818.x, x_2817.x, x_2818.z, x_2817.y);
            let x_2820 : vec4<f32> = u_xlat9;
            let x_2823 : vec2<f32> = ((vec2<f32>(x_2820.x, x_2820.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2824 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2823.x, x_2824.y, x_2823.y, x_2824.w);
            let x_2827 : f32 = u_xlat55.x;
            u_xlat10.y = x_2827;
            let x_2830 : f32 = u_xlat12.y;
            u_xlat10.w = x_2830;
            let x_2832 : vec4<f32> = u_xlat10;
            let x_2833 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2832 + x_2833);
            let x_2835 : vec4<f32> = u_xlat9;
            let x_2838 : vec2<f32> = ((vec2<f32>(x_2835.y, x_2835.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2839 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2839.x, x_2838.x, x_2839.z, x_2838.y);
            let x_2841 : vec4<f32> = u_xlat9;
            let x_2844 : vec2<f32> = ((vec2<f32>(x_2841.y, x_2841.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2845 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2844.x, x_2845.y, x_2844.y, x_2845.w);
            let x_2848 : f32 = u_xlat55.y;
            u_xlat12.y = x_2848;
            let x_2850 : vec4<f32> = u_xlat12;
            let x_2851 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2850 + x_2851);
            let x_2853 : vec4<f32> = u_xlat10;
            let x_2854 : vec4<f32> = u_xlat11;
            u_xlat10 = (x_2853 / x_2854);
            let x_2856 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2856 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2858 : vec4<f32> = u_xlat12;
            let x_2859 : vec4<f32> = u_xlat9;
            u_xlat12 = (x_2858 / x_2859);
            let x_2861 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2861 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2863 : vec4<f32> = u_xlat10;
            let x_2866 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2863.w, x_2863.x, x_2863.y, x_2863.z) * vec4<f32>(x_2866.x, x_2866.x, x_2866.x, x_2866.x));
            let x_2869 : vec4<f32> = u_xlat12;
            let x_2872 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2869.x, x_2869.w, x_2869.y, x_2869.z) * vec4<f32>(x_2872.y, x_2872.y, x_2872.y, x_2872.y));
            let x_2875 : vec4<f32> = u_xlat10;
            let x_2876 : vec3<f32> = vec3<f32>(x_2875.y, x_2875.z, x_2875.w);
            let x_2877 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2876.x, x_2877.y, x_2876.y, x_2876.z);
            let x_2880 : f32 = u_xlat12.x;
            u_xlat13.y = x_2880;
            let x_2882 : vec2<f32> = u_xlat51;
            let x_2885 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2888 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2882.x, x_2882.y, x_2882.x, x_2882.y) * vec4<f32>(x_2885.x, x_2885.y, x_2885.x, x_2885.y)) + vec4<f32>(x_2888.x, x_2888.y, x_2888.z, x_2888.y));
            let x_2891 : vec2<f32> = u_xlat51;
            let x_2893 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2896 : vec4<f32> = u_xlat13;
            let x_2898 : vec2<f32> = ((x_2891 * vec2<f32>(x_2893.x, x_2893.y)) + vec2<f32>(x_2896.w, x_2896.y));
            let x_2899 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2898.x, x_2898.y, x_2899.z, x_2899.w);
            let x_2902 : f32 = u_xlat13.y;
            u_xlat10.y = x_2902;
            let x_2905 : f32 = u_xlat12.z;
            u_xlat13.y = x_2905;
            let x_2907 : vec2<f32> = u_xlat51;
            let x_2910 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2913 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2907.x, x_2907.y, x_2907.x, x_2907.y) * vec4<f32>(x_2910.x, x_2910.y, x_2910.x, x_2910.y)) + vec4<f32>(x_2913.x, x_2913.y, x_2913.z, x_2913.y));
            let x_2917 : vec2<f32> = u_xlat51;
            let x_2919 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2922 : vec4<f32> = u_xlat13;
            u_xlat61 = ((x_2917 * vec2<f32>(x_2919.x, x_2919.y)) + vec2<f32>(x_2922.w, x_2922.y));
            let x_2926 : f32 = u_xlat13.y;
            u_xlat10.z = x_2926;
            let x_2928 : vec2<f32> = u_xlat51;
            let x_2931 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y) * vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y)) + vec4<f32>(x_2934.x, x_2934.y, x_2934.x, x_2934.z));
            let x_2938 : f32 = u_xlat12.w;
            u_xlat13.y = x_2938;
            let x_2940 : vec2<f32> = u_xlat51;
            let x_2943 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2946 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.y) * vec4<f32>(x_2943.x, x_2943.y, x_2943.x, x_2943.y)) + vec4<f32>(x_2946.x, x_2946.y, x_2946.z, x_2946.y));
            let x_2950 : vec2<f32> = u_xlat51;
            let x_2952 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2955 : vec4<f32> = u_xlat13;
            u_xlat33 = ((x_2950 * vec2<f32>(x_2952.x, x_2952.y)) + vec2<f32>(x_2955.w, x_2955.y));
            let x_2959 : f32 = u_xlat13.y;
            u_xlat10.w = x_2959;
            let x_2962 : vec2<f32> = u_xlat51;
            let x_2964 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2967 : vec4<f32> = u_xlat10;
            u_xlat19 = ((x_2962 * vec2<f32>(x_2964.x, x_2964.y)) + vec2<f32>(x_2967.x, x_2967.w));
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2971 : vec3<f32> = vec3<f32>(x_2970.x, x_2970.z, x_2970.w);
            let x_2972 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2971.x, x_2972.y, x_2971.y, x_2971.z);
            let x_2974 : vec2<f32> = u_xlat51;
            let x_2977 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2980 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2974.x, x_2974.y, x_2974.x, x_2974.y) * vec4<f32>(x_2977.x, x_2977.y, x_2977.x, x_2977.y)) + vec4<f32>(x_2980.x, x_2980.y, x_2980.z, x_2980.y));
            let x_2984 : vec2<f32> = u_xlat51;
            let x_2986 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2989 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2984 * vec2<f32>(x_2986.x, x_2986.y)) + vec2<f32>(x_2989.w, x_2989.y));
            let x_2993 : f32 = u_xlat10.x;
            u_xlat12.x = x_2993;
            let x_2995 : vec2<f32> = u_xlat51;
            let x_2997 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_3000 : vec4<f32> = u_xlat12;
            u_xlat51 = ((x_2995 * vec2<f32>(x_2997.x, x_2997.y)) + vec2<f32>(x_3000.x, x_3000.y));
            let x_3004 : vec4<f32> = u_xlat9;
            let x_3006 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_3004.x, x_3004.x, x_3004.x, x_3004.x) * x_3006);
            let x_3009 : vec4<f32> = u_xlat9;
            let x_3011 : vec4<f32> = u_xlat11;
            u_xlat21 = (vec4<f32>(x_3009.y, x_3009.y, x_3009.y, x_3009.y) * x_3011);
            let x_3014 : vec4<f32> = u_xlat9;
            let x_3016 : vec4<f32> = u_xlat11;
            u_xlat22 = (vec4<f32>(x_3014.z, x_3014.z, x_3014.z, x_3014.z) * x_3016);
            let x_3018 : vec4<f32> = u_xlat9;
            let x_3020 : vec4<f32> = u_xlat11;
            u_xlat9 = (vec4<f32>(x_3018.w, x_3018.w, x_3018.w, x_3018.w) * x_3020);
            let x_3023 : vec4<f32> = u_xlat14;
            let x_3024 : vec2<f32> = vec2<f32>(x_3023.x, x_3023.y);
            let x_3026 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
            let x_3033 : vec3<f32> = txVec43;
            let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
            u_xlat75 = x_3035;
            let x_3037 : vec4<f32> = u_xlat14;
            let x_3038 : vec2<f32> = vec2<f32>(x_3037.z, x_3037.w);
            let x_3040 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
            let x_3048 : vec3<f32> = txVec44;
            let x_3050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3048.xy, x_3048.z);
            u_xlat76 = x_3050;
            let x_3051 : f32 = u_xlat76;
            let x_3053 : f32 = u_xlat20.y;
            u_xlat76 = (x_3051 * x_3053);
            let x_3056 : f32 = u_xlat20.x;
            let x_3057 : f32 = u_xlat75;
            let x_3059 : f32 = u_xlat76;
            u_xlat75 = ((x_3056 * x_3057) + x_3059);
            let x_3062 : vec4<f32> = u_xlat15;
            let x_3063 : vec2<f32> = vec2<f32>(x_3062.x, x_3062.y);
            let x_3065 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3063.x, x_3063.y, x_3065);
            let x_3072 : vec3<f32> = txVec45;
            let x_3074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3072.xy, x_3072.z);
            u_xlat76 = x_3074;
            let x_3076 : f32 = u_xlat20.z;
            let x_3077 : f32 = u_xlat76;
            let x_3079 : f32 = u_xlat75;
            u_xlat75 = ((x_3076 * x_3077) + x_3079);
            let x_3082 : vec4<f32> = u_xlat17;
            let x_3083 : vec2<f32> = vec2<f32>(x_3082.x, x_3082.y);
            let x_3085 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3083.x, x_3083.y, x_3085);
            let x_3092 : vec3<f32> = txVec46;
            let x_3094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3092.xy, x_3092.z);
            u_xlat76 = x_3094;
            let x_3096 : f32 = u_xlat20.w;
            let x_3097 : f32 = u_xlat76;
            let x_3099 : f32 = u_xlat75;
            u_xlat75 = ((x_3096 * x_3097) + x_3099);
            let x_3102 : vec4<f32> = u_xlat16;
            let x_3103 : vec2<f32> = vec2<f32>(x_3102.x, x_3102.y);
            let x_3105 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3103.x, x_3103.y, x_3105);
            let x_3112 : vec3<f32> = txVec47;
            let x_3114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3112.xy, x_3112.z);
            u_xlat76 = x_3114;
            let x_3116 : f32 = u_xlat21.x;
            let x_3117 : f32 = u_xlat76;
            let x_3119 : f32 = u_xlat75;
            u_xlat75 = ((x_3116 * x_3117) + x_3119);
            let x_3122 : vec4<f32> = u_xlat16;
            let x_3123 : vec2<f32> = vec2<f32>(x_3122.z, x_3122.w);
            let x_3125 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
            let x_3132 : vec3<f32> = txVec48;
            let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
            u_xlat76 = x_3134;
            let x_3136 : f32 = u_xlat21.y;
            let x_3137 : f32 = u_xlat76;
            let x_3139 : f32 = u_xlat75;
            u_xlat75 = ((x_3136 * x_3137) + x_3139);
            let x_3142 : vec2<f32> = u_xlat61;
            let x_3144 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3142.x, x_3142.y, x_3144);
            let x_3151 : vec3<f32> = txVec49;
            let x_3153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3151.xy, x_3151.z);
            u_xlat76 = x_3153;
            let x_3155 : f32 = u_xlat21.z;
            let x_3156 : f32 = u_xlat76;
            let x_3158 : f32 = u_xlat75;
            u_xlat75 = ((x_3155 * x_3156) + x_3158);
            let x_3161 : vec4<f32> = u_xlat17;
            let x_3162 : vec2<f32> = vec2<f32>(x_3161.z, x_3161.w);
            let x_3164 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
            let x_3171 : vec3<f32> = txVec50;
            let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
            u_xlat76 = x_3173;
            let x_3175 : f32 = u_xlat21.w;
            let x_3176 : f32 = u_xlat76;
            let x_3178 : f32 = u_xlat75;
            u_xlat75 = ((x_3175 * x_3176) + x_3178);
            let x_3181 : vec4<f32> = u_xlat18;
            let x_3182 : vec2<f32> = vec2<f32>(x_3181.x, x_3181.y);
            let x_3184 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3182.x, x_3182.y, x_3184);
            let x_3191 : vec3<f32> = txVec51;
            let x_3193 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3191.xy, x_3191.z);
            u_xlat76 = x_3193;
            let x_3195 : f32 = u_xlat22.x;
            let x_3196 : f32 = u_xlat76;
            let x_3198 : f32 = u_xlat75;
            u_xlat75 = ((x_3195 * x_3196) + x_3198);
            let x_3201 : vec4<f32> = u_xlat18;
            let x_3202 : vec2<f32> = vec2<f32>(x_3201.z, x_3201.w);
            let x_3204 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec52;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat76 = x_3213;
            let x_3215 : f32 = u_xlat22.y;
            let x_3216 : f32 = u_xlat76;
            let x_3218 : f32 = u_xlat75;
            u_xlat75 = ((x_3215 * x_3216) + x_3218);
            let x_3221 : vec2<f32> = u_xlat33;
            let x_3223 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec53;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat76 = x_3232;
            let x_3234 : f32 = u_xlat22.z;
            let x_3235 : f32 = u_xlat76;
            let x_3237 : f32 = u_xlat75;
            u_xlat75 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec2<f32> = u_xlat19;
            let x_3242 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3240.x, x_3240.y, x_3242);
            let x_3249 : vec3<f32> = txVec54;
            let x_3251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3249.xy, x_3249.z);
            u_xlat76 = x_3251;
            let x_3253 : f32 = u_xlat22.w;
            let x_3254 : f32 = u_xlat76;
            let x_3256 : f32 = u_xlat75;
            u_xlat75 = ((x_3253 * x_3254) + x_3256);
            let x_3259 : vec4<f32> = u_xlat13;
            let x_3260 : vec2<f32> = vec2<f32>(x_3259.x, x_3259.y);
            let x_3262 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3260.x, x_3260.y, x_3262);
            let x_3269 : vec3<f32> = txVec55;
            let x_3271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3269.xy, x_3269.z);
            u_xlat76 = x_3271;
            let x_3273 : f32 = u_xlat9.x;
            let x_3274 : f32 = u_xlat76;
            let x_3276 : f32 = u_xlat75;
            u_xlat75 = ((x_3273 * x_3274) + x_3276);
            let x_3279 : vec4<f32> = u_xlat13;
            let x_3280 : vec2<f32> = vec2<f32>(x_3279.z, x_3279.w);
            let x_3282 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3280.x, x_3280.y, x_3282);
            let x_3289 : vec3<f32> = txVec56;
            let x_3291 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3289.xy, x_3289.z);
            u_xlat76 = x_3291;
            let x_3293 : f32 = u_xlat9.y;
            let x_3294 : f32 = u_xlat76;
            let x_3296 : f32 = u_xlat75;
            u_xlat75 = ((x_3293 * x_3294) + x_3296);
            let x_3299 : vec2<f32> = u_xlat58;
            let x_3301 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3299.x, x_3299.y, x_3301);
            let x_3308 : vec3<f32> = txVec57;
            let x_3310 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3308.xy, x_3308.z);
            u_xlat76 = x_3310;
            let x_3312 : f32 = u_xlat9.z;
            let x_3313 : f32 = u_xlat76;
            let x_3315 : f32 = u_xlat75;
            u_xlat75 = ((x_3312 * x_3313) + x_3315);
            let x_3318 : vec2<f32> = u_xlat51;
            let x_3320 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec58;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat51.x = x_3329;
            let x_3332 : f32 = u_xlat9.w;
            let x_3334 : f32 = u_xlat51.x;
            let x_3336 : f32 = u_xlat75;
            u_xlat73 = ((x_3332 * x_3334) + x_3336);
          }
        }
      } else {
        let x_3340 : vec4<f32> = u_xlat8;
        let x_3341 : vec2<f32> = vec2<f32>(x_3340.x, x_3340.y);
        let x_3343 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3341.x, x_3341.y, x_3343);
        let x_3350 : vec3<f32> = txVec59;
        let x_3352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3350.xy, x_3350.z);
        u_xlat73 = x_3352;
      }
      let x_3353 : i32 = u_xlati71;
      let x_3355 : f32 = x_158.x_AdditionalShadowParams[x_3353].x;
      u_xlat51.x = (1.0f + -(x_3355));
      let x_3359 : f32 = u_xlat73;
      let x_3360 : i32 = u_xlati71;
      let x_3362 : f32 = x_158.x_AdditionalShadowParams[x_3360].x;
      let x_3365 : f32 = u_xlat51.x;
      u_xlat73 = ((x_3359 * x_3362) + x_3365);
      let x_3368 : f32 = u_xlat8.z;
      u_xlatb51 = (0.0f >= x_3368);
      let x_3372 : f32 = u_xlat8.z;
      u_xlatb74 = (x_3372 >= 1.0f);
      let x_3374 : bool = u_xlatb74;
      let x_3375 : bool = u_xlatb51;
      u_xlatb51 = (x_3374 | x_3375);
      let x_3377 : bool = u_xlatb51;
      let x_3378 : f32 = u_xlat73;
      u_xlat73 = select(x_3378, 1.0f, x_3377);
    } else {
      u_xlat73 = 1.0f;
    }
    let x_3381 : f32 = u_xlat73;
    u_xlat51.x = (-(x_3381) + 1.0f);
    let x_3385 : f32 = u_xlat69;
    let x_3387 : f32 = u_xlat51.x;
    let x_3389 : f32 = u_xlat73;
    u_xlat73 = ((x_3385 * x_3387) + x_3389);
    let x_3392 : i32 = u_xlati71;
    u_xlati51 = (1i << bitcast<u32>((x_3392 & 31i)));
    let x_3396 : i32 = u_xlati51;
    let x_3399 : f32 = x_1719.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_3396) & bitcast<u32>(x_3399)));
    let x_3403 : i32 = u_xlati51;
    if ((x_3403 != 0i)) {
      let x_3407 : i32 = u_xlati71;
      let x_3409 : f32 = x_1719.x_AdditionalLightsLightTypes[x_3407].el;
      u_xlati51 = i32(x_3409);
      let x_3412 : i32 = u_xlati51;
      u_xlati74 = select(1i, 0i, (x_3412 != 0i));
      let x_3416 : i32 = u_xlati71;
      u_xlati75 = (x_3416 << bitcast<u32>(2i));
      let x_3418 : i32 = u_xlati74;
      if ((x_3418 != 0i)) {
        let x_3422 : vec3<f32> = vs_TEXCOORD1;
        let x_3424 : i32 = u_xlati75;
        let x_3427 : i32 = u_xlati75;
        let x_3431 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3424 + 1i) / 4i)][((x_3427 + 1i) % 4i)];
        let x_3433 : vec3<f32> = (vec3<f32>(x_3422.y, x_3422.y, x_3422.y) * vec3<f32>(x_3431.x, x_3431.y, x_3431.w));
        let x_3434 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3433.x, x_3433.y, x_3433.z, x_3434.w);
        let x_3436 : i32 = u_xlati75;
        let x_3438 : i32 = u_xlati75;
        let x_3441 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[(x_3436 / 4i)][(x_3438 % 4i)];
        let x_3443 : vec3<f32> = vs_TEXCOORD1;
        let x_3446 : vec4<f32> = u_xlat8;
        let x_3448 : vec3<f32> = ((vec3<f32>(x_3441.x, x_3441.y, x_3441.w) * vec3<f32>(x_3443.x, x_3443.x, x_3443.x)) + vec3<f32>(x_3446.x, x_3446.y, x_3446.z));
        let x_3449 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3448.x, x_3448.y, x_3448.z, x_3449.w);
        let x_3451 : i32 = u_xlati75;
        let x_3454 : i32 = u_xlati75;
        let x_3458 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3451 + 2i) / 4i)][((x_3454 + 2i) % 4i)];
        let x_3460 : vec3<f32> = vs_TEXCOORD1;
        let x_3463 : vec4<f32> = u_xlat8;
        let x_3465 : vec3<f32> = ((vec3<f32>(x_3458.x, x_3458.y, x_3458.w) * vec3<f32>(x_3460.z, x_3460.z, x_3460.z)) + vec3<f32>(x_3463.x, x_3463.y, x_3463.z));
        let x_3466 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3465.x, x_3465.y, x_3465.z, x_3466.w);
        let x_3468 : vec4<f32> = u_xlat8;
        let x_3470 : i32 = u_xlati75;
        let x_3473 : i32 = u_xlati75;
        let x_3477 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3470 + 3i) / 4i)][((x_3473 + 3i) % 4i)];
        let x_3479 : vec3<f32> = (vec3<f32>(x_3468.x, x_3468.y, x_3468.z) + vec3<f32>(x_3477.x, x_3477.y, x_3477.w));
        let x_3480 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3479.x, x_3479.y, x_3479.z, x_3480.w);
        let x_3482 : vec4<f32> = u_xlat8;
        let x_3484 : vec4<f32> = u_xlat8;
        let x_3486 : vec2<f32> = (vec2<f32>(x_3482.x, x_3482.y) / vec2<f32>(x_3484.z, x_3484.z));
        let x_3487 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3486.x, x_3486.y, x_3487.z, x_3487.w);
        let x_3489 : vec4<f32> = u_xlat8;
        let x_3492 : vec2<f32> = ((vec2<f32>(x_3489.x, x_3489.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3493 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3492.x, x_3492.y, x_3493.z, x_3493.w);
        let x_3495 : vec4<f32> = u_xlat8;
        let x_3499 : vec2<f32> = clamp(vec2<f32>(x_3495.x, x_3495.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3500 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3499.x, x_3499.y, x_3500.z, x_3500.w);
        let x_3502 : i32 = u_xlati71;
        let x_3504 : vec4<f32> = x_1719.x_AdditionalLightsCookieAtlasUVRects[x_3502];
        let x_3506 : vec4<f32> = u_xlat8;
        let x_3509 : i32 = u_xlati71;
        let x_3511 : vec4<f32> = x_1719.x_AdditionalLightsCookieAtlasUVRects[x_3509];
        let x_3513 : vec2<f32> = ((vec2<f32>(x_3504.x, x_3504.y) * vec2<f32>(x_3506.x, x_3506.y)) + vec2<f32>(x_3511.z, x_3511.w));
        let x_3514 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3513.x, x_3513.y, x_3514.z, x_3514.w);
      } else {
        let x_3517 : i32 = u_xlati51;
        u_xlatb51 = (x_3517 == 1i);
        let x_3519 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_3519);
        let x_3521 : i32 = u_xlati51;
        if ((x_3521 != 0i)) {
          let x_3525 : vec3<f32> = vs_TEXCOORD1;
          let x_3527 : i32 = u_xlati75;
          let x_3530 : i32 = u_xlati75;
          let x_3534 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3527 + 1i) / 4i)][((x_3530 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3525.y, x_3525.y) * vec2<f32>(x_3534.x, x_3534.y));
          let x_3537 : i32 = u_xlati75;
          let x_3539 : i32 = u_xlati75;
          let x_3542 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[(x_3537 / 4i)][(x_3539 % 4i)];
          let x_3544 : vec3<f32> = vs_TEXCOORD1;
          let x_3547 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3542.x, x_3542.y) * vec2<f32>(x_3544.x, x_3544.x)) + x_3547);
          let x_3549 : i32 = u_xlati75;
          let x_3552 : i32 = u_xlati75;
          let x_3556 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3549 + 2i) / 4i)][((x_3552 + 2i) % 4i)];
          let x_3558 : vec3<f32> = vs_TEXCOORD1;
          let x_3561 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3556.x, x_3556.y) * vec2<f32>(x_3558.z, x_3558.z)) + x_3561);
          let x_3563 : vec2<f32> = u_xlat51;
          let x_3564 : i32 = u_xlati75;
          let x_3567 : i32 = u_xlati75;
          let x_3571 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3564 + 3i) / 4i)][((x_3567 + 3i) % 4i)];
          u_xlat51 = (x_3563 + vec2<f32>(x_3571.x, x_3571.y));
          let x_3574 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3574 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3577 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3577);
          let x_3579 : i32 = u_xlati71;
          let x_3581 : vec4<f32> = x_1719.x_AdditionalLightsCookieAtlasUVRects[x_3579];
          let x_3583 : vec2<f32> = u_xlat51;
          let x_3585 : i32 = u_xlati71;
          let x_3587 : vec4<f32> = x_1719.x_AdditionalLightsCookieAtlasUVRects[x_3585];
          let x_3589 : vec2<f32> = ((vec2<f32>(x_3581.x, x_3581.y) * x_3583) + vec2<f32>(x_3587.z, x_3587.w));
          let x_3590 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3589.x, x_3589.y, x_3590.z, x_3590.w);
        } else {
          let x_3593 : vec3<f32> = vs_TEXCOORD1;
          let x_3595 : i32 = u_xlati75;
          let x_3598 : i32 = u_xlati75;
          let x_3602 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3595 + 1i) / 4i)][((x_3598 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_3593.y, x_3593.y, x_3593.y, x_3593.y) * x_3602);
          let x_3604 : i32 = u_xlati75;
          let x_3606 : i32 = u_xlati75;
          let x_3609 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[(x_3604 / 4i)][(x_3606 % 4i)];
          let x_3610 : vec3<f32> = vs_TEXCOORD1;
          let x_3613 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3609 * vec4<f32>(x_3610.x, x_3610.x, x_3610.x, x_3610.x)) + x_3613);
          let x_3615 : i32 = u_xlati75;
          let x_3618 : i32 = u_xlati75;
          let x_3622 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3615 + 2i) / 4i)][((x_3618 + 2i) % 4i)];
          let x_3623 : vec3<f32> = vs_TEXCOORD1;
          let x_3626 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_3622 * vec4<f32>(x_3623.z, x_3623.z, x_3623.z, x_3623.z)) + x_3626);
          let x_3628 : vec4<f32> = u_xlat9;
          let x_3629 : i32 = u_xlati75;
          let x_3632 : i32 = u_xlati75;
          let x_3636 : vec4<f32> = x_1719.x_AdditionalLightsWorldToLights[((x_3629 + 3i) / 4i)][((x_3632 + 3i) % 4i)];
          u_xlat9 = (x_3628 + x_3636);
          let x_3638 : vec4<f32> = u_xlat9;
          let x_3640 : vec4<f32> = u_xlat9;
          let x_3642 : vec3<f32> = (vec3<f32>(x_3638.x, x_3638.y, x_3638.z) / vec3<f32>(x_3640.w, x_3640.w, x_3640.w));
          let x_3643 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3642.x, x_3642.y, x_3642.z, x_3643.w);
          let x_3645 : vec4<f32> = u_xlat9;
          let x_3647 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(vec3<f32>(x_3645.x, x_3645.y, x_3645.z), vec3<f32>(x_3647.x, x_3647.y, x_3647.z));
          let x_3652 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_3652);
          let x_3655 : vec2<f32> = u_xlat51;
          let x_3657 : vec4<f32> = u_xlat9;
          let x_3659 : vec3<f32> = (vec3<f32>(x_3655.x, x_3655.x, x_3655.x) * vec3<f32>(x_3657.x, x_3657.y, x_3657.z));
          let x_3660 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
          let x_3662 : vec4<f32> = u_xlat9;
          u_xlat51.x = dot(abs(vec3<f32>(x_3662.x, x_3662.y, x_3662.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3669 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_3669, 0.00000099999999747524f);
          let x_3674 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_3674);
          let x_3677 : vec2<f32> = u_xlat51;
          let x_3679 : vec4<f32> = u_xlat9;
          let x_3681 : vec3<f32> = (vec3<f32>(x_3677.x, x_3677.x, x_3677.x) * vec3<f32>(x_3679.z, x_3679.x, x_3679.y));
          let x_3682 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_3681.x, x_3681.y, x_3681.z, x_3682.w);
          let x_3685 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_3685);
          let x_3689 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_3689, 0.0f, 1.0f);
          let x_3693 : vec4<f32> = u_xlat10;
          let x_3695 : vec4<bool> = (vec4<f32>(x_3693.y, x_3693.z, x_3693.y, x_3693.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_3695.x, x_3695.y);
          let x_3698 : bool = u_xlatb54.x;
          if (x_3698) {
            let x_3703 : f32 = u_xlat10.x;
            x_3699 = x_3703;
          } else {
            let x_3706 : f32 = u_xlat10.x;
            x_3699 = -(x_3706);
          }
          let x_3708 : f32 = x_3699;
          u_xlat54.x = x_3708;
          let x_3711 : bool = u_xlatb54.y;
          if (x_3711) {
            let x_3716 : f32 = u_xlat10.x;
            x_3712 = x_3716;
          } else {
            let x_3719 : f32 = u_xlat10.x;
            x_3712 = -(x_3719);
          }
          let x_3721 : f32 = x_3712;
          u_xlat54.y = x_3721;
          let x_3723 : vec4<f32> = u_xlat9;
          let x_3725 : vec2<f32> = u_xlat51;
          let x_3728 : vec2<f32> = u_xlat54;
          u_xlat51 = ((vec2<f32>(x_3723.x, x_3723.y) * vec2<f32>(x_3725.x, x_3725.x)) + x_3728);
          let x_3730 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3730 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3733 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3733, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3737 : i32 = u_xlati71;
          let x_3739 : vec4<f32> = x_1719.x_AdditionalLightsCookieAtlasUVRects[x_3737];
          let x_3741 : vec2<f32> = u_xlat51;
          let x_3743 : i32 = u_xlati71;
          let x_3745 : vec4<f32> = x_1719.x_AdditionalLightsCookieAtlasUVRects[x_3743];
          let x_3747 : vec2<f32> = ((vec2<f32>(x_3739.x, x_3739.y) * x_3741) + vec2<f32>(x_3745.z, x_3745.w));
          let x_3748 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3747.x, x_3747.y, x_3748.z, x_3748.w);
        }
      }
      let x_3755 : vec4<f32> = u_xlat8;
      let x_3757 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3755.x, x_3755.y), 0.0f);
      u_xlat8 = x_3757;
      let x_3759 : bool = u_xlatb5.y;
      if (x_3759) {
        let x_3764 : f32 = u_xlat8.w;
        x_3760 = x_3764;
      } else {
        let x_3767 : f32 = u_xlat8.x;
        x_3760 = x_3767;
      }
      let x_3768 : f32 = x_3760;
      u_xlat51.x = x_3768;
      let x_3771 : bool = u_xlatb5.x;
      if (x_3771) {
        let x_3775 : vec4<f32> = u_xlat8;
        x_3772 = vec3<f32>(x_3775.x, x_3775.y, x_3775.z);
      } else {
        let x_3778 : vec2<f32> = u_xlat51;
        x_3772 = vec3<f32>(x_3778.x, x_3778.x, x_3778.x);
      }
      let x_3780 : vec3<f32> = x_3772;
      let x_3781 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_3780.x, x_3780.y, x_3780.z, x_3781.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_3787 : vec4<f32> = u_xlat8;
    let x_3789 : i32 = u_xlati71;
    let x_3791 : vec4<f32> = x_1961.x_AdditionalLightsColor[x_3789];
    let x_3793 : vec3<f32> = (vec3<f32>(x_3787.x, x_3787.y, x_3787.z) * vec3<f32>(x_3791.x, x_3791.y, x_3791.z));
    let x_3794 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3793.x, x_3793.y, x_3793.z, x_3794.w);
    let x_3796 : f32 = u_xlat72;
    let x_3797 : f32 = u_xlat73;
    u_xlat71 = (x_3796 * x_3797);
    let x_3799 : f32 = u_xlat71;
    let x_3801 : vec4<f32> = u_xlat8;
    let x_3803 : vec3<f32> = (vec3<f32>(x_3799, x_3799, x_3799) * vec3<f32>(x_3801.x, x_3801.y, x_3801.z));
    let x_3804 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3803.x, x_3803.y, x_3803.z, x_3804.w);
    let x_3806 : vec3<f32> = u_xlat2;
    let x_3807 : vec4<f32> = u_xlat7;
    u_xlat71 = dot(x_3806, vec3<f32>(x_3807.x, x_3807.y, x_3807.z));
    let x_3810 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3810, 0.0f, 1.0f);
    let x_3812 : f32 = u_xlat71;
    let x_3814 : vec4<f32> = u_xlat8;
    let x_3816 : vec3<f32> = (vec3<f32>(x_3812, x_3812, x_3812) * vec3<f32>(x_3814.x, x_3814.y, x_3814.z));
    let x_3817 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3816.x, x_3816.y, x_3816.z, x_3817.w);
    let x_3819 : vec4<f32> = u_xlat7;
    let x_3821 : vec4<f32> = u_xlat1;
    let x_3824 : vec4<f32> = u_xlat6;
    let x_3826 : vec3<f32> = ((vec3<f32>(x_3819.x, x_3819.y, x_3819.z) * vec3<f32>(x_3821.y, x_3821.z, x_3821.w)) + vec3<f32>(x_3824.x, x_3824.y, x_3824.z));
    let x_3827 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3826.x, x_3826.y, x_3826.z, x_3827.w);

    continuing {
      let x_3829 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3829 + bitcast<u32>(1i));
    }
  }
  let x_3831 : vec4<f32> = u_xlat4;
  let x_3833 : vec4<f32> = u_xlat1;
  let x_3836 : vec4<f32> = u_xlat3;
  let x_3838 : vec3<f32> = ((vec3<f32>(x_3831.x, x_3831.y, x_3831.z) * vec3<f32>(x_3833.y, x_3833.z, x_3833.w)) + vec3<f32>(x_3836.x, x_3836.y, x_3836.z));
  let x_3839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3838.x, x_3838.y, x_3838.z, x_3839.w);
  let x_3843 : vec4<f32> = u_xlat6;
  let x_3845 : vec4<f32> = u_xlat1;
  let x_3847 : vec3<f32> = (vec3<f32>(x_3843.x, x_3843.y, x_3843.z) + vec3<f32>(x_3845.x, x_3845.y, x_3845.z));
  let x_3848 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3847.x, x_3847.y, x_3847.z, x_3848.w);
  let x_3851 : f32 = x_41.x_Surface;
  u_xlatb23 = (x_3851 == 1.0f);
  let x_3853 : bool = u_xlatb23;
  let x_3854 : bool = u_xlatb46;
  u_xlatb23 = (x_3853 | x_3854);
  let x_3856 : bool = u_xlatb23;
  if (x_3856) {
    let x_3861 : f32 = u_xlat0.x;
    x_3857 = x_3861;
  } else {
    x_3857 = 1.0f;
  }
  let x_3863 : f32 = x_3857;
  SV_Target0.w = x_3863;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


