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

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_75 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat67 : f32;

var<private> u_xlatu67 : u32;

var<private> u_xlati67 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlatb67 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb68 : bool;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb24 : vec2<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1631 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1747 : UnityPerDraw;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1865 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlati72 : i32;

var<private> u_xlati7 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlatb29 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb48 : bool;

var<private> u_xlatu69 : u32;

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
  var x_1714 : f32;
  var x_1725 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2003 : f32;
  var x_2014 : f32;
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
  var x_3631 : f32;
  var x_3644 : f32;
  var x_3702 : f32;
  var x_3713 : vec3<f32>;
  var x_3797 : f32;
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
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_66 : vec3<f32> = vs_TEXCOORD1;
  let x_77 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres0;
  let x_80 : vec3<f32> = (x_66 + -(vec3<f32>(x_77.x, x_77.y, x_77.z)));
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec3<f32> = vs_TEXCOORD1;
  let x_87 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres1;
  let x_90 : vec3<f32> = (x_84 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_91 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_94 : vec3<f32> = vs_TEXCOORD1;
  let x_97 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres2;
  let x_100 : vec3<f32> = (x_94 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_104 : vec3<f32> = vs_TEXCOORD1;
  let x_107 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres3;
  let x_110 : vec3<f32> = (x_104 + -(vec3<f32>(x_107.x, x_107.y, x_107.z)));
  let x_111 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_113 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_119 : vec4<f32> = u_xlat3;
  let x_121 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_119.x, x_119.y, x_119.z), vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_126 : vec4<f32> = u_xlat4;
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_133 : vec4<f32> = u_xlat5;
  let x_135 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_133.x, x_133.y, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_144 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = x_75.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_144 < x_147);
  let x_151 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_151);
  let x_157 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_157);
  let x_161 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_161);
  let x_165 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_165);
  let x_169 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_169);
  let x_175 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_175);
  let x_179 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_179);
  let x_182 : vec4<f32> = u_xlat2;
  let x_184 : vec4<f32> = u_xlat3;
  let x_186 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + vec3<f32>(x_184.y, x_184.z, x_184.w));
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec4<f32> = u_xlat2;
  let x_192 : vec3<f32> = max(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_192.x, x_192.y, x_192.z);
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat67 = dot(x_196, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat67;
  u_xlat67 = (-(x_202) + 4.0f);
  let x_207 : f32 = u_xlat67;
  u_xlatu67 = u32(x_207);
  let x_211 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_211) << bitcast<u32>(2i));
  let x_214 : vec3<f32> = vs_TEXCOORD1;
  let x_216 : i32 = u_xlati67;
  let x_219 : i32 = u_xlati67;
  let x_223 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_216 + 1i) / 4i)][((x_219 + 1i) % 4i)];
  let x_225 : vec3<f32> = (vec3<f32>(x_214.y, x_214.y, x_214.y) * vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : i32 = u_xlati67;
  let x_230 : i32 = u_xlati67;
  let x_233 : vec4<f32> = x_75.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : i32 = u_xlati67;
  let x_246 : i32 = u_xlati67;
  let x_250 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_243 + 2i) / 4i)][((x_246 + 2i) % 4i)];
  let x_252 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.z, x_252.z, x_252.z)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : i32 = u_xlati67;
  let x_265 : i32 = u_xlati67;
  let x_269 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_262 + 3i) / 4i)][((x_265 + 3i) % 4i)];
  let x_271 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_280 : vec2<f32> = vs_TEXCOORD7;
  let x_282 : f32 = x_27.x_GlobalMipBias.x;
  let x_283 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_280, x_282);
  u_xlat3 = x_283;
  let x_288 : vec2<f32> = vs_TEXCOORD7;
  let x_290 : f32 = x_27.x_GlobalMipBias.x;
  let x_291 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_288, x_290);
  let x_292 : vec3<f32> = vec3<f32>(x_291.x, x_291.y, x_291.z);
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec3<f32> = u_xlat1;
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat67 = dot(x_302, vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : f32 = u_xlat67;
  u_xlat67 = (x_306 + 0.5f);
  let x_309 : f32 = u_xlat67;
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec3<f32> = (vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_317 : f32 = u_xlat3.w;
  u_xlat67 = max(x_317, 0.00009999999747378752f);
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : f32 = u_xlat67;
  let x_324 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) / vec3<f32>(x_322, x_322, x_322));
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_330 : f32 = x_75.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_330);
  let x_332 : bool = u_xlatb67;
  if (x_332) {
    let x_336 : f32 = x_75.x_MainLightShadowParams.y;
    u_xlatb67 = (x_336 == 1.0f);
    let x_338 : bool = u_xlatb67;
    if (x_338) {
      let x_341 : vec4<f32> = u_xlat2;
      let x_345 : vec4<f32> = x_75.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_341.x, x_341.y, x_341.x, x_341.y) + x_345);
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
      let x_352 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_364 : vec3<f32> = txVec0;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_364.xy, x_364.z);
      u_xlat5.x = x_366;
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec1;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.y = x_381;
      let x_383 : vec4<f32> = u_xlat2;
      let x_387 : vec4<f32> = x_75.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_383.x, x_383.y, x_383.x, x_383.y) + x_387);
      let x_390 : vec4<f32> = u_xlat4;
      let x_391 : vec2<f32> = vec2<f32>(x_390.x, x_390.y);
      let x_393 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_391.x, x_391.y, x_393);
      let x_400 : vec3<f32> = txVec2;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_400.xy, x_400.z);
      u_xlat5.z = x_402;
      let x_405 : vec4<f32> = u_xlat4;
      let x_406 : vec2<f32> = vec2<f32>(x_405.z, x_405.w);
      let x_408 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_406.x, x_406.y, x_408);
      let x_415 : vec3<f32> = txVec3;
      let x_417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_415.xy, x_415.z);
      u_xlat5.w = x_417;
      let x_419 : vec4<f32> = u_xlat5;
      u_xlat67 = dot(x_419, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_426 : f32 = x_75.x_MainLightShadowParams.y;
      u_xlatb68 = (x_426 == 2.0f);
      let x_428 : bool = u_xlatb68;
      if (x_428) {
        let x_431 : vec4<f32> = u_xlat2;
        let x_435 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_439 : vec2<f32> = ((vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_435.z, x_435.w)) + vec2<f32>(0.5f, 0.5f));
        let x_440 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec4<f32> = u_xlat4;
        let x_444 : vec2<f32> = floor(vec2<f32>(x_442.x, x_442.y));
        let x_445 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_449 : vec4<f32> = u_xlat2;
        let x_452 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_455 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.z, x_452.w)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_464 : vec4<f32> = u_xlat5;
        let x_466 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_464.x, x_464.x, x_464.z, x_464.z) * vec4<f32>(x_466.x, x_466.x, x_466.z, x_466.z));
        let x_469 : vec4<f32> = u_xlat6;
        let x_473 : vec2<f32> = (vec2<f32>(x_469.y, x_469.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_474 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_473.x, x_474.y, x_473.y, x_474.w);
        let x_476 : vec4<f32> = u_xlat6;
        let x_479 : vec2<f32> = u_xlat48;
        let x_481 : vec2<f32> = ((vec2<f32>(x_476.x, x_476.z) * vec2<f32>(0.5f, 0.5f)) + -(x_479));
        let x_482 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_485 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_485) + vec2<f32>(1.0f, 1.0f));
        let x_490 : vec2<f32> = u_xlat48;
        let x_492 : vec2<f32> = min(x_490, vec2<f32>(0.0f, 0.0f));
        let x_493 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat7;
        let x_498 : vec4<f32> = u_xlat7;
        let x_501 : vec2<f32> = u_xlat50;
        let x_502 : vec2<f32> = ((-(vec2<f32>(x_495.x, x_495.y)) * vec2<f32>(x_498.x, x_498.y)) + x_501);
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
        let x_505 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_505, vec2<f32>(0.0f, 0.0f));
        let x_507 : vec2<f32> = u_xlat48;
        let x_509 : vec2<f32> = u_xlat48;
        let x_511 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_507) * x_509) + vec2<f32>(x_511.y, x_511.w));
        let x_514 : vec4<f32> = u_xlat7;
        let x_516 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) + vec2<f32>(1.0f, 1.0f));
        let x_517 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_519 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_519 + vec2<f32>(1.0f, 1.0f));
        let x_522 : vec4<f32> = u_xlat6;
        let x_526 : vec2<f32> = (vec2<f32>(x_522.x, x_522.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
        let x_529 : vec2<f32> = u_xlat50;
        let x_530 : vec2<f32> = (x_529 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_531 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec2<f32> = (vec2<f32>(x_533.x, x_533.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_536 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
        let x_539 : vec2<f32> = u_xlat48;
        let x_540 : vec2<f32> = (x_539 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_541 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_543.y, x_543.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_547 : f32 = u_xlat7.x;
        u_xlat8.z = x_547;
        let x_550 : f32 = u_xlat48.x;
        u_xlat8.w = x_550;
        let x_553 : f32 = u_xlat9.x;
        u_xlat6.z = x_553;
        let x_556 : f32 = u_xlat5.x;
        u_xlat6.w = x_556;
        let x_559 : vec4<f32> = u_xlat6;
        let x_561 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_559.z, x_559.w, x_559.x, x_559.z) + vec4<f32>(x_561.z, x_561.w, x_561.x, x_561.z));
        let x_565 : f32 = u_xlat8.y;
        u_xlat7.z = x_565;
        let x_568 : f32 = u_xlat48.y;
        u_xlat7.w = x_568;
        let x_571 : f32 = u_xlat6.y;
        u_xlat9.z = x_571;
        let x_574 : f32 = u_xlat5.z;
        u_xlat9.w = x_574;
        let x_576 : vec4<f32> = u_xlat7;
        let x_578 : vec4<f32> = u_xlat9;
        let x_580 : vec3<f32> = (vec3<f32>(x_576.z, x_576.y, x_576.w) + vec3<f32>(x_578.z, x_578.y, x_578.w));
        let x_581 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat6;
        let x_585 : vec4<f32> = u_xlat10;
        let x_587 : vec3<f32> = (vec3<f32>(x_583.x, x_583.z, x_583.w) / vec3<f32>(x_585.z, x_585.w, x_585.y));
        let x_588 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
        let x_590 : vec4<f32> = u_xlat6;
        let x_595 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_600 : vec4<f32> = u_xlat5;
        let x_602 : vec3<f32> = (vec3<f32>(x_598.z, x_598.y, x_598.w) / vec3<f32>(x_600.x, x_600.y, x_600.z));
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat7;
        let x_607 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat6;
        let x_613 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_615 : vec3<f32> = (vec3<f32>(x_610.y, x_610.x, x_610.z) * vec3<f32>(x_613.x, x_613.x, x_613.x));
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat7;
        let x_621 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_623 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_621.y, x_621.y, x_621.y));
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_627 : f32 = u_xlat7.x;
        u_xlat6.w = x_627;
        let x_629 : vec4<f32> = u_xlat4;
        let x_632 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.y, x_635.w, x_635.x, x_635.w));
        let x_638 : vec4<f32> = u_xlat4;
        let x_641 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.z, x_644.w));
        let x_648 : f32 = u_xlat6.y;
        u_xlat7.w = x_648;
        let x_650 : vec4<f32> = u_xlat7;
        let x_651 : vec2<f32> = vec2<f32>(x_650.y, x_650.z);
        let x_652 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_652.x, x_651.x, x_652.z, x_651.y);
        let x_654 : vec4<f32> = u_xlat4;
        let x_657 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_660 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) * vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y)) + vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.y));
        let x_663 : vec4<f32> = u_xlat4;
        let x_666 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.w, x_669.y, x_669.w, x_669.z));
        let x_672 : vec4<f32> = u_xlat4;
        let x_675 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.y) * vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y)) + vec4<f32>(x_678.x, x_678.w, x_678.z, x_678.w));
        let x_682 : vec4<f32> = u_xlat5;
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_682.x, x_682.x, x_682.x, x_682.y) * vec4<f32>(x_684.z, x_684.w, x_684.y, x_684.z));
        let x_688 : vec4<f32> = u_xlat5;
        let x_690 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_688.y, x_688.y, x_688.z, x_688.z) * x_690);
        let x_694 : f32 = u_xlat5.z;
        let x_696 : f32 = u_xlat10.y;
        u_xlat68 = (x_694 * x_696);
        let x_699 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_710 : vec3<f32> = txVec4;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat69 = x_712;
        let x_714 : vec4<f32> = u_xlat8;
        let x_715 : vec2<f32> = vec2<f32>(x_714.z, x_714.w);
        let x_717 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_724 : vec3<f32> = txVec5;
        let x_726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_724.xy, x_724.z);
        u_xlat4.x = x_726;
        let x_729 : f32 = u_xlat4.x;
        let x_731 : f32 = u_xlat11.y;
        u_xlat4.x = (x_729 * x_731);
        let x_735 : f32 = u_xlat11.x;
        let x_736 : f32 = u_xlat69;
        let x_739 : f32 = u_xlat4.x;
        u_xlat69 = ((x_735 * x_736) + x_739);
        let x_742 : vec2<f32> = u_xlat48;
        let x_744 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_742.x, x_742.y, x_744);
        let x_751 : vec3<f32> = txVec6;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_751.xy, x_751.z);
        u_xlat4.x = x_753;
        let x_756 : f32 = u_xlat11.z;
        let x_758 : f32 = u_xlat4.x;
        let x_760 : f32 = u_xlat69;
        u_xlat69 = ((x_756 * x_758) + x_760);
        let x_763 : vec4<f32> = u_xlat7;
        let x_764 : vec2<f32> = vec2<f32>(x_763.x, x_763.y);
        let x_766 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_764.x, x_764.y, x_766);
        let x_773 : vec3<f32> = txVec7;
        let x_775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_773.xy, x_773.z);
        u_xlat4.x = x_775;
        let x_778 : f32 = u_xlat11.w;
        let x_780 : f32 = u_xlat4.x;
        let x_782 : f32 = u_xlat69;
        u_xlat69 = ((x_778 * x_780) + x_782);
        let x_785 : vec4<f32> = u_xlat9;
        let x_786 : vec2<f32> = vec2<f32>(x_785.x, x_785.y);
        let x_788 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_786.x, x_786.y, x_788);
        let x_795 : vec3<f32> = txVec8;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat4.x = x_797;
        let x_800 : f32 = u_xlat12.x;
        let x_802 : f32 = u_xlat4.x;
        let x_804 : f32 = u_xlat69;
        u_xlat69 = ((x_800 * x_802) + x_804);
        let x_807 : vec4<f32> = u_xlat9;
        let x_808 : vec2<f32> = vec2<f32>(x_807.z, x_807.w);
        let x_810 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec9;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat4.x = x_819;
        let x_822 : f32 = u_xlat12.y;
        let x_824 : f32 = u_xlat4.x;
        let x_826 : f32 = u_xlat69;
        u_xlat69 = ((x_822 * x_824) + x_826);
        let x_829 : vec4<f32> = u_xlat7;
        let x_830 : vec2<f32> = vec2<f32>(x_829.z, x_829.w);
        let x_832 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_830.x, x_830.y, x_832);
        let x_839 : vec3<f32> = txVec10;
        let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_839.xy, x_839.z);
        u_xlat4.x = x_841;
        let x_844 : f32 = u_xlat12.z;
        let x_846 : f32 = u_xlat4.x;
        let x_848 : f32 = u_xlat69;
        u_xlat69 = ((x_844 * x_846) + x_848);
        let x_851 : vec4<f32> = u_xlat6;
        let x_852 : vec2<f32> = vec2<f32>(x_851.x, x_851.y);
        let x_854 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_852.x, x_852.y, x_854);
        let x_861 : vec3<f32> = txVec11;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_861.xy, x_861.z);
        u_xlat4.x = x_863;
        let x_866 : f32 = u_xlat12.w;
        let x_868 : f32 = u_xlat4.x;
        let x_870 : f32 = u_xlat69;
        u_xlat69 = ((x_866 * x_868) + x_870);
        let x_873 : vec4<f32> = u_xlat6;
        let x_874 : vec2<f32> = vec2<f32>(x_873.z, x_873.w);
        let x_876 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_874.x, x_874.y, x_876);
        let x_883 : vec3<f32> = txVec12;
        let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_883.xy, x_883.z);
        u_xlat4.x = x_885;
        let x_887 : f32 = u_xlat68;
        let x_889 : f32 = u_xlat4.x;
        let x_891 : f32 = u_xlat69;
        u_xlat67 = ((x_887 * x_889) + x_891);
      } else {
        let x_894 : vec4<f32> = u_xlat2;
        let x_897 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat4;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat2;
        let x_911 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_914 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_911.z, x_911.w)) + -(vec2<f32>(x_914.x, x_914.y)));
        let x_918 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_918.x, x_918.x, x_918.y, x_918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_921 : vec4<f32> = u_xlat5;
        let x_923 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_921.x, x_921.x, x_921.z, x_921.z) * vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z));
        let x_926 : vec4<f32> = u_xlat6;
        let x_930 : vec2<f32> = (vec2<f32>(x_926.y, x_926.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_931 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_930.x, x_931.z, x_930.y);
        let x_933 : vec4<f32> = u_xlat6;
        let x_936 : vec2<f32> = u_xlat48;
        let x_938 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.z) * vec2<f32>(0.5f, 0.5f)) + -(x_936));
        let x_939 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_939.w);
        let x_941 : vec2<f32> = u_xlat48;
        let x_943 : vec2<f32> = (-(x_941) + vec2<f32>(1.0f, 1.0f));
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_946, vec2<f32>(0.0f, 0.0f));
        let x_948 : vec2<f32> = u_xlat50;
        let x_950 : vec2<f32> = u_xlat50;
        let x_952 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = ((-(x_948) * x_950) + vec2<f32>(x_952.x, x_952.y));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_957, vec2<f32>(0.0f, 0.0f));
        let x_960 : vec2<f32> = u_xlat50;
        let x_962 : vec2<f32> = u_xlat50;
        let x_964 : vec4<f32> = u_xlat5;
        let x_966 : vec2<f32> = ((-(x_960) * x_962) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_966.x, x_967.y, x_966.y);
        let x_969 : vec4<f32> = u_xlat6;
        let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(2.0f, 2.0f));
        let x_973 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec3<f32> = u_xlat27;
        let x_977 : vec2<f32> = (vec2<f32>(x_975.x, x_975.z) + vec2<f32>(2.0f, 2.0f));
        let x_978 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_981 : f32 = u_xlat5.y;
        u_xlat8.z = (x_981 * 0.08163200318813323975f);
        let x_985 : vec4<f32> = u_xlat5;
        let x_988 : vec3<f32> = (vec3<f32>(x_985.z, x_985.x, x_985.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat6;
        let x_994 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : f32 = u_xlat9.y;
        u_xlat8.x = x_998;
        let x_1000 : vec2<f32> = u_xlat48;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1008 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec2<f32> = u_xlat48;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1015 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1018 : f32 = u_xlat5.x;
        u_xlat6.y = x_1018;
        let x_1021 : f32 = u_xlat7.y;
        u_xlat6.w = x_1021;
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1023 + x_1024);
        let x_1026 : vec2<f32> = u_xlat48;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1026.y, x_1026.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1032 : vec2<f32> = u_xlat48;
        let x_1035 : vec2<f32> = ((vec2<f32>(x_1032.y, x_1032.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1036.w);
        let x_1039 : f32 = u_xlat5.y;
        u_xlat7.y = x_1039;
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1041 + x_1042);
        let x_1044 : vec4<f32> = u_xlat6;
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1044 / x_1045);
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1053 / x_1054);
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1056 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1061 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1058.w, x_1058.x, x_1058.y, x_1058.z) * vec4<f32>(x_1061.x, x_1061.x, x_1061.x, x_1061.x));
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1064.x, x_1064.w, x_1064.y, x_1064.z) * vec4<f32>(x_1067.y, x_1067.y, x_1067.y, x_1067.y));
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1071 : vec3<f32> = vec3<f32>(x_1070.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1071.z);
        let x_1075 : f32 = u_xlat7.x;
        u_xlat9.y = x_1075;
        let x_1077 : vec4<f32> = u_xlat4;
        let x_1080 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.y));
        let x_1086 : vec4<f32> = u_xlat4;
        let x_1089 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.w, x_1092.y));
        let x_1096 : f32 = u_xlat9.y;
        u_xlat6.y = x_1096;
        let x_1099 : f32 = u_xlat7.z;
        u_xlat9.y = x_1099;
        let x_1101 : vec4<f32> = u_xlat4;
        let x_1104 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y) * vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y)) + vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat9;
        let x_1118 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1122 : f32 = u_xlat9.y;
        u_xlat6.z = x_1122;
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.z));
        let x_1135 : f32 = u_xlat7.w;
        u_xlat9.y = x_1135;
        let x_1138 : vec4<f32> = u_xlat4;
        let x_1141 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1151 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1158 : f32 = u_xlat9.y;
        u_xlat6.w = x_1158;
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1164.x, x_1164.y)) + vec2<f32>(x_1167.x, x_1167.w));
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1171 : vec3<f32> = vec3<f32>(x_1170.x, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1171.z);
        let x_1174 : vec4<f32> = u_xlat4;
        let x_1177 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1180.y));
        let x_1184 : vec4<f32> = u_xlat4;
        let x_1187 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.w, x_1190.y));
        let x_1194 : f32 = u_xlat6.x;
        u_xlat7.x = x_1194;
        let x_1196 : vec4<f32> = u_xlat4;
        let x_1199 : vec4<f32> = x_75.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat7;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.x, x_1202.y));
        let x_1205 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1210 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.x) * x_1210);
        let x_1213 : vec4<f32> = u_xlat5;
        let x_1215 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y) * x_1215);
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1218.z, x_1218.z, x_1218.z, x_1218.z) * x_1220);
        let x_1222 : vec4<f32> = u_xlat5;
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1222.w, x_1222.w, x_1222.w, x_1222.w) * x_1224);
        let x_1227 : vec4<f32> = u_xlat10;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
        let x_1230 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1237 : vec3<f32> = txVec13;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat68 = x_1239;
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec14;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat69 = x_1253;
        let x_1254 : f32 = u_xlat69;
        let x_1256 : f32 = u_xlat15.y;
        u_xlat69 = (x_1254 * x_1256);
        let x_1259 : f32 = u_xlat15.x;
        let x_1260 : f32 = u_xlat68;
        let x_1262 : f32 = u_xlat69;
        u_xlat68 = ((x_1259 * x_1260) + x_1262);
        let x_1265 : vec2<f32> = u_xlat48;
        let x_1267 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec15;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat69 = x_1276;
        let x_1278 : f32 = u_xlat15.z;
        let x_1279 : f32 = u_xlat69;
        let x_1281 : f32 = u_xlat68;
        u_xlat68 = ((x_1278 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat13;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec16;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat69 = x_1296;
        let x_1298 : f32 = u_xlat15.w;
        let x_1299 : f32 = u_xlat69;
        let x_1301 : f32 = u_xlat68;
        u_xlat68 = ((x_1298 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat11;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec17;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat69 = x_1316;
        let x_1318 : f32 = u_xlat16.x;
        let x_1319 : f32 = u_xlat69;
        let x_1321 : f32 = u_xlat68;
        u_xlat68 = ((x_1318 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec18;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat69 = x_1336;
        let x_1338 : f32 = u_xlat16.y;
        let x_1339 : f32 = u_xlat69;
        let x_1341 : f32 = u_xlat68;
        u_xlat68 = ((x_1338 * x_1339) + x_1341);
        let x_1344 : vec4<f32> = u_xlat12;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.x, x_1344.y);
        let x_1347 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec19;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat69 = x_1356;
        let x_1358 : f32 = u_xlat16.z;
        let x_1359 : f32 = u_xlat69;
        let x_1361 : f32 = u_xlat68;
        u_xlat68 = ((x_1358 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat13;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.z, x_1364.w);
        let x_1367 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec20;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1374.xy, x_1374.z);
        u_xlat69 = x_1376;
        let x_1378 : f32 = u_xlat16.w;
        let x_1379 : f32 = u_xlat69;
        let x_1381 : f32 = u_xlat68;
        u_xlat68 = ((x_1378 * x_1379) + x_1381);
        let x_1384 : vec4<f32> = u_xlat14;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec21;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat69 = x_1396;
        let x_1398 : f32 = u_xlat17.x;
        let x_1399 : f32 = u_xlat69;
        let x_1401 : f32 = u_xlat68;
        u_xlat68 = ((x_1398 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat14;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec22;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat69 = x_1416;
        let x_1418 : f32 = u_xlat17.y;
        let x_1419 : f32 = u_xlat69;
        let x_1421 : f32 = u_xlat68;
        u_xlat68 = ((x_1418 * x_1419) + x_1421);
        let x_1424 : vec2<f32> = u_xlat28;
        let x_1426 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec23;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat69 = x_1435;
        let x_1437 : f32 = u_xlat17.z;
        let x_1438 : f32 = u_xlat69;
        let x_1440 : f32 = u_xlat68;
        u_xlat68 = ((x_1437 * x_1438) + x_1440);
        let x_1443 : vec2<f32> = u_xlat56;
        let x_1445 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec24;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat69 = x_1454;
        let x_1456 : f32 = u_xlat17.w;
        let x_1457 : f32 = u_xlat69;
        let x_1459 : f32 = u_xlat68;
        u_xlat68 = ((x_1456 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec25;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat69 = x_1474;
        let x_1476 : f32 = u_xlat5.x;
        let x_1477 : f32 = u_xlat69;
        let x_1479 : f32 = u_xlat68;
        u_xlat68 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat9;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.z, x_1482.w);
        let x_1485 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec26;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat69 = x_1494;
        let x_1496 : f32 = u_xlat5.y;
        let x_1497 : f32 = u_xlat69;
        let x_1499 : f32 = u_xlat68;
        u_xlat68 = ((x_1496 * x_1497) + x_1499);
        let x_1502 : vec2<f32> = u_xlat51;
        let x_1504 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec27;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat69 = x_1513;
        let x_1515 : f32 = u_xlat5.z;
        let x_1516 : f32 = u_xlat69;
        let x_1518 : f32 = u_xlat68;
        u_xlat68 = ((x_1515 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat4;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec28;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat69 = x_1533;
        let x_1535 : f32 = u_xlat5.w;
        let x_1536 : f32 = u_xlat69;
        let x_1538 : f32 = u_xlat68;
        u_xlat67 = ((x_1535 * x_1536) + x_1538);
      }
    }
  } else {
    let x_1542 : vec4<f32> = u_xlat2;
    let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
    let x_1545 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
    let x_1552 : vec3<f32> = txVec29;
    let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
    u_xlat67 = x_1554;
  }
  let x_1556 : f32 = x_75.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1556) + 1.0f);
  let x_1560 : f32 = u_xlat67;
  let x_1562 : f32 = x_75.x_MainLightShadowParams.x;
  let x_1565 : f32 = u_xlat2.x;
  u_xlat67 = ((x_1560 * x_1562) + x_1565);
  let x_1568 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_1568);
  let x_1575 : f32 = u_xlat2.z;
  u_xlatb24.x = (x_1575 >= 1.0f);
  let x_1579 : bool = u_xlatb24.x;
  let x_1581 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_1579 | x_1581);
  let x_1585 : bool = u_xlatb2.x;
  let x_1586 : f32 = u_xlat67;
  u_xlat67 = select(x_1586, 1.0f, x_1585);
  let x_1588 : vec3<f32> = vs_TEXCOORD1;
  let x_1591 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1593 : vec3<f32> = (x_1588 + -(x_1591));
  let x_1594 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
  let x_1596 : vec4<f32> = u_xlat2;
  let x_1598 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1604 : f32 = u_xlat2.x;
  let x_1606 : f32 = x_75.x_MainLightShadowParams.z;
  let x_1609 : f32 = x_75.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_1604 * x_1606) + x_1609);
  let x_1613 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_1613, 0.0f, 1.0f);
  let x_1617 : f32 = u_xlat67;
  u_xlat46 = (-(x_1617) + 1.0f);
  let x_1621 : f32 = u_xlat24.x;
  let x_1622 : f32 = u_xlat46;
  let x_1624 : f32 = u_xlat67;
  u_xlat67 = ((x_1621 * x_1622) + x_1624);
  let x_1633 : f32 = x_1631.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_1633 == -1.0f));
  let x_1637 : bool = u_xlatb24.x;
  if (x_1637) {
    let x_1640 : vec3<f32> = vs_TEXCOORD1;
    let x_1643 : vec4<f32> = x_1631.x_MainLightWorldToLight[1i];
    let x_1645 : vec2<f32> = (vec2<f32>(x_1640.y, x_1640.y) * vec2<f32>(x_1643.x, x_1643.y));
    let x_1646 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1645.x, x_1645.y, x_1646.z);
    let x_1649 : vec4<f32> = x_1631.x_MainLightWorldToLight[0i];
    let x_1651 : vec3<f32> = vs_TEXCOORD1;
    let x_1654 : vec3<f32> = u_xlat24;
    let x_1656 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1651.x, x_1651.x)) + vec2<f32>(x_1654.x, x_1654.y));
    let x_1657 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1656.x, x_1656.y, x_1657.z);
    let x_1660 : vec4<f32> = x_1631.x_MainLightWorldToLight[2i];
    let x_1662 : vec3<f32> = vs_TEXCOORD1;
    let x_1665 : vec3<f32> = u_xlat24;
    let x_1667 : vec2<f32> = ((vec2<f32>(x_1660.x, x_1660.y) * vec2<f32>(x_1662.z, x_1662.z)) + vec2<f32>(x_1665.x, x_1665.y));
    let x_1668 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1667.x, x_1667.y, x_1668.z);
    let x_1670 : vec3<f32> = u_xlat24;
    let x_1673 : vec4<f32> = x_1631.x_MainLightWorldToLight[3i];
    let x_1675 : vec2<f32> = (vec2<f32>(x_1670.x, x_1670.y) + vec2<f32>(x_1673.x, x_1673.y));
    let x_1676 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1675.x, x_1675.y, x_1676.z);
    let x_1678 : vec3<f32> = u_xlat24;
    let x_1681 : vec2<f32> = ((vec2<f32>(x_1678.x, x_1678.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1682 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_1681.x, x_1681.y, x_1682.z);
    let x_1689 : vec3<f32> = u_xlat24;
    let x_1692 : f32 = x_27.x_GlobalMipBias.x;
    let x_1693 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1689.x, x_1689.y), x_1692);
    u_xlat4 = x_1693;
    let x_1695 : f32 = x_1631.x_MainLightCookieTextureFormat;
    let x_1697 : f32 = x_1631.x_MainLightCookieTextureFormat;
    let x_1699 : f32 = x_1631.x_MainLightCookieTextureFormat;
    let x_1701 : f32 = x_1631.x_MainLightCookieTextureFormat;
    let x_1702 : vec4<f32> = vec4<f32>(x_1695, x_1697, x_1699, x_1701);
    let x_1709 : vec4<bool> = (vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1702.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_1709.x, x_1709.y);
    let x_1712 : bool = u_xlatb24.y;
    if (x_1712) {
      let x_1718 : f32 = u_xlat4.w;
      x_1714 = x_1718;
    } else {
      let x_1721 : f32 = u_xlat4.x;
      x_1714 = x_1721;
    }
    let x_1722 : f32 = x_1714;
    u_xlat46 = x_1722;
    let x_1724 : bool = u_xlatb24.x;
    if (x_1724) {
      let x_1728 : vec4<f32> = u_xlat4;
      x_1725 = vec3<f32>(x_1728.x, x_1728.y, x_1728.z);
    } else {
      let x_1731 : f32 = u_xlat46;
      x_1725 = vec3<f32>(x_1731, x_1731, x_1731);
    }
    let x_1733 : vec3<f32> = x_1725;
    u_xlat24 = x_1733;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_1738 : vec3<f32> = u_xlat24;
  let x_1740 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat24 = (x_1738 * vec3<f32>(x_1740.x, x_1740.y, x_1740.z));
  let x_1743 : f32 = u_xlat67;
  let x_1749 : f32 = x_1747.unity_LightData.z;
  u_xlat67 = (x_1743 * x_1749);
  let x_1751 : f32 = u_xlat67;
  let x_1753 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_1751, x_1751, x_1751) * x_1753);
  let x_1755 : vec3<f32> = u_xlat1;
  let x_1757 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat67 = dot(x_1755, vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
  let x_1760 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1760, 0.0f, 1.0f);
  let x_1762 : f32 = u_xlat67;
  let x_1764 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_1762, x_1762, x_1762) * x_1764);
  let x_1766 : vec4<f32> = u_xlat0;
  let x_1768 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_1766.y, x_1766.z, x_1766.w) * x_1768);
  let x_1771 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1773 : f32 = x_1747.unity_LightData.y;
  u_xlat67 = min(x_1771, x_1773);
  let x_1775 : f32 = u_xlat67;
  u_xlatu67 = bitcast<u32>(i32(x_1775));
  let x_1779 : f32 = u_xlat2.x;
  let x_1782 : f32 = x_75.x_AdditionalShadowFadeParams.x;
  let x_1785 : f32 = x_75.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1779 * x_1782) + x_1785);
  let x_1789 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1789, 0.0f, 1.0f);
  let x_1794 : f32 = x_1631.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1796 : f32 = x_1631.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1798 : f32 = x_1631.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1800 : f32 = x_1631.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1801 : vec4<f32> = vec4<f32>(x_1794, x_1796, x_1798, x_1800);
  let x_1807 : vec4<bool> = (vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1801.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1807.x, x_1807.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1819 : u32 = u_xlatu_loop_1;
    let x_1820 : u32 = u_xlatu67;
    if ((x_1819 < x_1820)) {
    } else {
      break;
    }
    let x_1823 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1823 >> 2u);
    let x_1826 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1826 & 3u));
    let x_1829 : u32 = u_xlatu48;
    let x_1832 : vec4<f32> = x_1747.unity_LightIndices[bitcast<i32>(x_1829)];
    let x_1842 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1847 : vec4<u32> = indexable[x_1842];
    u_xlat48.x = dot(x_1832, bitcast<vec4<f32>>(x_1847));
    let x_1853 : f32 = u_xlat48.x;
    u_xlati48 = i32(x_1853);
    let x_1855 : vec3<f32> = vs_TEXCOORD1;
    let x_1866 : i32 = u_xlati48;
    let x_1868 : vec4<f32> = x_1865.x_AdditionalLightsPosition[x_1866];
    let x_1871 : i32 = u_xlati48;
    let x_1873 : vec4<f32> = x_1865.x_AdditionalLightsPosition[x_1871];
    let x_1875 : vec3<f32> = ((-(x_1855) * vec3<f32>(x_1868.w, x_1868.w, x_1868.w)) + vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
    let x_1876 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
    let x_1879 : vec4<f32> = u_xlat6;
    let x_1881 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1879.x, x_1879.y, x_1879.z), vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
    let x_1884 : f32 = u_xlat70;
    u_xlat70 = max(x_1884, 0.00006103515625f);
    let x_1888 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1888);
    let x_1890 : f32 = u_xlat71;
    let x_1892 : vec4<f32> = u_xlat6;
    let x_1894 : vec3<f32> = (vec3<f32>(x_1890, x_1890, x_1890) * vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
    let x_1897 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1897);
    let x_1899 : f32 = u_xlat70;
    let x_1900 : i32 = u_xlati48;
    let x_1902 : f32 = x_1865.x_AdditionalLightsAttenuation[x_1900].x;
    u_xlat70 = (x_1899 * x_1902);
    let x_1904 : f32 = u_xlat70;
    let x_1906 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1904) * x_1906) + 1.0f);
    let x_1909 : f32 = u_xlat70;
    u_xlat70 = max(x_1909, 0.0f);
    let x_1911 : f32 = u_xlat70;
    let x_1912 : f32 = u_xlat70;
    u_xlat70 = (x_1911 * x_1912);
    let x_1914 : f32 = u_xlat70;
    let x_1915 : f32 = u_xlat71;
    u_xlat70 = (x_1914 * x_1915);
    let x_1917 : i32 = u_xlati48;
    let x_1919 : vec4<f32> = x_1865.x_AdditionalLightsSpotDir[x_1917];
    let x_1921 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1919.x, x_1919.y, x_1919.z), vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
    let x_1924 : f32 = u_xlat71;
    let x_1925 : i32 = u_xlati48;
    let x_1927 : f32 = x_1865.x_AdditionalLightsAttenuation[x_1925].z;
    let x_1929 : i32 = u_xlati48;
    let x_1931 : f32 = x_1865.x_AdditionalLightsAttenuation[x_1929].w;
    u_xlat71 = ((x_1924 * x_1927) + x_1931);
    let x_1933 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1933, 0.0f, 1.0f);
    let x_1935 : f32 = u_xlat71;
    let x_1936 : f32 = u_xlat71;
    u_xlat71 = (x_1935 * x_1936);
    let x_1938 : f32 = u_xlat70;
    let x_1939 : f32 = u_xlat71;
    u_xlat70 = (x_1938 * x_1939);
    let x_1943 : i32 = u_xlati48;
    let x_1945 : f32 = x_75.x_AdditionalShadowParams[x_1943].w;
    u_xlati71 = i32(x_1945);
    let x_1948 : i32 = u_xlati71;
    u_xlatb72 = (x_1948 >= 0i);
    let x_1950 : bool = u_xlatb72;
    if (x_1950) {
      let x_1954 : i32 = u_xlati48;
      let x_1956 : f32 = x_75.x_AdditionalShadowParams[x_1954].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1956, x_1956, x_1956, x_1956))));
      let x_1960 : bool = u_xlatb72;
      if (x_1960) {
        let x_1964 : vec4<f32> = u_xlat6;
        let x_1967 : vec4<f32> = u_xlat6;
        let x_1970 : vec4<bool> = (abs(vec4<f32>(x_1964.z, x_1964.z, x_1964.y, x_1964.z)) >= abs(vec4<f32>(x_1967.x, x_1967.y, x_1967.x, x_1967.x)));
        let x_1972 : vec3<bool> = vec3<bool>(x_1970.x, x_1970.y, x_1970.z);
        let x_1973 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
        let x_1976 : bool = u_xlatb7.y;
        let x_1978 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1976 & x_1978);
        let x_1980 : vec4<f32> = u_xlat6;
        let x_1983 : vec4<bool> = (-(vec4<f32>(x_1980.z, x_1980.y, x_1980.z, x_1980.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1984 : vec3<bool> = vec3<bool>(x_1983.x, x_1983.y, x_1983.w);
        let x_1985 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1984.x, x_1984.y, x_1985.z, x_1984.z);
        let x_1988 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1988);
        let x_1993 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1993);
        let x_1998 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1998);
        let x_2002 : bool = u_xlatb7.z;
        if (x_2002) {
          let x_2007 : f32 = u_xlat7.y;
          x_2003 = x_2007;
        } else {
          let x_2009 : f32 = u_xlat73;
          x_2003 = x_2009;
        }
        let x_2010 : f32 = x_2003;
        u_xlat29.x = x_2010;
        let x_2013 : bool = u_xlatb72;
        if (x_2013) {
          let x_2018 : f32 = u_xlat7.x;
          x_2014 = x_2018;
        } else {
          let x_2021 : f32 = u_xlat29.x;
          x_2014 = x_2021;
        }
        let x_2022 : f32 = x_2014;
        u_xlat72 = x_2022;
        let x_2023 : i32 = u_xlati48;
        let x_2025 : f32 = x_75.x_AdditionalShadowParams[x_2023].w;
        u_xlat7.x = trunc(x_2025);
        let x_2028 : f32 = u_xlat72;
        let x_2030 : f32 = u_xlat7.x;
        u_xlat72 = (x_2028 + x_2030);
        let x_2032 : f32 = u_xlat72;
        u_xlati71 = i32(x_2032);
      }
      let x_2034 : i32 = u_xlati71;
      u_xlati71 = (x_2034 << bitcast<u32>(2i));
      let x_2036 : vec3<f32> = vs_TEXCOORD1;
      let x_2039 : i32 = u_xlati71;
      let x_2042 : i32 = u_xlati71;
      let x_2046 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_2039 + 1i) / 4i)][((x_2042 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2036.y, x_2036.y, x_2036.y, x_2036.y) * x_2046);
      let x_2048 : i32 = u_xlati71;
      let x_2050 : i32 = u_xlati71;
      let x_2053 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[(x_2048 / 4i)][(x_2050 % 4i)];
      let x_2054 : vec3<f32> = vs_TEXCOORD1;
      let x_2057 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2053 * vec4<f32>(x_2054.x, x_2054.x, x_2054.x, x_2054.x)) + x_2057);
      let x_2059 : i32 = u_xlati71;
      let x_2062 : i32 = u_xlati71;
      let x_2066 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_2059 + 2i) / 4i)][((x_2062 + 2i) % 4i)];
      let x_2067 : vec3<f32> = vs_TEXCOORD1;
      let x_2070 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2066 * vec4<f32>(x_2067.z, x_2067.z, x_2067.z, x_2067.z)) + x_2070);
      let x_2072 : vec4<f32> = u_xlat7;
      let x_2073 : i32 = u_xlati71;
      let x_2076 : i32 = u_xlati71;
      let x_2080 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_2073 + 3i) / 4i)][((x_2076 + 3i) % 4i)];
      u_xlat7 = (x_2072 + x_2080);
      let x_2082 : vec4<f32> = u_xlat7;
      let x_2084 : vec4<f32> = u_xlat7;
      let x_2086 : vec3<f32> = (vec3<f32>(x_2082.x, x_2082.y, x_2082.z) / vec3<f32>(x_2084.w, x_2084.w, x_2084.w));
      let x_2087 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
      let x_2090 : i32 = u_xlati48;
      let x_2092 : f32 = x_75.x_AdditionalShadowParams[x_2090].y;
      u_xlatb71 = (0.0f < x_2092);
      let x_2094 : bool = u_xlatb71;
      if (x_2094) {
        let x_2097 : i32 = u_xlati48;
        let x_2099 : f32 = x_75.x_AdditionalShadowParams[x_2097].y;
        u_xlatb71 = (1.0f == x_2099);
        let x_2101 : bool = u_xlatb71;
        if (x_2101) {
          let x_2104 : vec4<f32> = u_xlat7;
          let x_2108 : vec4<f32> = x_75.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2104.x, x_2104.y, x_2104.x, x_2104.y) + x_2108);
          let x_2111 : vec4<f32> = u_xlat8;
          let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
          let x_2114 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
          let x_2122 : vec3<f32> = txVec30;
          let x_2124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
          u_xlat9.x = x_2124;
          let x_2127 : vec4<f32> = u_xlat8;
          let x_2128 : vec2<f32> = vec2<f32>(x_2127.z, x_2127.w);
          let x_2130 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
          let x_2137 : vec3<f32> = txVec31;
          let x_2139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
          u_xlat9.y = x_2139;
          let x_2141 : vec4<f32> = u_xlat7;
          let x_2145 : vec4<f32> = x_75.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2141.x, x_2141.y, x_2141.x, x_2141.y) + x_2145);
          let x_2148 : vec4<f32> = u_xlat8;
          let x_2149 : vec2<f32> = vec2<f32>(x_2148.x, x_2148.y);
          let x_2151 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2149.x, x_2149.y, x_2151);
          let x_2158 : vec3<f32> = txVec32;
          let x_2160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2158.xy, x_2158.z);
          u_xlat9.z = x_2160;
          let x_2163 : vec4<f32> = u_xlat8;
          let x_2164 : vec2<f32> = vec2<f32>(x_2163.z, x_2163.w);
          let x_2166 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2164.x, x_2164.y, x_2166);
          let x_2173 : vec3<f32> = txVec33;
          let x_2175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2173.xy, x_2173.z);
          u_xlat9.w = x_2175;
          let x_2177 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2177, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2180 : i32 = u_xlati48;
          let x_2182 : f32 = x_75.x_AdditionalShadowParams[x_2180].y;
          u_xlatb72 = (2.0f == x_2182);
          let x_2184 : bool = u_xlatb72;
          if (x_2184) {
            let x_2187 : vec4<f32> = u_xlat7;
            let x_2191 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2194 : vec2<f32> = ((vec2<f32>(x_2187.x, x_2187.y) * vec2<f32>(x_2191.z, x_2191.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2195 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2194.x, x_2194.y, x_2195.z, x_2195.w);
            let x_2197 : vec4<f32> = u_xlat8;
            let x_2199 : vec2<f32> = floor(vec2<f32>(x_2197.x, x_2197.y));
            let x_2200 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2199.x, x_2199.y, x_2200.z, x_2200.w);
            let x_2203 : vec4<f32> = u_xlat7;
            let x_2206 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2209 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2203.x, x_2203.y) * vec2<f32>(x_2206.z, x_2206.w)) + -(vec2<f32>(x_2209.x, x_2209.y)));
            let x_2213 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2213.x, x_2213.x, x_2213.y, x_2213.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2216 : vec4<f32> = u_xlat9;
            let x_2218 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2216.x, x_2216.x, x_2216.z, x_2216.z) * vec4<f32>(x_2218.x, x_2218.x, x_2218.z, x_2218.z));
            let x_2221 : vec4<f32> = u_xlat10;
            let x_2223 : vec2<f32> = (vec2<f32>(x_2221.y, x_2221.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2224 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2223.x, x_2224.y, x_2223.y, x_2224.w);
            let x_2226 : vec4<f32> = u_xlat10;
            let x_2229 : vec2<f32> = u_xlat52;
            let x_2231 : vec2<f32> = ((vec2<f32>(x_2226.x, x_2226.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2229));
            let x_2232 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2231.x, x_2231.y, x_2232.z, x_2232.w);
            let x_2235 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2235) + vec2<f32>(1.0f, 1.0f));
            let x_2238 : vec2<f32> = u_xlat52;
            let x_2239 : vec2<f32> = min(x_2238, vec2<f32>(0.0f, 0.0f));
            let x_2240 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
            let x_2242 : vec4<f32> = u_xlat11;
            let x_2245 : vec4<f32> = u_xlat11;
            let x_2248 : vec2<f32> = u_xlat54;
            let x_2249 : vec2<f32> = ((-(vec2<f32>(x_2242.x, x_2242.y)) * vec2<f32>(x_2245.x, x_2245.y)) + x_2248);
            let x_2250 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2249.x, x_2249.y, x_2250.z, x_2250.w);
            let x_2252 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2252, vec2<f32>(0.0f, 0.0f));
            let x_2254 : vec2<f32> = u_xlat52;
            let x_2256 : vec2<f32> = u_xlat52;
            let x_2258 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2254) * x_2256) + vec2<f32>(x_2258.y, x_2258.w));
            let x_2261 : vec4<f32> = u_xlat11;
            let x_2263 : vec2<f32> = (vec2<f32>(x_2261.x, x_2261.y) + vec2<f32>(1.0f, 1.0f));
            let x_2264 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
            let x_2266 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2266 + vec2<f32>(1.0f, 1.0f));
            let x_2268 : vec4<f32> = u_xlat10;
            let x_2270 : vec2<f32> = (vec2<f32>(x_2268.x, x_2268.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2271 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2270.x, x_2270.y, x_2271.z, x_2271.w);
            let x_2273 : vec2<f32> = u_xlat54;
            let x_2274 : vec2<f32> = (x_2273 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2275 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2274.x, x_2274.y, x_2275.z, x_2275.w);
            let x_2277 : vec4<f32> = u_xlat11;
            let x_2279 : vec2<f32> = (vec2<f32>(x_2277.x, x_2277.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2280 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2279.x, x_2279.y, x_2280.z, x_2280.w);
            let x_2282 : vec2<f32> = u_xlat52;
            let x_2283 : vec2<f32> = (x_2282 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2284 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
            let x_2286 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2286.y, x_2286.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2290 : f32 = u_xlat11.x;
            u_xlat12.z = x_2290;
            let x_2293 : f32 = u_xlat52.x;
            u_xlat12.w = x_2293;
            let x_2296 : f32 = u_xlat13.x;
            u_xlat10.z = x_2296;
            let x_2299 : f32 = u_xlat9.x;
            u_xlat10.w = x_2299;
            let x_2301 : vec4<f32> = u_xlat10;
            let x_2303 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2301.z, x_2301.w, x_2301.x, x_2301.z) + vec4<f32>(x_2303.z, x_2303.w, x_2303.x, x_2303.z));
            let x_2307 : f32 = u_xlat12.y;
            u_xlat11.z = x_2307;
            let x_2310 : f32 = u_xlat52.y;
            u_xlat11.w = x_2310;
            let x_2313 : f32 = u_xlat10.y;
            u_xlat13.z = x_2313;
            let x_2316 : f32 = u_xlat9.z;
            u_xlat13.w = x_2316;
            let x_2318 : vec4<f32> = u_xlat11;
            let x_2320 : vec4<f32> = u_xlat13;
            let x_2322 : vec3<f32> = (vec3<f32>(x_2318.z, x_2318.y, x_2318.w) + vec3<f32>(x_2320.z, x_2320.y, x_2320.w));
            let x_2323 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
            let x_2325 : vec4<f32> = u_xlat10;
            let x_2327 : vec4<f32> = u_xlat14;
            let x_2329 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.z, x_2325.w) / vec3<f32>(x_2327.z, x_2327.w, x_2327.y));
            let x_2330 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
            let x_2332 : vec4<f32> = u_xlat10;
            let x_2334 : vec3<f32> = (vec3<f32>(x_2332.x, x_2332.y, x_2332.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2335 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
            let x_2337 : vec4<f32> = u_xlat13;
            let x_2339 : vec4<f32> = u_xlat9;
            let x_2341 : vec3<f32> = (vec3<f32>(x_2337.z, x_2337.y, x_2337.w) / vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
            let x_2342 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
            let x_2344 : vec4<f32> = u_xlat11;
            let x_2346 : vec3<f32> = (vec3<f32>(x_2344.x, x_2344.y, x_2344.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2347 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
            let x_2349 : vec4<f32> = u_xlat10;
            let x_2352 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2354 : vec3<f32> = (vec3<f32>(x_2349.y, x_2349.x, x_2349.z) * vec3<f32>(x_2352.x, x_2352.x, x_2352.x));
            let x_2355 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
            let x_2357 : vec4<f32> = u_xlat11;
            let x_2360 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2362 : vec3<f32> = (vec3<f32>(x_2357.x, x_2357.y, x_2357.z) * vec3<f32>(x_2360.y, x_2360.y, x_2360.y));
            let x_2363 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2362.x, x_2362.y, x_2362.z, x_2363.w);
            let x_2366 : f32 = u_xlat11.x;
            u_xlat10.w = x_2366;
            let x_2368 : vec4<f32> = u_xlat8;
            let x_2371 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2374 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2368.x, x_2368.y, x_2368.x, x_2368.y) * vec4<f32>(x_2371.x, x_2371.y, x_2371.x, x_2371.y)) + vec4<f32>(x_2374.y, x_2374.w, x_2374.x, x_2374.w));
            let x_2377 : vec4<f32> = u_xlat8;
            let x_2380 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2383 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2377.x, x_2377.y) * vec2<f32>(x_2380.x, x_2380.y)) + vec2<f32>(x_2383.z, x_2383.w));
            let x_2387 : f32 = u_xlat10.y;
            u_xlat11.w = x_2387;
            let x_2389 : vec4<f32> = u_xlat11;
            let x_2390 : vec2<f32> = vec2<f32>(x_2389.y, x_2389.z);
            let x_2391 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2391.x, x_2390.x, x_2391.z, x_2390.y);
            let x_2393 : vec4<f32> = u_xlat8;
            let x_2396 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2399 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2393.x, x_2393.y, x_2393.x, x_2393.y) * vec4<f32>(x_2396.x, x_2396.y, x_2396.x, x_2396.y)) + vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2399.y));
            let x_2402 : vec4<f32> = u_xlat8;
            let x_2405 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2408 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2402.x, x_2402.y, x_2402.x, x_2402.y) * vec4<f32>(x_2405.x, x_2405.y, x_2405.x, x_2405.y)) + vec4<f32>(x_2408.w, x_2408.y, x_2408.w, x_2408.z));
            let x_2411 : vec4<f32> = u_xlat8;
            let x_2414 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2417 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2411.x, x_2411.y, x_2411.x, x_2411.y) * vec4<f32>(x_2414.x, x_2414.y, x_2414.x, x_2414.y)) + vec4<f32>(x_2417.x, x_2417.w, x_2417.z, x_2417.w));
            let x_2420 : vec4<f32> = u_xlat9;
            let x_2422 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2420.x, x_2420.x, x_2420.x, x_2420.y) * vec4<f32>(x_2422.z, x_2422.w, x_2422.y, x_2422.z));
            let x_2425 : vec4<f32> = u_xlat9;
            let x_2427 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2425.y, x_2425.y, x_2425.z, x_2425.z) * x_2427);
            let x_2430 : f32 = u_xlat9.z;
            let x_2432 : f32 = u_xlat14.y;
            u_xlat72 = (x_2430 * x_2432);
            let x_2435 : vec4<f32> = u_xlat12;
            let x_2436 : vec2<f32> = vec2<f32>(x_2435.x, x_2435.y);
            let x_2438 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2436.x, x_2436.y, x_2438);
            let x_2445 : vec3<f32> = txVec34;
            let x_2447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2445.xy, x_2445.z);
            u_xlat73 = x_2447;
            let x_2449 : vec4<f32> = u_xlat12;
            let x_2450 : vec2<f32> = vec2<f32>(x_2449.z, x_2449.w);
            let x_2452 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
            let x_2459 : vec3<f32> = txVec35;
            let x_2461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2459.xy, x_2459.z);
            u_xlat8.x = x_2461;
            let x_2464 : f32 = u_xlat8.x;
            let x_2466 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2464 * x_2466);
            let x_2470 : f32 = u_xlat15.x;
            let x_2471 : f32 = u_xlat73;
            let x_2474 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2470 * x_2471) + x_2474);
            let x_2477 : vec2<f32> = u_xlat52;
            let x_2479 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
            let x_2486 : vec3<f32> = txVec36;
            let x_2488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2486.xy, x_2486.z);
            u_xlat8.x = x_2488;
            let x_2491 : f32 = u_xlat15.z;
            let x_2493 : f32 = u_xlat8.x;
            let x_2495 : f32 = u_xlat73;
            u_xlat73 = ((x_2491 * x_2493) + x_2495);
            let x_2498 : vec4<f32> = u_xlat11;
            let x_2499 : vec2<f32> = vec2<f32>(x_2498.x, x_2498.y);
            let x_2501 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2499.x, x_2499.y, x_2501);
            let x_2508 : vec3<f32> = txVec37;
            let x_2510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2508.xy, x_2508.z);
            u_xlat8.x = x_2510;
            let x_2513 : f32 = u_xlat15.w;
            let x_2515 : f32 = u_xlat8.x;
            let x_2517 : f32 = u_xlat73;
            u_xlat73 = ((x_2513 * x_2515) + x_2517);
            let x_2520 : vec4<f32> = u_xlat13;
            let x_2521 : vec2<f32> = vec2<f32>(x_2520.x, x_2520.y);
            let x_2523 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2521.x, x_2521.y, x_2523);
            let x_2530 : vec3<f32> = txVec38;
            let x_2532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2530.xy, x_2530.z);
            u_xlat8.x = x_2532;
            let x_2535 : f32 = u_xlat16.x;
            let x_2537 : f32 = u_xlat8.x;
            let x_2539 : f32 = u_xlat73;
            u_xlat73 = ((x_2535 * x_2537) + x_2539);
            let x_2542 : vec4<f32> = u_xlat13;
            let x_2543 : vec2<f32> = vec2<f32>(x_2542.z, x_2542.w);
            let x_2545 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2543.x, x_2543.y, x_2545);
            let x_2552 : vec3<f32> = txVec39;
            let x_2554 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2552.xy, x_2552.z);
            u_xlat8.x = x_2554;
            let x_2557 : f32 = u_xlat16.y;
            let x_2559 : f32 = u_xlat8.x;
            let x_2561 : f32 = u_xlat73;
            u_xlat73 = ((x_2557 * x_2559) + x_2561);
            let x_2564 : vec4<f32> = u_xlat11;
            let x_2565 : vec2<f32> = vec2<f32>(x_2564.z, x_2564.w);
            let x_2567 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2565.x, x_2565.y, x_2567);
            let x_2574 : vec3<f32> = txVec40;
            let x_2576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2574.xy, x_2574.z);
            u_xlat8.x = x_2576;
            let x_2579 : f32 = u_xlat16.z;
            let x_2581 : f32 = u_xlat8.x;
            let x_2583 : f32 = u_xlat73;
            u_xlat73 = ((x_2579 * x_2581) + x_2583);
            let x_2586 : vec4<f32> = u_xlat10;
            let x_2587 : vec2<f32> = vec2<f32>(x_2586.x, x_2586.y);
            let x_2589 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2587.x, x_2587.y, x_2589);
            let x_2596 : vec3<f32> = txVec41;
            let x_2598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2596.xy, x_2596.z);
            u_xlat8.x = x_2598;
            let x_2601 : f32 = u_xlat16.w;
            let x_2603 : f32 = u_xlat8.x;
            let x_2605 : f32 = u_xlat73;
            u_xlat73 = ((x_2601 * x_2603) + x_2605);
            let x_2608 : vec4<f32> = u_xlat10;
            let x_2609 : vec2<f32> = vec2<f32>(x_2608.z, x_2608.w);
            let x_2611 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2609.x, x_2609.y, x_2611);
            let x_2618 : vec3<f32> = txVec42;
            let x_2620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2618.xy, x_2618.z);
            u_xlat8.x = x_2620;
            let x_2622 : f32 = u_xlat72;
            let x_2624 : f32 = u_xlat8.x;
            let x_2626 : f32 = u_xlat73;
            u_xlat71 = ((x_2622 * x_2624) + x_2626);
          } else {
            let x_2629 : vec4<f32> = u_xlat7;
            let x_2632 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2635 : vec2<f32> = ((vec2<f32>(x_2629.x, x_2629.y) * vec2<f32>(x_2632.z, x_2632.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2636 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat8;
            let x_2640 : vec2<f32> = floor(vec2<f32>(x_2638.x, x_2638.y));
            let x_2641 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2640.x, x_2640.y, x_2641.z, x_2641.w);
            let x_2643 : vec4<f32> = u_xlat7;
            let x_2646 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2649 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2643.x, x_2643.y) * vec2<f32>(x_2646.z, x_2646.w)) + -(vec2<f32>(x_2649.x, x_2649.y)));
            let x_2653 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2653.x, x_2653.x, x_2653.y, x_2653.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2656 : vec4<f32> = u_xlat9;
            let x_2658 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2656.x, x_2656.x, x_2656.z, x_2656.z) * vec4<f32>(x_2658.x, x_2658.x, x_2658.z, x_2658.z));
            let x_2661 : vec4<f32> = u_xlat10;
            let x_2663 : vec2<f32> = (vec2<f32>(x_2661.y, x_2661.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2664 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2664.x, x_2663.x, x_2664.z, x_2663.y);
            let x_2666 : vec4<f32> = u_xlat10;
            let x_2669 : vec2<f32> = u_xlat52;
            let x_2671 : vec2<f32> = ((vec2<f32>(x_2666.x, x_2666.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2669));
            let x_2672 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2671.x, x_2672.y, x_2671.y, x_2672.w);
            let x_2674 : vec2<f32> = u_xlat52;
            let x_2676 : vec2<f32> = (-(x_2674) + vec2<f32>(1.0f, 1.0f));
            let x_2677 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2676.x, x_2676.y, x_2677.z, x_2677.w);
            let x_2679 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2679, vec2<f32>(0.0f, 0.0f));
            let x_2681 : vec2<f32> = u_xlat54;
            let x_2683 : vec2<f32> = u_xlat54;
            let x_2685 : vec4<f32> = u_xlat10;
            let x_2687 : vec2<f32> = ((-(x_2681) * x_2683) + vec2<f32>(x_2685.x, x_2685.y));
            let x_2688 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2687.x, x_2687.y, x_2688.z, x_2688.w);
            let x_2690 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2690, vec2<f32>(0.0f, 0.0f));
            let x_2693 : vec2<f32> = u_xlat54;
            let x_2695 : vec2<f32> = u_xlat54;
            let x_2697 : vec4<f32> = u_xlat9;
            let x_2699 : vec2<f32> = ((-(x_2693) * x_2695) + vec2<f32>(x_2697.y, x_2697.w));
            let x_2700 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2699.x, x_2700.y, x_2699.y);
            let x_2702 : vec4<f32> = u_xlat10;
            let x_2704 : vec2<f32> = (vec2<f32>(x_2702.x, x_2702.y) + vec2<f32>(2.0f, 2.0f));
            let x_2705 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2704.x, x_2704.y, x_2705.z, x_2705.w);
            let x_2707 : vec3<f32> = u_xlat31;
            let x_2709 : vec2<f32> = (vec2<f32>(x_2707.x, x_2707.z) + vec2<f32>(2.0f, 2.0f));
            let x_2710 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2710.x, x_2709.x, x_2710.z, x_2709.y);
            let x_2713 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2713 * 0.08163200318813323975f);
            let x_2716 : vec4<f32> = u_xlat9;
            let x_2718 : vec3<f32> = (vec3<f32>(x_2716.z, x_2716.x, x_2716.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2719 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
            let x_2721 : vec4<f32> = u_xlat10;
            let x_2723 : vec2<f32> = (vec2<f32>(x_2721.x, x_2721.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2724 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
            let x_2727 : f32 = u_xlat13.y;
            u_xlat12.x = x_2727;
            let x_2729 : vec2<f32> = u_xlat52;
            let x_2732 : vec2<f32> = ((vec2<f32>(x_2729.x, x_2729.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2733 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2733.x, x_2732.x, x_2733.z, x_2732.y);
            let x_2735 : vec2<f32> = u_xlat52;
            let x_2738 : vec2<f32> = ((vec2<f32>(x_2735.x, x_2735.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2739 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2738.x, x_2739.y, x_2738.y, x_2739.w);
            let x_2742 : f32 = u_xlat9.x;
            u_xlat10.y = x_2742;
            let x_2745 : f32 = u_xlat11.y;
            u_xlat10.w = x_2745;
            let x_2747 : vec4<f32> = u_xlat10;
            let x_2748 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2747 + x_2748);
            let x_2750 : vec2<f32> = u_xlat52;
            let x_2753 : vec2<f32> = ((vec2<f32>(x_2750.y, x_2750.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2754 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2754.x, x_2753.x, x_2754.z, x_2753.y);
            let x_2756 : vec2<f32> = u_xlat52;
            let x_2759 : vec2<f32> = ((vec2<f32>(x_2756.y, x_2756.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2760 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2759.x, x_2760.y, x_2759.y, x_2760.w);
            let x_2763 : f32 = u_xlat9.y;
            u_xlat11.y = x_2763;
            let x_2765 : vec4<f32> = u_xlat11;
            let x_2766 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2765 + x_2766);
            let x_2768 : vec4<f32> = u_xlat10;
            let x_2769 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2768 / x_2769);
            let x_2771 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2771 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2773 : vec4<f32> = u_xlat11;
            let x_2774 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2773 / x_2774);
            let x_2776 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2776 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2778 : vec4<f32> = u_xlat10;
            let x_2781 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2778.w, x_2778.x, x_2778.y, x_2778.z) * vec4<f32>(x_2781.x, x_2781.x, x_2781.x, x_2781.x));
            let x_2784 : vec4<f32> = u_xlat11;
            let x_2787 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2784.x, x_2784.w, x_2784.y, x_2784.z) * vec4<f32>(x_2787.y, x_2787.y, x_2787.y, x_2787.y));
            let x_2790 : vec4<f32> = u_xlat10;
            let x_2791 : vec3<f32> = vec3<f32>(x_2790.y, x_2790.z, x_2790.w);
            let x_2792 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2791.x, x_2792.y, x_2791.y, x_2791.z);
            let x_2795 : f32 = u_xlat11.x;
            u_xlat13.y = x_2795;
            let x_2797 : vec4<f32> = u_xlat8;
            let x_2800 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2803 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y) * vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.y)) + vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2803.y));
            let x_2806 : vec4<f32> = u_xlat8;
            let x_2809 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2812 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(x_2809.x, x_2809.y)) + vec2<f32>(x_2812.w, x_2812.y));
            let x_2816 : f32 = u_xlat13.y;
            u_xlat10.y = x_2816;
            let x_2819 : f32 = u_xlat11.z;
            u_xlat13.y = x_2819;
            let x_2821 : vec4<f32> = u_xlat8;
            let x_2824 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2827 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y) * vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.y)) + vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2827.y));
            let x_2830 : vec4<f32> = u_xlat8;
            let x_2833 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2836 : vec4<f32> = u_xlat13;
            let x_2838 : vec2<f32> = ((vec2<f32>(x_2830.x, x_2830.y) * vec2<f32>(x_2833.x, x_2833.y)) + vec2<f32>(x_2836.w, x_2836.y));
            let x_2839 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2838.x, x_2838.y, x_2839.z, x_2839.w);
            let x_2842 : f32 = u_xlat13.y;
            u_xlat10.z = x_2842;
            let x_2844 : vec4<f32> = u_xlat8;
            let x_2847 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2850 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2844.x, x_2844.y, x_2844.x, x_2844.y) * vec4<f32>(x_2847.x, x_2847.y, x_2847.x, x_2847.y)) + vec4<f32>(x_2850.x, x_2850.y, x_2850.x, x_2850.z));
            let x_2854 : f32 = u_xlat11.w;
            u_xlat13.y = x_2854;
            let x_2857 : vec4<f32> = u_xlat8;
            let x_2860 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2863 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2857.x, x_2857.y, x_2857.x, x_2857.y) * vec4<f32>(x_2860.x, x_2860.y, x_2860.x, x_2860.y)) + vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2863.y));
            let x_2867 : vec4<f32> = u_xlat8;
            let x_2870 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2873 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2867.x, x_2867.y) * vec2<f32>(x_2870.x, x_2870.y)) + vec2<f32>(x_2873.w, x_2873.y));
            let x_2877 : f32 = u_xlat13.y;
            u_xlat10.w = x_2877;
            let x_2880 : vec4<f32> = u_xlat8;
            let x_2883 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2886 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2880.x, x_2880.y) * vec2<f32>(x_2883.x, x_2883.y)) + vec2<f32>(x_2886.x, x_2886.w));
            let x_2889 : vec4<f32> = u_xlat13;
            let x_2890 : vec3<f32> = vec3<f32>(x_2889.x, x_2889.z, x_2889.w);
            let x_2891 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2890.x, x_2891.y, x_2890.y, x_2890.z);
            let x_2893 : vec4<f32> = u_xlat8;
            let x_2896 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2899 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2893.x, x_2893.y, x_2893.x, x_2893.y) * vec4<f32>(x_2896.x, x_2896.y, x_2896.x, x_2896.y)) + vec4<f32>(x_2899.x, x_2899.y, x_2899.z, x_2899.y));
            let x_2903 : vec4<f32> = u_xlat8;
            let x_2906 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2909 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2903.x, x_2903.y) * vec2<f32>(x_2906.x, x_2906.y)) + vec2<f32>(x_2909.w, x_2909.y));
            let x_2913 : f32 = u_xlat10.x;
            u_xlat11.x = x_2913;
            let x_2915 : vec4<f32> = u_xlat8;
            let x_2918 : vec4<f32> = x_75.x_AdditionalShadowmapSize;
            let x_2921 : vec4<f32> = u_xlat11;
            let x_2923 : vec2<f32> = ((vec2<f32>(x_2915.x, x_2915.y) * vec2<f32>(x_2918.x, x_2918.y)) + vec2<f32>(x_2921.x, x_2921.y));
            let x_2924 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2923.x, x_2923.y, x_2924.z, x_2924.w);
            let x_2927 : vec4<f32> = u_xlat9;
            let x_2929 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2927.x, x_2927.x, x_2927.x, x_2927.x) * x_2929);
            let x_2932 : vec4<f32> = u_xlat9;
            let x_2934 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2932.y, x_2932.y, x_2932.y, x_2932.y) * x_2934);
            let x_2937 : vec4<f32> = u_xlat9;
            let x_2939 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2937.z, x_2937.z, x_2937.z, x_2937.z) * x_2939);
            let x_2941 : vec4<f32> = u_xlat9;
            let x_2943 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2941.w, x_2941.w, x_2941.w, x_2941.w) * x_2943);
            let x_2946 : vec4<f32> = u_xlat14;
            let x_2947 : vec2<f32> = vec2<f32>(x_2946.x, x_2946.y);
            let x_2949 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
            let x_2956 : vec3<f32> = txVec43;
            let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
            u_xlat72 = x_2958;
            let x_2960 : vec4<f32> = u_xlat14;
            let x_2961 : vec2<f32> = vec2<f32>(x_2960.z, x_2960.w);
            let x_2963 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2961.x, x_2961.y, x_2963);
            let x_2970 : vec3<f32> = txVec44;
            let x_2972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2970.xy, x_2970.z);
            u_xlat73 = x_2972;
            let x_2973 : f32 = u_xlat73;
            let x_2975 : f32 = u_xlat19.y;
            u_xlat73 = (x_2973 * x_2975);
            let x_2978 : f32 = u_xlat19.x;
            let x_2979 : f32 = u_xlat72;
            let x_2981 : f32 = u_xlat73;
            u_xlat72 = ((x_2978 * x_2979) + x_2981);
            let x_2984 : vec2<f32> = u_xlat52;
            let x_2986 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
            let x_2993 : vec3<f32> = txVec45;
            let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
            u_xlat73 = x_2995;
            let x_2997 : f32 = u_xlat19.z;
            let x_2998 : f32 = u_xlat73;
            let x_3000 : f32 = u_xlat72;
            u_xlat72 = ((x_2997 * x_2998) + x_3000);
            let x_3003 : vec4<f32> = u_xlat17;
            let x_3004 : vec2<f32> = vec2<f32>(x_3003.x, x_3003.y);
            let x_3006 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3013 : vec3<f32> = txVec46;
            let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
            u_xlat73 = x_3015;
            let x_3017 : f32 = u_xlat19.w;
            let x_3018 : f32 = u_xlat73;
            let x_3020 : f32 = u_xlat72;
            u_xlat72 = ((x_3017 * x_3018) + x_3020);
            let x_3023 : vec4<f32> = u_xlat15;
            let x_3024 : vec2<f32> = vec2<f32>(x_3023.x, x_3023.y);
            let x_3026 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
            let x_3033 : vec3<f32> = txVec47;
            let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
            u_xlat73 = x_3035;
            let x_3037 : f32 = u_xlat20.x;
            let x_3038 : f32 = u_xlat73;
            let x_3040 : f32 = u_xlat72;
            u_xlat72 = ((x_3037 * x_3038) + x_3040);
            let x_3043 : vec4<f32> = u_xlat15;
            let x_3044 : vec2<f32> = vec2<f32>(x_3043.z, x_3043.w);
            let x_3046 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec48;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat73 = x_3055;
            let x_3057 : f32 = u_xlat20.y;
            let x_3058 : f32 = u_xlat73;
            let x_3060 : f32 = u_xlat72;
            u_xlat72 = ((x_3057 * x_3058) + x_3060);
            let x_3063 : vec4<f32> = u_xlat16;
            let x_3064 : vec2<f32> = vec2<f32>(x_3063.x, x_3063.y);
            let x_3066 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3064.x, x_3064.y, x_3066);
            let x_3073 : vec3<f32> = txVec49;
            let x_3075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3073.xy, x_3073.z);
            u_xlat73 = x_3075;
            let x_3077 : f32 = u_xlat20.z;
            let x_3078 : f32 = u_xlat73;
            let x_3080 : f32 = u_xlat72;
            u_xlat72 = ((x_3077 * x_3078) + x_3080);
            let x_3083 : vec4<f32> = u_xlat17;
            let x_3084 : vec2<f32> = vec2<f32>(x_3083.z, x_3083.w);
            let x_3086 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3084.x, x_3084.y, x_3086);
            let x_3093 : vec3<f32> = txVec50;
            let x_3095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3093.xy, x_3093.z);
            u_xlat73 = x_3095;
            let x_3097 : f32 = u_xlat20.w;
            let x_3098 : f32 = u_xlat73;
            let x_3100 : f32 = u_xlat72;
            u_xlat72 = ((x_3097 * x_3098) + x_3100);
            let x_3103 : vec4<f32> = u_xlat18;
            let x_3104 : vec2<f32> = vec2<f32>(x_3103.x, x_3103.y);
            let x_3106 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3104.x, x_3104.y, x_3106);
            let x_3113 : vec3<f32> = txVec51;
            let x_3115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3113.xy, x_3113.z);
            u_xlat73 = x_3115;
            let x_3117 : f32 = u_xlat21.x;
            let x_3118 : f32 = u_xlat73;
            let x_3120 : f32 = u_xlat72;
            u_xlat72 = ((x_3117 * x_3118) + x_3120);
            let x_3123 : vec4<f32> = u_xlat18;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.z, x_3123.w);
            let x_3126 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec52;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat73 = x_3135;
            let x_3137 : f32 = u_xlat21.y;
            let x_3138 : f32 = u_xlat73;
            let x_3140 : f32 = u_xlat72;
            u_xlat72 = ((x_3137 * x_3138) + x_3140);
            let x_3143 : vec2<f32> = u_xlat32;
            let x_3145 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
            let x_3152 : vec3<f32> = txVec53;
            let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
            u_xlat73 = x_3154;
            let x_3156 : f32 = u_xlat21.z;
            let x_3157 : f32 = u_xlat73;
            let x_3159 : f32 = u_xlat72;
            u_xlat72 = ((x_3156 * x_3157) + x_3159);
            let x_3162 : vec2<f32> = u_xlat60;
            let x_3164 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
            let x_3171 : vec3<f32> = txVec54;
            let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
            u_xlat73 = x_3173;
            let x_3175 : f32 = u_xlat21.w;
            let x_3176 : f32 = u_xlat73;
            let x_3178 : f32 = u_xlat72;
            u_xlat72 = ((x_3175 * x_3176) + x_3178);
            let x_3181 : vec4<f32> = u_xlat13;
            let x_3182 : vec2<f32> = vec2<f32>(x_3181.x, x_3181.y);
            let x_3184 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3182.x, x_3182.y, x_3184);
            let x_3191 : vec3<f32> = txVec55;
            let x_3193 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3191.xy, x_3191.z);
            u_xlat73 = x_3193;
            let x_3195 : f32 = u_xlat9.x;
            let x_3196 : f32 = u_xlat73;
            let x_3198 : f32 = u_xlat72;
            u_xlat72 = ((x_3195 * x_3196) + x_3198);
            let x_3201 : vec4<f32> = u_xlat13;
            let x_3202 : vec2<f32> = vec2<f32>(x_3201.z, x_3201.w);
            let x_3204 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec56;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat73 = x_3213;
            let x_3215 : f32 = u_xlat9.y;
            let x_3216 : f32 = u_xlat73;
            let x_3218 : f32 = u_xlat72;
            u_xlat72 = ((x_3215 * x_3216) + x_3218);
            let x_3221 : vec2<f32> = u_xlat55;
            let x_3223 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec57;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat73 = x_3232;
            let x_3234 : f32 = u_xlat9.z;
            let x_3235 : f32 = u_xlat73;
            let x_3237 : f32 = u_xlat72;
            u_xlat72 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec4<f32> = u_xlat8;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.x, x_3240.y);
            let x_3243 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec58;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat73 = x_3252;
            let x_3254 : f32 = u_xlat9.w;
            let x_3255 : f32 = u_xlat73;
            let x_3257 : f32 = u_xlat72;
            u_xlat71 = ((x_3254 * x_3255) + x_3257);
          }
        }
      } else {
        let x_3261 : vec4<f32> = u_xlat7;
        let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
        let x_3264 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
        let x_3271 : vec3<f32> = txVec59;
        let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
        u_xlat71 = x_3273;
      }
      let x_3274 : i32 = u_xlati48;
      let x_3276 : f32 = x_75.x_AdditionalShadowParams[x_3274].x;
      u_xlat72 = (1.0f + -(x_3276));
      let x_3279 : f32 = u_xlat71;
      let x_3280 : i32 = u_xlati48;
      let x_3282 : f32 = x_75.x_AdditionalShadowParams[x_3280].x;
      let x_3284 : f32 = u_xlat72;
      u_xlat71 = ((x_3279 * x_3282) + x_3284);
      let x_3287 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3287);
      let x_3290 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3290 >= 1.0f);
      let x_3293 : bool = u_xlatb72;
      let x_3295 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3293 | x_3295);
      let x_3297 : bool = u_xlatb72;
      let x_3298 : f32 = u_xlat71;
      u_xlat71 = select(x_3298, 1.0f, x_3297);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3301 : f32 = u_xlat71;
    u_xlat72 = (-(x_3301) + 1.0f);
    let x_3305 : f32 = u_xlat2.x;
    let x_3306 : f32 = u_xlat72;
    let x_3308 : f32 = u_xlat71;
    u_xlat71 = ((x_3305 * x_3306) + x_3308);
    let x_3311 : i32 = u_xlati48;
    u_xlati72 = (1i << bitcast<u32>((x_3311 & 31i)));
    let x_3315 : i32 = u_xlati72;
    let x_3318 : f32 = x_1631.x_AdditionalLightsCookieEnableBits;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_3315) & bitcast<u32>(x_3318)));
    let x_3322 : i32 = u_xlati72;
    if ((x_3322 != 0i)) {
      let x_3326 : i32 = u_xlati48;
      let x_3328 : f32 = x_1631.x_AdditionalLightsLightTypes[x_3326].el;
      u_xlati72 = i32(x_3328);
      let x_3331 : i32 = u_xlati72;
      u_xlati7 = select(1i, 0i, (x_3331 != 0i));
      let x_3335 : i32 = u_xlati48;
      u_xlati29 = (x_3335 << bitcast<u32>(2i));
      let x_3337 : i32 = u_xlati7;
      if ((x_3337 != 0i)) {
        let x_3341 : vec3<f32> = vs_TEXCOORD1;
        let x_3343 : i32 = u_xlati29;
        let x_3346 : i32 = u_xlati29;
        let x_3350 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3343 + 1i) / 4i)][((x_3346 + 1i) % 4i)];
        let x_3352 : vec3<f32> = (vec3<f32>(x_3341.y, x_3341.y, x_3341.y) * vec3<f32>(x_3350.x, x_3350.y, x_3350.w));
        let x_3353 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3352.x, x_3353.y, x_3352.y, x_3352.z);
        let x_3355 : i32 = u_xlati29;
        let x_3357 : i32 = u_xlati29;
        let x_3360 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[(x_3355 / 4i)][(x_3357 % 4i)];
        let x_3362 : vec3<f32> = vs_TEXCOORD1;
        let x_3365 : vec4<f32> = u_xlat7;
        let x_3367 : vec3<f32> = ((vec3<f32>(x_3360.x, x_3360.y, x_3360.w) * vec3<f32>(x_3362.x, x_3362.x, x_3362.x)) + vec3<f32>(x_3365.x, x_3365.z, x_3365.w));
        let x_3368 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3367.x, x_3368.y, x_3367.y, x_3367.z);
        let x_3370 : i32 = u_xlati29;
        let x_3373 : i32 = u_xlati29;
        let x_3377 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3370 + 2i) / 4i)][((x_3373 + 2i) % 4i)];
        let x_3379 : vec3<f32> = vs_TEXCOORD1;
        let x_3382 : vec4<f32> = u_xlat7;
        let x_3384 : vec3<f32> = ((vec3<f32>(x_3377.x, x_3377.y, x_3377.w) * vec3<f32>(x_3379.z, x_3379.z, x_3379.z)) + vec3<f32>(x_3382.x, x_3382.z, x_3382.w));
        let x_3385 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3384.x, x_3385.y, x_3384.y, x_3384.z);
        let x_3387 : vec4<f32> = u_xlat7;
        let x_3389 : i32 = u_xlati29;
        let x_3392 : i32 = u_xlati29;
        let x_3396 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3389 + 3i) / 4i)][((x_3392 + 3i) % 4i)];
        let x_3398 : vec3<f32> = (vec3<f32>(x_3387.x, x_3387.z, x_3387.w) + vec3<f32>(x_3396.x, x_3396.y, x_3396.w));
        let x_3399 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3398.x, x_3399.y, x_3398.y, x_3398.z);
        let x_3401 : vec4<f32> = u_xlat7;
        let x_3403 : vec4<f32> = u_xlat7;
        let x_3405 : vec2<f32> = (vec2<f32>(x_3401.x, x_3401.z) / vec2<f32>(x_3403.w, x_3403.w));
        let x_3406 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3405.x, x_3406.y, x_3405.y, x_3406.w);
        let x_3408 : vec4<f32> = u_xlat7;
        let x_3411 : vec2<f32> = ((vec2<f32>(x_3408.x, x_3408.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3412 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3411.x, x_3412.y, x_3411.y, x_3412.w);
        let x_3414 : vec4<f32> = u_xlat7;
        let x_3418 : vec2<f32> = clamp(vec2<f32>(x_3414.x, x_3414.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3419 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3418.x, x_3419.y, x_3418.y, x_3419.w);
        let x_3421 : i32 = u_xlati48;
        let x_3423 : vec4<f32> = x_1631.x_AdditionalLightsCookieAtlasUVRects[x_3421];
        let x_3425 : vec4<f32> = u_xlat7;
        let x_3428 : i32 = u_xlati48;
        let x_3430 : vec4<f32> = x_1631.x_AdditionalLightsCookieAtlasUVRects[x_3428];
        let x_3432 : vec2<f32> = ((vec2<f32>(x_3423.x, x_3423.y) * vec2<f32>(x_3425.x, x_3425.z)) + vec2<f32>(x_3430.z, x_3430.w));
        let x_3433 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_3432.x, x_3433.y, x_3432.y, x_3433.w);
      } else {
        let x_3436 : i32 = u_xlati72;
        u_xlatb72 = (x_3436 == 1i);
        let x_3438 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_3438);
        let x_3440 : i32 = u_xlati72;
        if ((x_3440 != 0i)) {
          let x_3444 : vec3<f32> = vs_TEXCOORD1;
          let x_3446 : i32 = u_xlati29;
          let x_3449 : i32 = u_xlati29;
          let x_3453 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3446 + 1i) / 4i)][((x_3449 + 1i) % 4i)];
          let x_3455 : vec2<f32> = (vec2<f32>(x_3444.y, x_3444.y) * vec2<f32>(x_3453.x, x_3453.y));
          let x_3456 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3455.x, x_3455.y, x_3456.z, x_3456.w);
          let x_3458 : i32 = u_xlati29;
          let x_3460 : i32 = u_xlati29;
          let x_3463 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[(x_3458 / 4i)][(x_3460 % 4i)];
          let x_3465 : vec3<f32> = vs_TEXCOORD1;
          let x_3468 : vec4<f32> = u_xlat8;
          let x_3470 : vec2<f32> = ((vec2<f32>(x_3463.x, x_3463.y) * vec2<f32>(x_3465.x, x_3465.x)) + vec2<f32>(x_3468.x, x_3468.y));
          let x_3471 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3470.x, x_3470.y, x_3471.z, x_3471.w);
          let x_3473 : i32 = u_xlati29;
          let x_3476 : i32 = u_xlati29;
          let x_3480 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3473 + 2i) / 4i)][((x_3476 + 2i) % 4i)];
          let x_3482 : vec3<f32> = vs_TEXCOORD1;
          let x_3485 : vec4<f32> = u_xlat8;
          let x_3487 : vec2<f32> = ((vec2<f32>(x_3480.x, x_3480.y) * vec2<f32>(x_3482.z, x_3482.z)) + vec2<f32>(x_3485.x, x_3485.y));
          let x_3488 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3487.x, x_3487.y, x_3488.z, x_3488.w);
          let x_3490 : vec4<f32> = u_xlat8;
          let x_3492 : i32 = u_xlati29;
          let x_3495 : i32 = u_xlati29;
          let x_3499 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3492 + 3i) / 4i)][((x_3495 + 3i) % 4i)];
          let x_3501 : vec2<f32> = (vec2<f32>(x_3490.x, x_3490.y) + vec2<f32>(x_3499.x, x_3499.y));
          let x_3502 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3501.x, x_3501.y, x_3502.z, x_3502.w);
          let x_3504 : vec4<f32> = u_xlat8;
          let x_3507 : vec2<f32> = ((vec2<f32>(x_3504.x, x_3504.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3508 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3507.x, x_3507.y, x_3508.z, x_3508.w);
          let x_3510 : vec4<f32> = u_xlat8;
          let x_3512 : vec2<f32> = fract(vec2<f32>(x_3510.x, x_3510.y));
          let x_3513 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3512.x, x_3512.y, x_3513.z, x_3513.w);
          let x_3515 : i32 = u_xlati48;
          let x_3517 : vec4<f32> = x_1631.x_AdditionalLightsCookieAtlasUVRects[x_3515];
          let x_3519 : vec4<f32> = u_xlat8;
          let x_3522 : i32 = u_xlati48;
          let x_3524 : vec4<f32> = x_1631.x_AdditionalLightsCookieAtlasUVRects[x_3522];
          let x_3526 : vec2<f32> = ((vec2<f32>(x_3517.x, x_3517.y) * vec2<f32>(x_3519.x, x_3519.y)) + vec2<f32>(x_3524.z, x_3524.w));
          let x_3527 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3526.x, x_3527.y, x_3526.y, x_3527.w);
        } else {
          let x_3530 : vec3<f32> = vs_TEXCOORD1;
          let x_3532 : i32 = u_xlati29;
          let x_3535 : i32 = u_xlati29;
          let x_3539 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3532 + 1i) / 4i)][((x_3535 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_3530.y, x_3530.y, x_3530.y, x_3530.y) * x_3539);
          let x_3541 : i32 = u_xlati29;
          let x_3543 : i32 = u_xlati29;
          let x_3546 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[(x_3541 / 4i)][(x_3543 % 4i)];
          let x_3547 : vec3<f32> = vs_TEXCOORD1;
          let x_3550 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3546 * vec4<f32>(x_3547.x, x_3547.x, x_3547.x, x_3547.x)) + x_3550);
          let x_3552 : i32 = u_xlati29;
          let x_3555 : i32 = u_xlati29;
          let x_3559 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3552 + 2i) / 4i)][((x_3555 + 2i) % 4i)];
          let x_3560 : vec3<f32> = vs_TEXCOORD1;
          let x_3563 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3559 * vec4<f32>(x_3560.z, x_3560.z, x_3560.z, x_3560.z)) + x_3563);
          let x_3565 : vec4<f32> = u_xlat8;
          let x_3566 : i32 = u_xlati29;
          let x_3569 : i32 = u_xlati29;
          let x_3573 : vec4<f32> = x_1631.x_AdditionalLightsWorldToLights[((x_3566 + 3i) / 4i)][((x_3569 + 3i) % 4i)];
          u_xlat8 = (x_3565 + x_3573);
          let x_3575 : vec4<f32> = u_xlat8;
          let x_3577 : vec4<f32> = u_xlat8;
          let x_3579 : vec3<f32> = (vec3<f32>(x_3575.x, x_3575.y, x_3575.z) / vec3<f32>(x_3577.w, x_3577.w, x_3577.w));
          let x_3580 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3579.x, x_3579.y, x_3579.z, x_3580.w);
          let x_3582 : vec4<f32> = u_xlat8;
          let x_3584 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(vec3<f32>(x_3582.x, x_3582.y, x_3582.z), vec3<f32>(x_3584.x, x_3584.y, x_3584.z));
          let x_3587 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_3587);
          let x_3589 : f32 = u_xlat72;
          let x_3591 : vec4<f32> = u_xlat8;
          let x_3593 : vec3<f32> = (vec3<f32>(x_3589, x_3589, x_3589) * vec3<f32>(x_3591.x, x_3591.y, x_3591.z));
          let x_3594 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3593.x, x_3593.y, x_3593.z, x_3594.w);
          let x_3596 : vec4<f32> = u_xlat8;
          u_xlat72 = dot(abs(vec3<f32>(x_3596.x, x_3596.y, x_3596.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3601 : f32 = u_xlat72;
          u_xlat72 = max(x_3601, 0.00000099999999747524f);
          let x_3604 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_3604);
          let x_3606 : f32 = u_xlat72;
          let x_3608 : vec4<f32> = u_xlat8;
          let x_3610 : vec3<f32> = (vec3<f32>(x_3606, x_3606, x_3606) * vec3<f32>(x_3608.z, x_3608.x, x_3608.y));
          let x_3611 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3610.x, x_3610.y, x_3610.z, x_3611.w);
          let x_3614 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_3614);
          let x_3618 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_3618, 0.0f, 1.0f);
          let x_3623 : vec4<f32> = u_xlat9;
          let x_3625 : vec4<bool> = (vec4<f32>(x_3623.y, x_3623.y, x_3623.z, x_3623.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3626 : vec2<bool> = vec2<bool>(x_3625.x, x_3625.z);
          let x_3627 : vec3<bool> = u_xlatb29;
          u_xlatb29 = vec3<bool>(x_3626.x, x_3627.y, x_3626.y);
          let x_3630 : bool = u_xlatb29.x;
          if (x_3630) {
            let x_3635 : f32 = u_xlat9.x;
            x_3631 = x_3635;
          } else {
            let x_3638 : f32 = u_xlat9.x;
            x_3631 = -(x_3638);
          }
          let x_3640 : f32 = x_3631;
          u_xlat29.x = x_3640;
          let x_3643 : bool = u_xlatb29.z;
          if (x_3643) {
            let x_3648 : f32 = u_xlat9.x;
            x_3644 = x_3648;
          } else {
            let x_3651 : f32 = u_xlat9.x;
            x_3644 = -(x_3651);
          }
          let x_3653 : f32 = x_3644;
          u_xlat29.z = x_3653;
          let x_3655 : vec4<f32> = u_xlat8;
          let x_3657 : f32 = u_xlat72;
          let x_3660 : vec3<f32> = u_xlat29;
          let x_3662 : vec2<f32> = ((vec2<f32>(x_3655.x, x_3655.y) * vec2<f32>(x_3657, x_3657)) + vec2<f32>(x_3660.x, x_3660.z));
          let x_3663 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3662.x, x_3663.y, x_3662.y);
          let x_3665 : vec3<f32> = u_xlat29;
          let x_3668 : vec2<f32> = ((vec2<f32>(x_3665.x, x_3665.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3669 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3668.x, x_3669.y, x_3668.y);
          let x_3671 : vec3<f32> = u_xlat29;
          let x_3675 : vec2<f32> = clamp(vec2<f32>(x_3671.x, x_3671.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3676 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3675.x, x_3676.y, x_3675.y);
          let x_3678 : i32 = u_xlati48;
          let x_3680 : vec4<f32> = x_1631.x_AdditionalLightsCookieAtlasUVRects[x_3678];
          let x_3682 : vec3<f32> = u_xlat29;
          let x_3685 : i32 = u_xlati48;
          let x_3687 : vec4<f32> = x_1631.x_AdditionalLightsCookieAtlasUVRects[x_3685];
          let x_3689 : vec2<f32> = ((vec2<f32>(x_3680.x, x_3680.y) * vec2<f32>(x_3682.x, x_3682.z)) + vec2<f32>(x_3687.z, x_3687.w));
          let x_3690 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3689.x, x_3690.y, x_3689.y, x_3690.w);
        }
      }
      let x_3697 : vec4<f32> = u_xlat7;
      let x_3699 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3697.x, x_3697.z), 0.0f);
      u_xlat7 = x_3699;
      let x_3701 : bool = u_xlatb4.y;
      if (x_3701) {
        let x_3706 : f32 = u_xlat7.w;
        x_3702 = x_3706;
      } else {
        let x_3709 : f32 = u_xlat7.x;
        x_3702 = x_3709;
      }
      let x_3710 : f32 = x_3702;
      u_xlat72 = x_3710;
      let x_3712 : bool = u_xlatb4.x;
      if (x_3712) {
        let x_3716 : vec4<f32> = u_xlat7;
        x_3713 = vec3<f32>(x_3716.x, x_3716.y, x_3716.z);
      } else {
        let x_3719 : f32 = u_xlat72;
        x_3713 = vec3<f32>(x_3719, x_3719, x_3719);
      }
      let x_3721 : vec3<f32> = x_3713;
      let x_3722 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_3721.x, x_3721.y, x_3721.z, x_3722.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_3728 : vec4<f32> = u_xlat7;
    let x_3730 : i32 = u_xlati48;
    let x_3732 : vec4<f32> = x_1865.x_AdditionalLightsColor[x_3730];
    let x_3734 : vec3<f32> = (vec3<f32>(x_3728.x, x_3728.y, x_3728.z) * vec3<f32>(x_3732.x, x_3732.y, x_3732.z));
    let x_3735 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3734.x, x_3734.y, x_3734.z, x_3735.w);
    let x_3737 : f32 = u_xlat70;
    let x_3738 : f32 = u_xlat71;
    u_xlat48.x = (x_3737 * x_3738);
    let x_3741 : vec2<f32> = u_xlat48;
    let x_3743 : vec4<f32> = u_xlat7;
    let x_3745 : vec3<f32> = (vec3<f32>(x_3741.x, x_3741.x, x_3741.x) * vec3<f32>(x_3743.x, x_3743.y, x_3743.z));
    let x_3746 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3745.x, x_3745.y, x_3745.z, x_3746.w);
    let x_3748 : vec3<f32> = u_xlat1;
    let x_3749 : vec4<f32> = u_xlat6;
    u_xlat48.x = dot(x_3748, vec3<f32>(x_3749.x, x_3749.y, x_3749.z));
    let x_3754 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_3754, 0.0f, 1.0f);
    let x_3757 : vec2<f32> = u_xlat48;
    let x_3759 : vec4<f32> = u_xlat7;
    let x_3761 : vec3<f32> = (vec3<f32>(x_3757.x, x_3757.x, x_3757.x) * vec3<f32>(x_3759.x, x_3759.y, x_3759.z));
    let x_3762 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3761.x, x_3761.y, x_3761.z, x_3762.w);
    let x_3764 : vec4<f32> = u_xlat6;
    let x_3766 : vec4<f32> = u_xlat0;
    let x_3769 : vec4<f32> = u_xlat5;
    let x_3771 : vec3<f32> = ((vec3<f32>(x_3764.x, x_3764.y, x_3764.z) * vec3<f32>(x_3766.y, x_3766.z, x_3766.w)) + vec3<f32>(x_3769.x, x_3769.y, x_3769.z));
    let x_3772 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3771.x, x_3771.y, x_3771.z, x_3772.w);

    continuing {
      let x_3774 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3774 + bitcast<u32>(1i));
    }
  }
  let x_3777 : vec4<f32> = u_xlat3;
  let x_3779 : vec4<f32> = u_xlat0;
  let x_3782 : vec3<f32> = u_xlat24;
  u_xlat22 = ((vec3<f32>(x_3777.x, x_3777.y, x_3777.z) * vec3<f32>(x_3779.y, x_3779.z, x_3779.w)) + x_3782);
  let x_3786 : vec4<f32> = u_xlat5;
  let x_3788 : vec3<f32> = u_xlat22;
  let x_3789 : vec3<f32> = (vec3<f32>(x_3786.x, x_3786.y, x_3786.z) + x_3788);
  let x_3790 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3789.x, x_3789.y, x_3789.z, x_3790.w);
  let x_3794 : f32 = x_40.x_Surface;
  u_xlatb22 = (x_3794 == 1.0f);
  let x_3796 : bool = u_xlatb22;
  if (x_3796) {
    let x_3801 : f32 = u_xlat0.x;
    x_3797 = x_3801;
  } else {
    x_3797 = 1.0f;
  }
  let x_3803 : f32 = x_3797;
  SV_Target0.w = x_3803;
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


