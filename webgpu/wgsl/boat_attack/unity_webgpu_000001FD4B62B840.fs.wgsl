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
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
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

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb22 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_160 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat64 : f32;

var<private> u_xlatb64 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(1) var<uniform> x_1827 : AdditionalLights;

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

var<private> u_xlatu66 : u32;

var<private> u_xlatb67 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
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
  var x_1977 : f32;
  var x_1989 : f32;
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
  var x_3323 : f32;
  var x_3407 : f32;
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
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_97 : f32 = x_94.unity_LODFade.x;
  u_xlatb22 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb22;
  if (x_100) {
    let x_106 : f32 = u_xlat1.x;
    x_102 = abs(x_106);
  } else {
    let x_110 : f32 = u_xlat1.x;
    x_102 = -(abs(x_110));
  }
  let x_113 : f32 = x_102;
  u_xlat1.x = x_113;
  let x_116 : f32 = u_xlat1.x;
  let x_119 : f32 = x_94.unity_LODFade.x;
  u_xlat1.x = (-(x_116) + x_119);
  let x_124 : f32 = u_xlat1.x;
  u_xlatb1 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb1;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_141);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  let x_147 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * x_146);
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_152 : vec3<f32> = vs_TEXCOORD1;
  let x_162 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (x_152 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_169 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres2;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : vec3<f32> = vs_TEXCOORD1;
  let x_191 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres3;
  let x_194 : vec3<f32> = (x_188 + -(vec3<f32>(x_191.x, x_191.y, x_191.z)));
  let x_195 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_197 : vec4<f32> = u_xlat2;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec4<f32> = x_160.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_225 < x_227);
  let x_230 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_246);
  let x_252 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_252);
  let x_256 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_256);
  let x_259 : vec4<f32> = u_xlat2;
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + vec3<f32>(x_261.y, x_261.z, x_261.w));
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat2;
  let x_269 : vec3<f32> = max(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_270 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_272, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_280 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_280) + 4.0f);
  let x_287 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_287);
  let x_291 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_291) << bitcast<u32>(2i));
  let x_296 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : i32 = u_xlati2;
  let x_301 : i32 = u_xlati2;
  let x_305 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_298 + 1i) / 4i)][((x_301 + 1i) % 4i)];
  u_xlat23 = (vec3<f32>(x_296.y, x_296.y, x_296.y) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : i32 = u_xlati2;
  let x_310 : i32 = u_xlati2;
  let x_313 : vec4<f32> = x_160.x_MainLightWorldToShadow[(x_308 / 4i)][(x_310 % 4i)];
  let x_315 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.x, x_315.x)) + x_318);
  let x_320 : i32 = u_xlati2;
  let x_323 : i32 = u_xlati2;
  let x_327 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_320 + 2i) / 4i)][((x_323 + 2i) % 4i)];
  let x_329 : vec3<f32> = vs_TEXCOORD1;
  let x_332 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + x_332);
  let x_334 : vec3<f32> = u_xlat23;
  let x_335 : i32 = u_xlati2;
  let x_338 : i32 = u_xlati2;
  let x_342 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_335 + 3i) / 4i)][((x_338 + 3i) % 4i)];
  let x_344 : vec3<f32> = (x_334 + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  u_xlat1.w = 1.0f;
  let x_350 : vec4<f32> = x_94.unity_SHAr;
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_350, x_351);
  let x_356 : vec4<f32> = x_94.unity_SHAg;
  let x_357 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_356, x_357);
  let x_362 : vec4<f32> = x_94.unity_SHAb;
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_362, x_363);
  let x_366 : vec4<f32> = u_xlat1;
  let x_368 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_366.y, x_366.z, x_366.z, x_366.x) * vec4<f32>(x_368.x, x_368.y, x_368.z, x_368.z));
  let x_373 : vec4<f32> = x_94.unity_SHBr;
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_373, x_374);
  let x_379 : vec4<f32> = x_94.unity_SHBg;
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_379, x_380);
  let x_385 : vec4<f32> = x_94.unity_SHBb;
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_385, x_386);
  let x_391 : f32 = u_xlat1.y;
  let x_393 : f32 = u_xlat1.y;
  u_xlat64 = (x_391 * x_393);
  let x_396 : f32 = u_xlat1.x;
  let x_398 : f32 = u_xlat1.x;
  let x_400 : f32 = u_xlat64;
  u_xlat64 = ((x_396 * x_398) + -(x_400));
  let x_405 : vec4<f32> = x_94.unity_SHC;
  let x_407 : f32 = u_xlat64;
  let x_410 : vec4<f32> = u_xlat5;
  let x_412 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_407, x_407, x_407)) + vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat3;
  let x_417 : vec4<f32> = u_xlat4;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat3;
  let x_424 : vec3<f32> = max(vec3<f32>(x_422.x, x_422.y, x_422.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_430 : f32 = x_160.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_430);
  let x_432 : bool = u_xlatb64;
  if (x_432) {
    let x_436 : f32 = x_160.x_MainLightShadowParams.y;
    u_xlatb64 = (x_436 == 1.0f);
    let x_438 : bool = u_xlatb64;
    if (x_438) {
      let x_441 : vec4<f32> = u_xlat2;
      let x_445 : vec4<f32> = x_160.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_441.x, x_441.y, x_441.x, x_441.y) + x_445);
      let x_449 : vec4<f32> = u_xlat4;
      let x_450 : vec2<f32> = vec2<f32>(x_449.x, x_449.y);
      let x_452 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_450.x, x_450.y, x_452);
      let x_464 : vec3<f32> = txVec0;
      let x_466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_464.xy, x_464.z);
      u_xlat5.x = x_466;
      let x_469 : vec4<f32> = u_xlat4;
      let x_470 : vec2<f32> = vec2<f32>(x_469.z, x_469.w);
      let x_472 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_470.x, x_470.y, x_472);
      let x_479 : vec3<f32> = txVec1;
      let x_481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_479.xy, x_479.z);
      u_xlat5.y = x_481;
      let x_483 : vec4<f32> = u_xlat2;
      let x_487 : vec4<f32> = x_160.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_483.x, x_483.y, x_483.x, x_483.y) + x_487);
      let x_490 : vec4<f32> = u_xlat4;
      let x_491 : vec2<f32> = vec2<f32>(x_490.x, x_490.y);
      let x_493 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_491.x, x_491.y, x_493);
      let x_500 : vec3<f32> = txVec2;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_500.xy, x_500.z);
      u_xlat5.z = x_502;
      let x_505 : vec4<f32> = u_xlat4;
      let x_506 : vec2<f32> = vec2<f32>(x_505.z, x_505.w);
      let x_508 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_506.x, x_506.y, x_508);
      let x_515 : vec3<f32> = txVec3;
      let x_517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_515.xy, x_515.z);
      u_xlat5.w = x_517;
      let x_519 : vec4<f32> = u_xlat5;
      u_xlat64 = dot(x_519, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_526 : f32 = x_160.x_MainLightShadowParams.y;
      u_xlatb65 = (x_526 == 2.0f);
      let x_528 : bool = u_xlatb65;
      if (x_528) {
        let x_531 : vec4<f32> = u_xlat2;
        let x_535 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_540 : vec2<f32> = ((vec2<f32>(x_531.x, x_531.y) * vec2<f32>(x_535.z, x_535.w)) + vec2<f32>(0.5f, 0.5f));
        let x_541 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat4;
        let x_545 : vec2<f32> = floor(vec2<f32>(x_543.x, x_543.y));
        let x_546 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_550 : vec4<f32> = u_xlat2;
        let x_553 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_556 : vec4<f32> = u_xlat4;
        u_xlat46 = ((vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_553.z, x_553.w)) + -(vec2<f32>(x_556.x, x_556.y)));
        let x_560 : vec2<f32> = u_xlat46;
        u_xlat5 = (vec4<f32>(x_560.x, x_560.x, x_560.y, x_560.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_565 : vec4<f32> = u_xlat5;
        let x_567 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_565.x, x_565.x, x_565.z, x_565.z) * vec4<f32>(x_567.x, x_567.x, x_567.z, x_567.z));
        let x_570 : vec4<f32> = u_xlat6;
        let x_574 : vec2<f32> = (vec2<f32>(x_570.y, x_570.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_575 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_574.x, x_575.y, x_574.y, x_575.w);
        let x_577 : vec4<f32> = u_xlat6;
        let x_580 : vec2<f32> = u_xlat46;
        let x_582 : vec2<f32> = ((vec2<f32>(x_577.x, x_577.z) * vec2<f32>(0.5f, 0.5f)) + -(x_580));
        let x_583 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_586 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_586) + vec2<f32>(1.0f, 1.0f));
        let x_591 : vec2<f32> = u_xlat46;
        let x_593 : vec2<f32> = min(x_591, vec2<f32>(0.0f, 0.0f));
        let x_594 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat7;
        let x_599 : vec4<f32> = u_xlat7;
        let x_602 : vec2<f32> = u_xlat48;
        let x_603 : vec2<f32> = ((-(vec2<f32>(x_596.x, x_596.y)) * vec2<f32>(x_599.x, x_599.y)) + x_602);
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_606 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_606, vec2<f32>(0.0f, 0.0f));
        let x_608 : vec2<f32> = u_xlat46;
        let x_610 : vec2<f32> = u_xlat46;
        let x_612 : vec4<f32> = u_xlat5;
        u_xlat46 = ((-(x_608) * x_610) + vec2<f32>(x_612.y, x_612.w));
        let x_615 : vec4<f32> = u_xlat7;
        let x_617 : vec2<f32> = (vec2<f32>(x_615.x, x_615.y) + vec2<f32>(1.0f, 1.0f));
        let x_618 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
        let x_620 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_620 + vec2<f32>(1.0f, 1.0f));
        let x_623 : vec4<f32> = u_xlat6;
        let x_627 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_628 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
        let x_630 : vec2<f32> = u_xlat48;
        let x_631 : vec2<f32> = (x_630 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_632 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
        let x_634 : vec4<f32> = u_xlat7;
        let x_636 : vec2<f32> = (vec2<f32>(x_634.x, x_634.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_640 : vec2<f32> = u_xlat46;
        let x_641 : vec2<f32> = (x_640 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat5;
        u_xlat46 = (vec2<f32>(x_644.y, x_644.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_648 : f32 = u_xlat7.x;
        u_xlat8.z = x_648;
        let x_651 : f32 = u_xlat46.x;
        u_xlat8.w = x_651;
        let x_654 : f32 = u_xlat9.x;
        u_xlat6.z = x_654;
        let x_657 : f32 = u_xlat5.x;
        u_xlat6.w = x_657;
        let x_660 : vec4<f32> = u_xlat6;
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_660.z, x_660.w, x_660.x, x_660.z) + vec4<f32>(x_662.z, x_662.w, x_662.x, x_662.z));
        let x_666 : f32 = u_xlat8.y;
        u_xlat7.z = x_666;
        let x_669 : f32 = u_xlat46.y;
        u_xlat7.w = x_669;
        let x_672 : f32 = u_xlat6.y;
        u_xlat9.z = x_672;
        let x_675 : f32 = u_xlat5.z;
        u_xlat9.w = x_675;
        let x_677 : vec4<f32> = u_xlat7;
        let x_679 : vec4<f32> = u_xlat9;
        let x_681 : vec3<f32> = (vec3<f32>(x_677.z, x_677.y, x_677.w) + vec3<f32>(x_679.z, x_679.y, x_679.w));
        let x_682 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
        let x_684 : vec4<f32> = u_xlat6;
        let x_686 : vec4<f32> = u_xlat10;
        let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.z, x_684.w) / vec3<f32>(x_686.z, x_686.w, x_686.y));
        let x_689 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat6;
        let x_697 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_698 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat9;
        let x_702 : vec4<f32> = u_xlat5;
        let x_704 : vec3<f32> = (vec3<f32>(x_700.z, x_700.y, x_700.w) / vec3<f32>(x_702.x, x_702.y, x_702.z));
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
        let x_707 : vec4<f32> = u_xlat7;
        let x_709 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_710 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat6;
        let x_715 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_717 : vec3<f32> = (vec3<f32>(x_712.y, x_712.x, x_712.z) * vec3<f32>(x_715.x, x_715.x, x_715.x));
        let x_718 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat7;
        let x_723 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_725 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_723.y, x_723.y, x_723.y));
        let x_726 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_729 : f32 = u_xlat7.x;
        u_xlat6.w = x_729;
        let x_731 : vec4<f32> = u_xlat4;
        let x_734 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_737 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_731.x, x_731.y, x_731.x, x_731.y) * vec4<f32>(x_734.x, x_734.y, x_734.x, x_734.y)) + vec4<f32>(x_737.y, x_737.w, x_737.x, x_737.w));
        let x_740 : vec4<f32> = u_xlat4;
        let x_743 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_746 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_740.x, x_740.y) * vec2<f32>(x_743.x, x_743.y)) + vec2<f32>(x_746.z, x_746.w));
        let x_750 : f32 = u_xlat6.y;
        u_xlat7.w = x_750;
        let x_752 : vec4<f32> = u_xlat7;
        let x_753 : vec2<f32> = vec2<f32>(x_752.y, x_752.z);
        let x_754 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_754.x, x_753.x, x_754.z, x_753.y);
        let x_756 : vec4<f32> = u_xlat4;
        let x_759 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_762 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y) * vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y)) + vec4<f32>(x_762.x, x_762.y, x_762.z, x_762.y));
        let x_765 : vec4<f32> = u_xlat4;
        let x_768 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_771 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) * vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y)) + vec4<f32>(x_771.w, x_771.y, x_771.w, x_771.z));
        let x_774 : vec4<f32> = u_xlat4;
        let x_777 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_780 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y) * vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y)) + vec4<f32>(x_780.x, x_780.w, x_780.z, x_780.w));
        let x_784 : vec4<f32> = u_xlat5;
        let x_786 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_784.x, x_784.x, x_784.x, x_784.y) * vec4<f32>(x_786.z, x_786.w, x_786.y, x_786.z));
        let x_790 : vec4<f32> = u_xlat5;
        let x_792 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_790.y, x_790.y, x_790.z, x_790.z) * x_792);
        let x_796 : f32 = u_xlat5.z;
        let x_798 : f32 = u_xlat10.y;
        u_xlat65 = (x_796 * x_798);
        let x_801 : vec4<f32> = u_xlat8;
        let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
        let x_804 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_812 : vec3<f32> = txVec4;
        let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
        u_xlat66 = x_814;
        let x_816 : vec4<f32> = u_xlat8;
        let x_817 : vec2<f32> = vec2<f32>(x_816.z, x_816.w);
        let x_819 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec5;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat4.x = x_828;
        let x_831 : f32 = u_xlat4.x;
        let x_833 : f32 = u_xlat11.y;
        u_xlat4.x = (x_831 * x_833);
        let x_837 : f32 = u_xlat11.x;
        let x_838 : f32 = u_xlat66;
        let x_841 : f32 = u_xlat4.x;
        u_xlat66 = ((x_837 * x_838) + x_841);
        let x_844 : vec2<f32> = u_xlat46;
        let x_846 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec6;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
        u_xlat4.x = x_855;
        let x_858 : f32 = u_xlat11.z;
        let x_860 : f32 = u_xlat4.x;
        let x_862 : f32 = u_xlat66;
        u_xlat66 = ((x_858 * x_860) + x_862);
        let x_865 : vec4<f32> = u_xlat7;
        let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
        let x_868 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec7;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat4.x = x_877;
        let x_880 : f32 = u_xlat11.w;
        let x_882 : f32 = u_xlat4.x;
        let x_884 : f32 = u_xlat66;
        u_xlat66 = ((x_880 * x_882) + x_884);
        let x_887 : vec4<f32> = u_xlat9;
        let x_888 : vec2<f32> = vec2<f32>(x_887.x, x_887.y);
        let x_890 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec8;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat4.x = x_899;
        let x_902 : f32 = u_xlat12.x;
        let x_904 : f32 = u_xlat4.x;
        let x_906 : f32 = u_xlat66;
        u_xlat66 = ((x_902 * x_904) + x_906);
        let x_909 : vec4<f32> = u_xlat9;
        let x_910 : vec2<f32> = vec2<f32>(x_909.z, x_909.w);
        let x_912 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec9;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
        u_xlat4.x = x_921;
        let x_924 : f32 = u_xlat12.y;
        let x_926 : f32 = u_xlat4.x;
        let x_928 : f32 = u_xlat66;
        u_xlat66 = ((x_924 * x_926) + x_928);
        let x_931 : vec4<f32> = u_xlat7;
        let x_932 : vec2<f32> = vec2<f32>(x_931.z, x_931.w);
        let x_934 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec10;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_941.xy, x_941.z);
        u_xlat4.x = x_943;
        let x_946 : f32 = u_xlat12.z;
        let x_948 : f32 = u_xlat4.x;
        let x_950 : f32 = u_xlat66;
        u_xlat66 = ((x_946 * x_948) + x_950);
        let x_953 : vec4<f32> = u_xlat6;
        let x_954 : vec2<f32> = vec2<f32>(x_953.x, x_953.y);
        let x_956 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_954.x, x_954.y, x_956);
        let x_963 : vec3<f32> = txVec11;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_963.xy, x_963.z);
        u_xlat4.x = x_965;
        let x_968 : f32 = u_xlat12.w;
        let x_970 : f32 = u_xlat4.x;
        let x_972 : f32 = u_xlat66;
        u_xlat66 = ((x_968 * x_970) + x_972);
        let x_975 : vec4<f32> = u_xlat6;
        let x_976 : vec2<f32> = vec2<f32>(x_975.z, x_975.w);
        let x_978 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_976.x, x_976.y, x_978);
        let x_985 : vec3<f32> = txVec12;
        let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_985.xy, x_985.z);
        u_xlat4.x = x_987;
        let x_989 : f32 = u_xlat65;
        let x_991 : f32 = u_xlat4.x;
        let x_993 : f32 = u_xlat66;
        u_xlat64 = ((x_989 * x_991) + x_993);
      } else {
        let x_996 : vec4<f32> = u_xlat2;
        let x_999 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1002 : vec2<f32> = ((vec2<f32>(x_996.x, x_996.y) * vec2<f32>(x_999.z, x_999.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1003 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat4;
        let x_1007 : vec2<f32> = floor(vec2<f32>(x_1005.x, x_1005.y));
        let x_1008 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat2;
        let x_1013 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1016 : vec4<f32> = u_xlat4;
        u_xlat46 = ((vec2<f32>(x_1010.x, x_1010.y) * vec2<f32>(x_1013.z, x_1013.w)) + -(vec2<f32>(x_1016.x, x_1016.y)));
        let x_1020 : vec2<f32> = u_xlat46;
        u_xlat5 = (vec4<f32>(x_1020.x, x_1020.x, x_1020.y, x_1020.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1023 : vec4<f32> = u_xlat5;
        let x_1025 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1023.x, x_1023.x, x_1023.z, x_1023.z) * vec4<f32>(x_1025.x, x_1025.x, x_1025.z, x_1025.z));
        let x_1028 : vec4<f32> = u_xlat6;
        let x_1032 : vec2<f32> = (vec2<f32>(x_1028.y, x_1028.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1033 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1033.x, x_1032.x, x_1033.z, x_1032.y);
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1038 : vec2<f32> = u_xlat46;
        let x_1040 : vec2<f32> = ((vec2<f32>(x_1035.x, x_1035.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1038));
        let x_1041 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1040.x, x_1041.y, x_1040.y, x_1041.w);
        let x_1043 : vec2<f32> = u_xlat46;
        let x_1045 : vec2<f32> = (-(x_1043) + vec2<f32>(1.0f, 1.0f));
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1048, vec2<f32>(0.0f, 0.0f));
        let x_1050 : vec2<f32> = u_xlat48;
        let x_1052 : vec2<f32> = u_xlat48;
        let x_1054 : vec4<f32> = u_xlat6;
        let x_1056 : vec2<f32> = ((-(x_1050) * x_1052) + vec2<f32>(x_1054.x, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1059, vec2<f32>(0.0f, 0.0f));
        let x_1062 : vec2<f32> = u_xlat48;
        let x_1064 : vec2<f32> = u_xlat48;
        let x_1066 : vec4<f32> = u_xlat5;
        let x_1068 : vec2<f32> = ((-(x_1062) * x_1064) + vec2<f32>(x_1066.y, x_1066.w));
        let x_1069 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1068.x, x_1069.y, x_1068.y);
        let x_1071 : vec4<f32> = u_xlat6;
        let x_1074 : vec2<f32> = (vec2<f32>(x_1071.x, x_1071.y) + vec2<f32>(2.0f, 2.0f));
        let x_1075 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        let x_1077 : vec3<f32> = u_xlat26;
        let x_1079 : vec2<f32> = (vec2<f32>(x_1077.x, x_1077.z) + vec2<f32>(2.0f, 2.0f));
        let x_1080 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1080.x, x_1079.x, x_1080.z, x_1079.y);
        let x_1083 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1083 * 0.08163200318813323975f);
        let x_1087 : vec4<f32> = u_xlat5;
        let x_1090 : vec3<f32> = (vec3<f32>(x_1087.z, x_1087.x, x_1087.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
        let x_1093 : vec4<f32> = u_xlat6;
        let x_1096 : vec2<f32> = (vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1097 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1100 : f32 = u_xlat9.y;
        u_xlat8.x = x_1100;
        let x_1102 : vec2<f32> = u_xlat46;
        let x_1109 : vec2<f32> = ((vec2<f32>(x_1102.x, x_1102.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1110.x, x_1109.x, x_1110.z, x_1109.y);
        let x_1112 : vec2<f32> = u_xlat46;
        let x_1116 : vec2<f32> = ((vec2<f32>(x_1112.x, x_1112.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1117 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1116.x, x_1117.y, x_1116.y, x_1117.w);
        let x_1120 : f32 = u_xlat5.x;
        u_xlat6.y = x_1120;
        let x_1123 : f32 = u_xlat7.y;
        u_xlat6.w = x_1123;
        let x_1125 : vec4<f32> = u_xlat6;
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1125 + x_1126);
        let x_1128 : vec2<f32> = u_xlat46;
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1128.y, x_1128.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1132.x, x_1131.x, x_1132.z, x_1131.y);
        let x_1134 : vec2<f32> = u_xlat46;
        let x_1137 : vec2<f32> = ((vec2<f32>(x_1134.y, x_1134.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1137.x, x_1138.y, x_1137.y, x_1138.w);
        let x_1141 : f32 = u_xlat5.y;
        u_xlat7.y = x_1141;
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1143 + x_1144);
        let x_1146 : vec4<f32> = u_xlat6;
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1146 / x_1147);
        let x_1149 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1149 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1156 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1155 / x_1156);
        let x_1158 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1158 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1160 : vec4<f32> = u_xlat6;
        let x_1163 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1160.w, x_1160.x, x_1160.y, x_1160.z) * vec4<f32>(x_1163.x, x_1163.x, x_1163.x, x_1163.x));
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1169 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1166.x, x_1166.w, x_1166.y, x_1166.z) * vec4<f32>(x_1169.y, x_1169.y, x_1169.y, x_1169.y));
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1173 : vec3<f32> = vec3<f32>(x_1172.y, x_1172.z, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1174.y, x_1173.y, x_1173.z);
        let x_1177 : f32 = u_xlat7.x;
        u_xlat9.y = x_1177;
        let x_1179 : vec4<f32> = u_xlat4;
        let x_1182 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y) * vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y)) + vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat4;
        let x_1191 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat46 = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1191.x, x_1191.y)) + vec2<f32>(x_1194.w, x_1194.y));
        let x_1198 : f32 = u_xlat9.y;
        u_xlat6.y = x_1198;
        let x_1201 : f32 = u_xlat7.z;
        u_xlat9.y = x_1201;
        let x_1203 : vec4<f32> = u_xlat4;
        let x_1206 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1203.x, x_1203.y, x_1203.x, x_1203.y) * vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y)) + vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1209.y));
        let x_1212 : vec4<f32> = u_xlat4;
        let x_1215 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1218 : vec4<f32> = u_xlat9;
        let x_1220 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.y) * vec2<f32>(x_1215.x, x_1215.y)) + vec2<f32>(x_1218.w, x_1218.y));
        let x_1221 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1224 : f32 = u_xlat9.y;
        u_xlat6.z = x_1224;
        let x_1227 : vec4<f32> = u_xlat4;
        let x_1230 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y) * vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y)) + vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.z));
        let x_1237 : f32 = u_xlat7.w;
        u_xlat9.y = x_1237;
        let x_1240 : vec4<f32> = u_xlat4;
        let x_1243 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.y) * vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y)) + vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1246.y));
        let x_1250 : vec4<f32> = u_xlat4;
        let x_1253 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat27 = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.w, x_1256.y));
        let x_1260 : f32 = u_xlat9.y;
        u_xlat6.w = x_1260;
        let x_1263 : vec4<f32> = u_xlat4;
        let x_1266 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat6;
        u_xlat54 = ((vec2<f32>(x_1263.x, x_1263.y) * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.x, x_1269.w));
        let x_1272 : vec4<f32> = u_xlat9;
        let x_1273 : vec3<f32> = vec3<f32>(x_1272.x, x_1272.z, x_1272.w);
        let x_1274 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1273.x, x_1274.y, x_1273.y, x_1273.z);
        let x_1276 : vec4<f32> = u_xlat4;
        let x_1279 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1282.y));
        let x_1286 : vec4<f32> = u_xlat4;
        let x_1289 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.w, x_1292.y));
        let x_1296 : f32 = u_xlat6.x;
        u_xlat7.x = x_1296;
        let x_1298 : vec4<f32> = u_xlat4;
        let x_1301 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat7;
        let x_1306 : vec2<f32> = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1301.x, x_1301.y)) + vec2<f32>(x_1304.x, x_1304.y));
        let x_1307 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1306.x, x_1306.y, x_1307.z, x_1307.w);
        let x_1310 : vec4<f32> = u_xlat5;
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1310.x, x_1310.x, x_1310.x, x_1310.x) * x_1312);
        let x_1315 : vec4<f32> = u_xlat5;
        let x_1317 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1315.y, x_1315.y, x_1315.y, x_1315.y) * x_1317);
        let x_1320 : vec4<f32> = u_xlat5;
        let x_1322 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1320.z, x_1320.z, x_1320.z, x_1320.z) * x_1322);
        let x_1324 : vec4<f32> = u_xlat5;
        let x_1326 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1324.w, x_1324.w, x_1324.w, x_1324.w) * x_1326);
        let x_1329 : vec4<f32> = u_xlat10;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec13;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat65 = x_1341;
        let x_1343 : vec4<f32> = u_xlat10;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.z, x_1343.w);
        let x_1346 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec14;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1353.xy, x_1353.z);
        u_xlat66 = x_1355;
        let x_1356 : f32 = u_xlat66;
        let x_1358 : f32 = u_xlat15.y;
        u_xlat66 = (x_1356 * x_1358);
        let x_1361 : f32 = u_xlat15.x;
        let x_1362 : f32 = u_xlat65;
        let x_1364 : f32 = u_xlat66;
        u_xlat65 = ((x_1361 * x_1362) + x_1364);
        let x_1367 : vec2<f32> = u_xlat46;
        let x_1369 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec15;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1376.xy, x_1376.z);
        u_xlat66 = x_1378;
        let x_1380 : f32 = u_xlat15.z;
        let x_1381 : f32 = u_xlat66;
        let x_1383 : f32 = u_xlat65;
        u_xlat65 = ((x_1380 * x_1381) + x_1383);
        let x_1386 : vec4<f32> = u_xlat13;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.x, x_1386.y);
        let x_1389 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec16;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1396.xy, x_1396.z);
        u_xlat66 = x_1398;
        let x_1400 : f32 = u_xlat15.w;
        let x_1401 : f32 = u_xlat66;
        let x_1403 : f32 = u_xlat65;
        u_xlat65 = ((x_1400 * x_1401) + x_1403);
        let x_1406 : vec4<f32> = u_xlat11;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.x, x_1406.y);
        let x_1409 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec17;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
        u_xlat66 = x_1418;
        let x_1420 : f32 = u_xlat16.x;
        let x_1421 : f32 = u_xlat66;
        let x_1423 : f32 = u_xlat65;
        u_xlat65 = ((x_1420 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat11;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.z, x_1426.w);
        let x_1429 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec18;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat66 = x_1438;
        let x_1440 : f32 = u_xlat16.y;
        let x_1441 : f32 = u_xlat66;
        let x_1443 : f32 = u_xlat65;
        u_xlat65 = ((x_1440 * x_1441) + x_1443);
        let x_1446 : vec4<f32> = u_xlat12;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec19;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat66 = x_1458;
        let x_1460 : f32 = u_xlat16.z;
        let x_1461 : f32 = u_xlat66;
        let x_1463 : f32 = u_xlat65;
        u_xlat65 = ((x_1460 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat13;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.z, x_1466.w);
        let x_1469 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec20;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat66 = x_1478;
        let x_1480 : f32 = u_xlat16.w;
        let x_1481 : f32 = u_xlat66;
        let x_1483 : f32 = u_xlat65;
        u_xlat65 = ((x_1480 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat14;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.x, x_1486.y);
        let x_1489 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec21;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat66 = x_1498;
        let x_1500 : f32 = u_xlat17.x;
        let x_1501 : f32 = u_xlat66;
        let x_1503 : f32 = u_xlat65;
        u_xlat65 = ((x_1500 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat14;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.z, x_1506.w);
        let x_1509 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec22;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat66 = x_1518;
        let x_1520 : f32 = u_xlat17.y;
        let x_1521 : f32 = u_xlat66;
        let x_1523 : f32 = u_xlat65;
        u_xlat65 = ((x_1520 * x_1521) + x_1523);
        let x_1526 : vec2<f32> = u_xlat27;
        let x_1528 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec23;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat66 = x_1537;
        let x_1539 : f32 = u_xlat17.z;
        let x_1540 : f32 = u_xlat66;
        let x_1542 : f32 = u_xlat65;
        u_xlat65 = ((x_1539 * x_1540) + x_1542);
        let x_1545 : vec2<f32> = u_xlat54;
        let x_1547 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec24;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1554.xy, x_1554.z);
        u_xlat66 = x_1556;
        let x_1558 : f32 = u_xlat17.w;
        let x_1559 : f32 = u_xlat66;
        let x_1561 : f32 = u_xlat65;
        u_xlat65 = ((x_1558 * x_1559) + x_1561);
        let x_1564 : vec4<f32> = u_xlat9;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec25;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat66 = x_1576;
        let x_1578 : f32 = u_xlat5.x;
        let x_1579 : f32 = u_xlat66;
        let x_1581 : f32 = u_xlat65;
        u_xlat65 = ((x_1578 * x_1579) + x_1581);
        let x_1584 : vec4<f32> = u_xlat9;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.z, x_1584.w);
        let x_1587 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec26;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat66 = x_1596;
        let x_1598 : f32 = u_xlat5.y;
        let x_1599 : f32 = u_xlat66;
        let x_1601 : f32 = u_xlat65;
        u_xlat65 = ((x_1598 * x_1599) + x_1601);
        let x_1604 : vec2<f32> = u_xlat49;
        let x_1606 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec27;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat66 = x_1615;
        let x_1617 : f32 = u_xlat5.z;
        let x_1618 : f32 = u_xlat66;
        let x_1620 : f32 = u_xlat65;
        u_xlat65 = ((x_1617 * x_1618) + x_1620);
        let x_1623 : vec4<f32> = u_xlat4;
        let x_1624 : vec2<f32> = vec2<f32>(x_1623.x, x_1623.y);
        let x_1626 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec28;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1633.xy, x_1633.z);
        u_xlat66 = x_1635;
        let x_1637 : f32 = u_xlat5.w;
        let x_1638 : f32 = u_xlat66;
        let x_1640 : f32 = u_xlat65;
        u_xlat64 = ((x_1637 * x_1638) + x_1640);
      }
    }
  } else {
    let x_1644 : vec4<f32> = u_xlat2;
    let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
    let x_1647 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
    let x_1654 : vec3<f32> = txVec29;
    let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1654.xy, x_1654.z);
    u_xlat64 = x_1656;
  }
  let x_1658 : f32 = x_160.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1658) + 1.0f);
  let x_1662 : f32 = u_xlat64;
  let x_1664 : f32 = x_160.x_MainLightShadowParams.x;
  let x_1667 : f32 = u_xlat2.x;
  u_xlat64 = ((x_1662 * x_1664) + x_1667);
  let x_1670 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_1670);
  let x_1675 : f32 = u_xlat2.z;
  u_xlatb23 = (x_1675 >= 1.0f);
  let x_1677 : bool = u_xlatb23;
  let x_1679 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_1677 | x_1679);
  let x_1683 : bool = u_xlatb2.x;
  let x_1684 : f32 = u_xlat64;
  u_xlat64 = select(x_1684, 1.0f, x_1683);
  let x_1686 : vec3<f32> = vs_TEXCOORD1;
  let x_1689 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1691 : vec3<f32> = (x_1686 + -(x_1689));
  let x_1692 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1694 : vec4<f32> = u_xlat2;
  let x_1696 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_1694.x, x_1694.y, x_1694.z), vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1701 : f32 = u_xlat2.x;
  let x_1703 : f32 = x_160.x_MainLightShadowParams.z;
  let x_1706 : f32 = x_160.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1701 * x_1703) + x_1706);
  let x_1710 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1710, 0.0f, 1.0f);
  let x_1714 : f32 = u_xlat64;
  u_xlat44 = (-(x_1714) + 1.0f);
  let x_1718 : f32 = u_xlat23.x;
  let x_1719 : f32 = u_xlat44;
  let x_1721 : f32 = u_xlat64;
  u_xlat64 = ((x_1718 * x_1719) + x_1721);
  let x_1723 : f32 = u_xlat64;
  let x_1725 : f32 = x_94.unity_LightData.z;
  u_xlat64 = (x_1723 * x_1725);
  let x_1727 : f32 = u_xlat64;
  let x_1730 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat23 = (vec3<f32>(x_1727, x_1727, x_1727) * vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
  let x_1733 : vec4<f32> = u_xlat1;
  let x_1736 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_1733.x, x_1733.y, x_1733.z), vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1739 : f32 = u_xlat64;
  u_xlat64 = clamp(x_1739, 0.0f, 1.0f);
  let x_1741 : f32 = u_xlat64;
  let x_1743 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1741, x_1741, x_1741) * x_1743);
  let x_1745 : vec4<f32> = u_xlat0;
  let x_1747 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1745.y, x_1745.z, x_1745.w) * x_1747);
  let x_1750 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1752 : f32 = x_94.unity_LightData.y;
  u_xlat64 = min(x_1750, x_1752);
  let x_1755 : f32 = u_xlat64;
  u_xlatu64 = bitcast<u32>(i32(x_1755));
  let x_1759 : f32 = u_xlat2.x;
  let x_1762 : f32 = x_160.x_AdditionalShadowFadeParams.x;
  let x_1765 : f32 = x_160.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_1759 * x_1762) + x_1765);
  let x_1769 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1769, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1782 : u32 = u_xlatu_loop_1;
    let x_1783 : u32 = u_xlatu64;
    if ((x_1782 < x_1783)) {
    } else {
      break;
    }
    let x_1786 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_1786 >> 2u);
    let x_1789 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1789 & 3u));
    let x_1793 : u32 = u_xlatu67;
    let x_1796 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_1793)];
    let x_1806 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1811 : vec4<u32> = indexable[x_1806];
    u_xlat67 = dot(x_1796, bitcast<vec4<f32>>(x_1811));
    let x_1815 : f32 = u_xlat67;
    u_xlati67 = i32(x_1815);
    let x_1817 : vec3<f32> = vs_TEXCOORD1;
    let x_1828 : i32 = u_xlati67;
    let x_1830 : vec4<f32> = x_1827.x_AdditionalLightsPosition[x_1828];
    let x_1833 : i32 = u_xlati67;
    let x_1835 : vec4<f32> = x_1827.x_AdditionalLightsPosition[x_1833];
    let x_1837 : vec3<f32> = ((-(x_1817) * vec3<f32>(x_1830.w, x_1830.w, x_1830.w)) + vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
    let x_1838 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
    let x_1841 : vec4<f32> = u_xlat5;
    let x_1843 : vec4<f32> = u_xlat5;
    u_xlat68 = dot(vec3<f32>(x_1841.x, x_1841.y, x_1841.z), vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
    let x_1846 : f32 = u_xlat68;
    u_xlat68 = max(x_1846, 0.00006103515625f);
    let x_1849 : f32 = u_xlat68;
    u_xlat6.x = inverseSqrt(x_1849);
    let x_1852 : vec4<f32> = u_xlat5;
    let x_1854 : vec4<f32> = u_xlat6;
    let x_1856 : vec3<f32> = (vec3<f32>(x_1852.x, x_1852.y, x_1852.z) * vec3<f32>(x_1854.x, x_1854.x, x_1854.x));
    let x_1857 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
    let x_1859 : f32 = u_xlat68;
    u_xlat6.x = (1.0f / x_1859);
    let x_1862 : f32 = u_xlat68;
    let x_1863 : i32 = u_xlati67;
    let x_1865 : f32 = x_1827.x_AdditionalLightsAttenuation[x_1863].x;
    u_xlat68 = (x_1862 * x_1865);
    let x_1867 : f32 = u_xlat68;
    let x_1869 : f32 = u_xlat68;
    u_xlat68 = ((-(x_1867) * x_1869) + 1.0f);
    let x_1872 : f32 = u_xlat68;
    u_xlat68 = max(x_1872, 0.0f);
    let x_1874 : f32 = u_xlat68;
    let x_1875 : f32 = u_xlat68;
    u_xlat68 = (x_1874 * x_1875);
    let x_1877 : f32 = u_xlat68;
    let x_1879 : f32 = u_xlat6.x;
    u_xlat68 = (x_1877 * x_1879);
    let x_1881 : i32 = u_xlati67;
    let x_1883 : vec4<f32> = x_1827.x_AdditionalLightsSpotDir[x_1881];
    let x_1885 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1883.x, x_1883.y, x_1883.z), vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1890 : f32 = u_xlat6.x;
    let x_1891 : i32 = u_xlati67;
    let x_1893 : f32 = x_1827.x_AdditionalLightsAttenuation[x_1891].z;
    let x_1895 : i32 = u_xlati67;
    let x_1897 : f32 = x_1827.x_AdditionalLightsAttenuation[x_1895].w;
    u_xlat6.x = ((x_1890 * x_1893) + x_1897);
    let x_1901 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1901, 0.0f, 1.0f);
    let x_1905 : f32 = u_xlat6.x;
    let x_1907 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1905 * x_1907);
    let x_1910 : f32 = u_xlat68;
    let x_1912 : f32 = u_xlat6.x;
    u_xlat68 = (x_1910 * x_1912);
    let x_1916 : i32 = u_xlati67;
    let x_1918 : f32 = x_160.x_AdditionalShadowParams[x_1916].w;
    u_xlati6 = i32(x_1918);
    let x_1923 : i32 = u_xlati6;
    u_xlatb27.x = (x_1923 >= 0i);
    let x_1927 : bool = u_xlatb27.x;
    if (x_1927) {
      let x_1931 : i32 = u_xlati67;
      let x_1933 : f32 = x_160.x_AdditionalShadowParams[x_1931].z;
      u_xlatb27.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1933, x_1933, x_1933, x_1933))));
      let x_1939 : bool = u_xlatb27.x;
      if (x_1939) {
        let x_1942 : vec4<f32> = u_xlat5;
        let x_1945 : vec4<f32> = u_xlat5;
        let x_1948 : vec4<bool> = (abs(vec4<f32>(x_1942.z, x_1942.z, x_1942.y, x_1942.y)) >= abs(vec4<f32>(x_1945.x, x_1945.y, x_1945.x, x_1945.x)));
        u_xlatb27 = vec3<bool>(x_1948.x, x_1948.y, x_1948.z);
        let x_1951 : bool = u_xlatb27.y;
        let x_1953 : bool = u_xlatb27.x;
        u_xlatb27.x = (x_1951 & x_1953);
        let x_1957 : vec4<f32> = u_xlat5;
        let x_1960 : vec4<bool> = (-(vec4<f32>(x_1957.z, x_1957.y, x_1957.x, x_1957.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_1960.x, x_1960.y, x_1960.z);
        let x_1963 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1963);
        let x_1968 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1968);
        let x_1972 : bool = u_xlatb7.z;
        u_xlat48.x = select(0.0f, 1.0f, x_1972);
        let x_1976 : bool = u_xlatb27.z;
        if (x_1976) {
          let x_1981 : f32 = u_xlat7.y;
          x_1977 = x_1981;
        } else {
          let x_1984 : f32 = u_xlat48.x;
          x_1977 = x_1984;
        }
        let x_1985 : f32 = x_1977;
        u_xlat48.x = x_1985;
        let x_1988 : bool = u_xlatb27.x;
        if (x_1988) {
          let x_1993 : f32 = u_xlat7.x;
          x_1989 = x_1993;
        } else {
          let x_1996 : f32 = u_xlat48.x;
          x_1989 = x_1996;
        }
        let x_1997 : f32 = x_1989;
        u_xlat27.x = x_1997;
        let x_1999 : i32 = u_xlati67;
        let x_2001 : f32 = x_160.x_AdditionalShadowParams[x_1999].w;
        u_xlat48.x = trunc(x_2001);
        let x_2005 : f32 = u_xlat27.x;
        let x_2007 : f32 = u_xlat48.x;
        u_xlat27.x = (x_2005 + x_2007);
        let x_2011 : f32 = u_xlat27.x;
        u_xlati6 = i32(x_2011);
      }
      let x_2013 : i32 = u_xlati6;
      u_xlati6 = (x_2013 << bitcast<u32>(2i));
      let x_2015 : vec3<f32> = vs_TEXCOORD1;
      let x_2018 : i32 = u_xlati6;
      let x_2021 : i32 = u_xlati6;
      let x_2025 : vec4<f32> = x_160.x_AdditionalLightsWorldToShadow[((x_2018 + 1i) / 4i)][((x_2021 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2015.y, x_2015.y, x_2015.y, x_2015.y) * x_2025);
      let x_2027 : i32 = u_xlati6;
      let x_2029 : i32 = u_xlati6;
      let x_2032 : vec4<f32> = x_160.x_AdditionalLightsWorldToShadow[(x_2027 / 4i)][(x_2029 % 4i)];
      let x_2033 : vec3<f32> = vs_TEXCOORD1;
      let x_2036 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2032 * vec4<f32>(x_2033.x, x_2033.x, x_2033.x, x_2033.x)) + x_2036);
      let x_2038 : i32 = u_xlati6;
      let x_2041 : i32 = u_xlati6;
      let x_2045 : vec4<f32> = x_160.x_AdditionalLightsWorldToShadow[((x_2038 + 2i) / 4i)][((x_2041 + 2i) % 4i)];
      let x_2046 : vec3<f32> = vs_TEXCOORD1;
      let x_2049 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2045 * vec4<f32>(x_2046.z, x_2046.z, x_2046.z, x_2046.z)) + x_2049);
      let x_2051 : vec4<f32> = u_xlat7;
      let x_2052 : i32 = u_xlati6;
      let x_2055 : i32 = u_xlati6;
      let x_2059 : vec4<f32> = x_160.x_AdditionalLightsWorldToShadow[((x_2052 + 3i) / 4i)][((x_2055 + 3i) % 4i)];
      u_xlat6 = (x_2051 + x_2059);
      let x_2061 : vec4<f32> = u_xlat6;
      let x_2063 : vec4<f32> = u_xlat6;
      let x_2065 : vec3<f32> = (vec3<f32>(x_2061.x, x_2061.y, x_2061.z) / vec3<f32>(x_2063.w, x_2063.w, x_2063.w));
      let x_2066 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
      let x_2069 : i32 = u_xlati67;
      let x_2071 : f32 = x_160.x_AdditionalShadowParams[x_2069].y;
      u_xlatb69 = (0.0f < x_2071);
      let x_2073 : bool = u_xlatb69;
      if (x_2073) {
        let x_2076 : i32 = u_xlati67;
        let x_2078 : f32 = x_160.x_AdditionalShadowParams[x_2076].y;
        u_xlatb69 = (1.0f == x_2078);
        let x_2080 : bool = u_xlatb69;
        if (x_2080) {
          let x_2083 : vec4<f32> = u_xlat6;
          let x_2087 : vec4<f32> = x_160.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_2083.x, x_2083.y, x_2083.x, x_2083.y) + x_2087);
          let x_2090 : vec4<f32> = u_xlat7;
          let x_2091 : vec2<f32> = vec2<f32>(x_2090.x, x_2090.y);
          let x_2093 : f32 = u_xlat6.z;
          txVec30 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
          let x_2101 : vec3<f32> = txVec30;
          let x_2103 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2101.xy, x_2101.z);
          u_xlat8.x = x_2103;
          let x_2106 : vec4<f32> = u_xlat7;
          let x_2107 : vec2<f32> = vec2<f32>(x_2106.z, x_2106.w);
          let x_2109 : f32 = u_xlat6.z;
          txVec31 = vec3<f32>(x_2107.x, x_2107.y, x_2109);
          let x_2116 : vec3<f32> = txVec31;
          let x_2118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2116.xy, x_2116.z);
          u_xlat8.y = x_2118;
          let x_2120 : vec4<f32> = u_xlat6;
          let x_2124 : vec4<f32> = x_160.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_2120.x, x_2120.y, x_2120.x, x_2120.y) + x_2124);
          let x_2127 : vec4<f32> = u_xlat7;
          let x_2128 : vec2<f32> = vec2<f32>(x_2127.x, x_2127.y);
          let x_2130 : f32 = u_xlat6.z;
          txVec32 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
          let x_2137 : vec3<f32> = txVec32;
          let x_2139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
          u_xlat8.z = x_2139;
          let x_2142 : vec4<f32> = u_xlat7;
          let x_2143 : vec2<f32> = vec2<f32>(x_2142.z, x_2142.w);
          let x_2145 : f32 = u_xlat6.z;
          txVec33 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
          let x_2152 : vec3<f32> = txVec33;
          let x_2154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2152.xy, x_2152.z);
          u_xlat8.w = x_2154;
          let x_2157 : vec4<f32> = u_xlat8;
          u_xlat69 = dot(x_2157, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2160 : i32 = u_xlati67;
          let x_2162 : f32 = x_160.x_AdditionalShadowParams[x_2160].y;
          u_xlatb7.x = (2.0f == x_2162);
          let x_2166 : bool = u_xlatb7.x;
          if (x_2166) {
            let x_2169 : vec4<f32> = u_xlat6;
            let x_2173 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2176 : vec2<f32> = ((vec2<f32>(x_2169.x, x_2169.y) * vec2<f32>(x_2173.z, x_2173.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2177 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2176.x, x_2176.y, x_2177.z, x_2177.w);
            let x_2179 : vec4<f32> = u_xlat7;
            let x_2181 : vec2<f32> = floor(vec2<f32>(x_2179.x, x_2179.y));
            let x_2182 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2181.x, x_2181.y, x_2182.z, x_2182.w);
            let x_2184 : vec4<f32> = u_xlat6;
            let x_2187 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2190 : vec4<f32> = u_xlat7;
            u_xlat49 = ((vec2<f32>(x_2184.x, x_2184.y) * vec2<f32>(x_2187.z, x_2187.w)) + -(vec2<f32>(x_2190.x, x_2190.y)));
            let x_2194 : vec2<f32> = u_xlat49;
            u_xlat8 = (vec4<f32>(x_2194.x, x_2194.x, x_2194.y, x_2194.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2197 : vec4<f32> = u_xlat8;
            let x_2199 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2197.x, x_2197.x, x_2197.z, x_2197.z) * vec4<f32>(x_2199.x, x_2199.x, x_2199.z, x_2199.z));
            let x_2202 : vec4<f32> = u_xlat9;
            let x_2204 : vec2<f32> = (vec2<f32>(x_2202.y, x_2202.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2205 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2204.x, x_2205.y, x_2204.y, x_2205.w);
            let x_2207 : vec4<f32> = u_xlat9;
            let x_2210 : vec2<f32> = u_xlat49;
            let x_2212 : vec2<f32> = ((vec2<f32>(x_2207.x, x_2207.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2210));
            let x_2213 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
            let x_2216 : vec2<f32> = u_xlat49;
            u_xlat51 = (-(x_2216) + vec2<f32>(1.0f, 1.0f));
            let x_2219 : vec2<f32> = u_xlat49;
            let x_2220 : vec2<f32> = min(x_2219, vec2<f32>(0.0f, 0.0f));
            let x_2221 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
            let x_2223 : vec4<f32> = u_xlat10;
            let x_2226 : vec4<f32> = u_xlat10;
            let x_2229 : vec2<f32> = u_xlat51;
            let x_2230 : vec2<f32> = ((-(vec2<f32>(x_2223.x, x_2223.y)) * vec2<f32>(x_2226.x, x_2226.y)) + x_2229);
            let x_2231 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2230.x, x_2230.y, x_2231.z, x_2231.w);
            let x_2233 : vec2<f32> = u_xlat49;
            u_xlat49 = max(x_2233, vec2<f32>(0.0f, 0.0f));
            let x_2235 : vec2<f32> = u_xlat49;
            let x_2237 : vec2<f32> = u_xlat49;
            let x_2239 : vec4<f32> = u_xlat8;
            u_xlat49 = ((-(x_2235) * x_2237) + vec2<f32>(x_2239.y, x_2239.w));
            let x_2242 : vec4<f32> = u_xlat10;
            let x_2244 : vec2<f32> = (vec2<f32>(x_2242.x, x_2242.y) + vec2<f32>(1.0f, 1.0f));
            let x_2245 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2244.x, x_2244.y, x_2245.z, x_2245.w);
            let x_2247 : vec2<f32> = u_xlat49;
            u_xlat49 = (x_2247 + vec2<f32>(1.0f, 1.0f));
            let x_2249 : vec4<f32> = u_xlat9;
            let x_2251 : vec2<f32> = (vec2<f32>(x_2249.x, x_2249.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2252 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2251.x, x_2251.y, x_2252.z, x_2252.w);
            let x_2254 : vec2<f32> = u_xlat51;
            let x_2255 : vec2<f32> = (x_2254 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2256 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2255.x, x_2255.y, x_2256.z, x_2256.w);
            let x_2258 : vec4<f32> = u_xlat10;
            let x_2260 : vec2<f32> = (vec2<f32>(x_2258.x, x_2258.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2261 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2260.x, x_2260.y, x_2261.z, x_2261.w);
            let x_2263 : vec2<f32> = u_xlat49;
            let x_2264 : vec2<f32> = (x_2263 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2265 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2264.x, x_2264.y, x_2265.z, x_2265.w);
            let x_2267 : vec4<f32> = u_xlat8;
            u_xlat49 = (vec2<f32>(x_2267.y, x_2267.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2271 : f32 = u_xlat10.x;
            u_xlat11.z = x_2271;
            let x_2274 : f32 = u_xlat49.x;
            u_xlat11.w = x_2274;
            let x_2277 : f32 = u_xlat12.x;
            u_xlat9.z = x_2277;
            let x_2280 : f32 = u_xlat8.x;
            u_xlat9.w = x_2280;
            let x_2282 : vec4<f32> = u_xlat9;
            let x_2284 : vec4<f32> = u_xlat11;
            u_xlat13 = (vec4<f32>(x_2282.z, x_2282.w, x_2282.x, x_2282.z) + vec4<f32>(x_2284.z, x_2284.w, x_2284.x, x_2284.z));
            let x_2288 : f32 = u_xlat11.y;
            u_xlat10.z = x_2288;
            let x_2291 : f32 = u_xlat49.y;
            u_xlat10.w = x_2291;
            let x_2294 : f32 = u_xlat9.y;
            u_xlat12.z = x_2294;
            let x_2297 : f32 = u_xlat8.z;
            u_xlat12.w = x_2297;
            let x_2299 : vec4<f32> = u_xlat10;
            let x_2301 : vec4<f32> = u_xlat12;
            let x_2303 : vec3<f32> = (vec3<f32>(x_2299.z, x_2299.y, x_2299.w) + vec3<f32>(x_2301.z, x_2301.y, x_2301.w));
            let x_2304 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
            let x_2306 : vec4<f32> = u_xlat9;
            let x_2308 : vec4<f32> = u_xlat13;
            let x_2310 : vec3<f32> = (vec3<f32>(x_2306.x, x_2306.z, x_2306.w) / vec3<f32>(x_2308.z, x_2308.w, x_2308.y));
            let x_2311 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
            let x_2313 : vec4<f32> = u_xlat9;
            let x_2315 : vec3<f32> = (vec3<f32>(x_2313.x, x_2313.y, x_2313.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2316 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
            let x_2318 : vec4<f32> = u_xlat12;
            let x_2320 : vec4<f32> = u_xlat8;
            let x_2322 : vec3<f32> = (vec3<f32>(x_2318.z, x_2318.y, x_2318.w) / vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
            let x_2323 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
            let x_2325 : vec4<f32> = u_xlat10;
            let x_2327 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.y, x_2325.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2328 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
            let x_2330 : vec4<f32> = u_xlat9;
            let x_2333 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2335 : vec3<f32> = (vec3<f32>(x_2330.y, x_2330.x, x_2330.z) * vec3<f32>(x_2333.x, x_2333.x, x_2333.x));
            let x_2336 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
            let x_2338 : vec4<f32> = u_xlat10;
            let x_2341 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2343 : vec3<f32> = (vec3<f32>(x_2338.x, x_2338.y, x_2338.z) * vec3<f32>(x_2341.y, x_2341.y, x_2341.y));
            let x_2344 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
            let x_2347 : f32 = u_xlat10.x;
            u_xlat9.w = x_2347;
            let x_2349 : vec4<f32> = u_xlat7;
            let x_2352 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2355 : vec4<f32> = u_xlat9;
            u_xlat11 = ((vec4<f32>(x_2349.x, x_2349.y, x_2349.x, x_2349.y) * vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.y)) + vec4<f32>(x_2355.y, x_2355.w, x_2355.x, x_2355.w));
            let x_2358 : vec4<f32> = u_xlat7;
            let x_2361 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2364 : vec4<f32> = u_xlat9;
            u_xlat49 = ((vec2<f32>(x_2358.x, x_2358.y) * vec2<f32>(x_2361.x, x_2361.y)) + vec2<f32>(x_2364.z, x_2364.w));
            let x_2368 : f32 = u_xlat9.y;
            u_xlat10.w = x_2368;
            let x_2370 : vec4<f32> = u_xlat10;
            let x_2371 : vec2<f32> = vec2<f32>(x_2370.y, x_2370.z);
            let x_2372 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2372.x, x_2371.x, x_2372.z, x_2371.y);
            let x_2374 : vec4<f32> = u_xlat7;
            let x_2377 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2380 : vec4<f32> = u_xlat9;
            u_xlat12 = ((vec4<f32>(x_2374.x, x_2374.y, x_2374.x, x_2374.y) * vec4<f32>(x_2377.x, x_2377.y, x_2377.x, x_2377.y)) + vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2380.y));
            let x_2383 : vec4<f32> = u_xlat7;
            let x_2386 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2389 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2383.x, x_2383.y, x_2383.x, x_2383.y) * vec4<f32>(x_2386.x, x_2386.y, x_2386.x, x_2386.y)) + vec4<f32>(x_2389.w, x_2389.y, x_2389.w, x_2389.z));
            let x_2392 : vec4<f32> = u_xlat7;
            let x_2395 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2398 : vec4<f32> = u_xlat9;
            u_xlat9 = ((vec4<f32>(x_2392.x, x_2392.y, x_2392.x, x_2392.y) * vec4<f32>(x_2395.x, x_2395.y, x_2395.x, x_2395.y)) + vec4<f32>(x_2398.x, x_2398.w, x_2398.z, x_2398.w));
            let x_2401 : vec4<f32> = u_xlat8;
            let x_2403 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2401.x, x_2401.x, x_2401.x, x_2401.y) * vec4<f32>(x_2403.z, x_2403.w, x_2403.y, x_2403.z));
            let x_2406 : vec4<f32> = u_xlat8;
            let x_2408 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2406.y, x_2406.y, x_2406.z, x_2406.z) * x_2408);
            let x_2411 : f32 = u_xlat8.z;
            let x_2413 : f32 = u_xlat13.y;
            u_xlat7.x = (x_2411 * x_2413);
            let x_2417 : vec4<f32> = u_xlat11;
            let x_2418 : vec2<f32> = vec2<f32>(x_2417.x, x_2417.y);
            let x_2420 : f32 = u_xlat6.z;
            txVec34 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
            let x_2428 : vec3<f32> = txVec34;
            let x_2430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2428.xy, x_2428.z);
            u_xlat28 = x_2430;
            let x_2432 : vec4<f32> = u_xlat11;
            let x_2433 : vec2<f32> = vec2<f32>(x_2432.z, x_2432.w);
            let x_2435 : f32 = u_xlat6.z;
            txVec35 = vec3<f32>(x_2433.x, x_2433.y, x_2435);
            let x_2442 : vec3<f32> = txVec35;
            let x_2444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2442.xy, x_2442.z);
            u_xlat8.x = x_2444;
            let x_2447 : f32 = u_xlat8.x;
            let x_2449 : f32 = u_xlat14.y;
            u_xlat8.x = (x_2447 * x_2449);
            let x_2453 : f32 = u_xlat14.x;
            let x_2454 : f32 = u_xlat28;
            let x_2457 : f32 = u_xlat8.x;
            u_xlat28 = ((x_2453 * x_2454) + x_2457);
            let x_2460 : vec2<f32> = u_xlat49;
            let x_2462 : f32 = u_xlat6.z;
            txVec36 = vec3<f32>(x_2460.x, x_2460.y, x_2462);
            let x_2469 : vec3<f32> = txVec36;
            let x_2471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2469.xy, x_2469.z);
            u_xlat49.x = x_2471;
            let x_2474 : f32 = u_xlat14.z;
            let x_2476 : f32 = u_xlat49.x;
            let x_2478 : f32 = u_xlat28;
            u_xlat28 = ((x_2474 * x_2476) + x_2478);
            let x_2481 : vec4<f32> = u_xlat10;
            let x_2482 : vec2<f32> = vec2<f32>(x_2481.x, x_2481.y);
            let x_2484 : f32 = u_xlat6.z;
            txVec37 = vec3<f32>(x_2482.x, x_2482.y, x_2484);
            let x_2491 : vec3<f32> = txVec37;
            let x_2493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2491.xy, x_2491.z);
            u_xlat49.x = x_2493;
            let x_2496 : f32 = u_xlat14.w;
            let x_2498 : f32 = u_xlat49.x;
            let x_2500 : f32 = u_xlat28;
            u_xlat28 = ((x_2496 * x_2498) + x_2500);
            let x_2503 : vec4<f32> = u_xlat12;
            let x_2504 : vec2<f32> = vec2<f32>(x_2503.x, x_2503.y);
            let x_2506 : f32 = u_xlat6.z;
            txVec38 = vec3<f32>(x_2504.x, x_2504.y, x_2506);
            let x_2513 : vec3<f32> = txVec38;
            let x_2515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2513.xy, x_2513.z);
            u_xlat49.x = x_2515;
            let x_2518 : f32 = u_xlat15.x;
            let x_2520 : f32 = u_xlat49.x;
            let x_2522 : f32 = u_xlat28;
            u_xlat28 = ((x_2518 * x_2520) + x_2522);
            let x_2525 : vec4<f32> = u_xlat12;
            let x_2526 : vec2<f32> = vec2<f32>(x_2525.z, x_2525.w);
            let x_2528 : f32 = u_xlat6.z;
            txVec39 = vec3<f32>(x_2526.x, x_2526.y, x_2528);
            let x_2535 : vec3<f32> = txVec39;
            let x_2537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2535.xy, x_2535.z);
            u_xlat49.x = x_2537;
            let x_2540 : f32 = u_xlat15.y;
            let x_2542 : f32 = u_xlat49.x;
            let x_2544 : f32 = u_xlat28;
            u_xlat28 = ((x_2540 * x_2542) + x_2544);
            let x_2547 : vec4<f32> = u_xlat10;
            let x_2548 : vec2<f32> = vec2<f32>(x_2547.z, x_2547.w);
            let x_2550 : f32 = u_xlat6.z;
            txVec40 = vec3<f32>(x_2548.x, x_2548.y, x_2550);
            let x_2557 : vec3<f32> = txVec40;
            let x_2559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2557.xy, x_2557.z);
            u_xlat49.x = x_2559;
            let x_2562 : f32 = u_xlat15.z;
            let x_2564 : f32 = u_xlat49.x;
            let x_2566 : f32 = u_xlat28;
            u_xlat28 = ((x_2562 * x_2564) + x_2566);
            let x_2569 : vec4<f32> = u_xlat9;
            let x_2570 : vec2<f32> = vec2<f32>(x_2569.x, x_2569.y);
            let x_2572 : f32 = u_xlat6.z;
            txVec41 = vec3<f32>(x_2570.x, x_2570.y, x_2572);
            let x_2579 : vec3<f32> = txVec41;
            let x_2581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2579.xy, x_2579.z);
            u_xlat49.x = x_2581;
            let x_2584 : f32 = u_xlat15.w;
            let x_2586 : f32 = u_xlat49.x;
            let x_2588 : f32 = u_xlat28;
            u_xlat28 = ((x_2584 * x_2586) + x_2588);
            let x_2591 : vec4<f32> = u_xlat9;
            let x_2592 : vec2<f32> = vec2<f32>(x_2591.z, x_2591.w);
            let x_2594 : f32 = u_xlat6.z;
            txVec42 = vec3<f32>(x_2592.x, x_2592.y, x_2594);
            let x_2601 : vec3<f32> = txVec42;
            let x_2603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2601.xy, x_2601.z);
            u_xlat49.x = x_2603;
            let x_2606 : f32 = u_xlat7.x;
            let x_2608 : f32 = u_xlat49.x;
            let x_2610 : f32 = u_xlat28;
            u_xlat69 = ((x_2606 * x_2608) + x_2610);
          } else {
            let x_2613 : vec4<f32> = u_xlat6;
            let x_2616 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2619 : vec2<f32> = ((vec2<f32>(x_2613.x, x_2613.y) * vec2<f32>(x_2616.z, x_2616.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2620 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
            let x_2622 : vec4<f32> = u_xlat7;
            let x_2624 : vec2<f32> = floor(vec2<f32>(x_2622.x, x_2622.y));
            let x_2625 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec4<f32> = u_xlat6;
            let x_2630 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2633 : vec4<f32> = u_xlat7;
            u_xlat49 = ((vec2<f32>(x_2627.x, x_2627.y) * vec2<f32>(x_2630.z, x_2630.w)) + -(vec2<f32>(x_2633.x, x_2633.y)));
            let x_2637 : vec2<f32> = u_xlat49;
            u_xlat8 = (vec4<f32>(x_2637.x, x_2637.x, x_2637.y, x_2637.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2640 : vec4<f32> = u_xlat8;
            let x_2642 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2640.x, x_2640.x, x_2640.z, x_2640.z) * vec4<f32>(x_2642.x, x_2642.x, x_2642.z, x_2642.z));
            let x_2645 : vec4<f32> = u_xlat9;
            let x_2647 : vec2<f32> = (vec2<f32>(x_2645.y, x_2645.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2648 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2648.x, x_2647.x, x_2648.z, x_2647.y);
            let x_2650 : vec4<f32> = u_xlat9;
            let x_2653 : vec2<f32> = u_xlat49;
            let x_2655 : vec2<f32> = ((vec2<f32>(x_2650.x, x_2650.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2653));
            let x_2656 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2655.x, x_2656.y, x_2655.y, x_2656.w);
            let x_2658 : vec2<f32> = u_xlat49;
            let x_2660 : vec2<f32> = (-(x_2658) + vec2<f32>(1.0f, 1.0f));
            let x_2661 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2660.x, x_2660.y, x_2661.z, x_2661.w);
            let x_2663 : vec2<f32> = u_xlat49;
            u_xlat51 = min(x_2663, vec2<f32>(0.0f, 0.0f));
            let x_2665 : vec2<f32> = u_xlat51;
            let x_2667 : vec2<f32> = u_xlat51;
            let x_2669 : vec4<f32> = u_xlat9;
            let x_2671 : vec2<f32> = ((-(x_2665) * x_2667) + vec2<f32>(x_2669.x, x_2669.y));
            let x_2672 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2671.x, x_2671.y, x_2672.z, x_2672.w);
            let x_2674 : vec2<f32> = u_xlat49;
            u_xlat51 = max(x_2674, vec2<f32>(0.0f, 0.0f));
            let x_2677 : vec2<f32> = u_xlat51;
            let x_2679 : vec2<f32> = u_xlat51;
            let x_2681 : vec4<f32> = u_xlat8;
            let x_2683 : vec2<f32> = ((-(x_2677) * x_2679) + vec2<f32>(x_2681.y, x_2681.w));
            let x_2684 : vec3<f32> = u_xlat29;
            u_xlat29 = vec3<f32>(x_2683.x, x_2684.y, x_2683.y);
            let x_2686 : vec4<f32> = u_xlat9;
            let x_2688 : vec2<f32> = (vec2<f32>(x_2686.x, x_2686.y) + vec2<f32>(2.0f, 2.0f));
            let x_2689 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2688.x, x_2688.y, x_2689.z, x_2689.w);
            let x_2691 : vec3<f32> = u_xlat29;
            let x_2693 : vec2<f32> = (vec2<f32>(x_2691.x, x_2691.z) + vec2<f32>(2.0f, 2.0f));
            let x_2694 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2694.x, x_2693.x, x_2694.z, x_2693.y);
            let x_2697 : f32 = u_xlat8.y;
            u_xlat11.z = (x_2697 * 0.08163200318813323975f);
            let x_2700 : vec4<f32> = u_xlat8;
            let x_2702 : vec3<f32> = (vec3<f32>(x_2700.z, x_2700.x, x_2700.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2703 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
            let x_2705 : vec4<f32> = u_xlat9;
            let x_2707 : vec2<f32> = (vec2<f32>(x_2705.x, x_2705.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2708 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2707.x, x_2707.y, x_2708.z, x_2708.w);
            let x_2711 : f32 = u_xlat12.y;
            u_xlat11.x = x_2711;
            let x_2713 : vec2<f32> = u_xlat49;
            let x_2716 : vec2<f32> = ((vec2<f32>(x_2713.x, x_2713.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2717 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2717.x, x_2716.x, x_2717.z, x_2716.y);
            let x_2719 : vec2<f32> = u_xlat49;
            let x_2722 : vec2<f32> = ((vec2<f32>(x_2719.x, x_2719.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2723 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2722.x, x_2723.y, x_2722.y, x_2723.w);
            let x_2726 : f32 = u_xlat8.x;
            u_xlat9.y = x_2726;
            let x_2729 : f32 = u_xlat10.y;
            u_xlat9.w = x_2729;
            let x_2731 : vec4<f32> = u_xlat9;
            let x_2732 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2731 + x_2732);
            let x_2734 : vec2<f32> = u_xlat49;
            let x_2737 : vec2<f32> = ((vec2<f32>(x_2734.y, x_2734.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2738 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2738.x, x_2737.x, x_2738.z, x_2737.y);
            let x_2740 : vec2<f32> = u_xlat49;
            let x_2743 : vec2<f32> = ((vec2<f32>(x_2740.y, x_2740.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2744 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2743.x, x_2744.y, x_2743.y, x_2744.w);
            let x_2747 : f32 = u_xlat8.y;
            u_xlat10.y = x_2747;
            let x_2749 : vec4<f32> = u_xlat10;
            let x_2750 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2749 + x_2750);
            let x_2752 : vec4<f32> = u_xlat9;
            let x_2753 : vec4<f32> = u_xlat11;
            u_xlat9 = (x_2752 / x_2753);
            let x_2755 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2755 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2757 : vec4<f32> = u_xlat10;
            let x_2758 : vec4<f32> = u_xlat8;
            u_xlat10 = (x_2757 / x_2758);
            let x_2760 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2760 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2762 : vec4<f32> = u_xlat9;
            let x_2765 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2762.w, x_2762.x, x_2762.y, x_2762.z) * vec4<f32>(x_2765.x, x_2765.x, x_2765.x, x_2765.x));
            let x_2768 : vec4<f32> = u_xlat10;
            let x_2771 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2768.x, x_2768.w, x_2768.y, x_2768.z) * vec4<f32>(x_2771.y, x_2771.y, x_2771.y, x_2771.y));
            let x_2774 : vec4<f32> = u_xlat9;
            let x_2775 : vec3<f32> = vec3<f32>(x_2774.y, x_2774.z, x_2774.w);
            let x_2776 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2775.x, x_2776.y, x_2775.y, x_2775.z);
            let x_2779 : f32 = u_xlat10.x;
            u_xlat12.y = x_2779;
            let x_2781 : vec4<f32> = u_xlat7;
            let x_2784 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2787 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2781.x, x_2781.y, x_2781.x, x_2781.y) * vec4<f32>(x_2784.x, x_2784.y, x_2784.x, x_2784.y)) + vec4<f32>(x_2787.x, x_2787.y, x_2787.z, x_2787.y));
            let x_2790 : vec4<f32> = u_xlat7;
            let x_2793 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat12;
            u_xlat49 = ((vec2<f32>(x_2790.x, x_2790.y) * vec2<f32>(x_2793.x, x_2793.y)) + vec2<f32>(x_2796.w, x_2796.y));
            let x_2800 : f32 = u_xlat12.y;
            u_xlat9.y = x_2800;
            let x_2803 : f32 = u_xlat10.z;
            u_xlat12.y = x_2803;
            let x_2805 : vec4<f32> = u_xlat7;
            let x_2808 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2811 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.y) * vec4<f32>(x_2808.x, x_2808.y, x_2808.x, x_2808.y)) + vec4<f32>(x_2811.x, x_2811.y, x_2811.z, x_2811.y));
            let x_2814 : vec4<f32> = u_xlat7;
            let x_2817 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2820 : vec4<f32> = u_xlat12;
            let x_2822 : vec2<f32> = ((vec2<f32>(x_2814.x, x_2814.y) * vec2<f32>(x_2817.x, x_2817.y)) + vec2<f32>(x_2820.w, x_2820.y));
            let x_2823 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2822.x, x_2822.y, x_2823.z, x_2823.w);
            let x_2826 : f32 = u_xlat12.y;
            u_xlat9.z = x_2826;
            let x_2828 : vec4<f32> = u_xlat7;
            let x_2831 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2834 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2828.x, x_2828.y, x_2828.x, x_2828.y) * vec4<f32>(x_2831.x, x_2831.y, x_2831.x, x_2831.y)) + vec4<f32>(x_2834.x, x_2834.y, x_2834.x, x_2834.z));
            let x_2838 : f32 = u_xlat10.w;
            u_xlat12.y = x_2838;
            let x_2840 : vec4<f32> = u_xlat7;
            let x_2843 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2846 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2840.x, x_2840.y, x_2840.x, x_2840.y) * vec4<f32>(x_2843.x, x_2843.y, x_2843.x, x_2843.y)) + vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2846.y));
            let x_2850 : vec4<f32> = u_xlat7;
            let x_2853 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2856 : vec4<f32> = u_xlat12;
            u_xlat30 = ((vec2<f32>(x_2850.x, x_2850.y) * vec2<f32>(x_2853.x, x_2853.y)) + vec2<f32>(x_2856.w, x_2856.y));
            let x_2860 : f32 = u_xlat12.y;
            u_xlat9.w = x_2860;
            let x_2863 : vec4<f32> = u_xlat7;
            let x_2866 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2869 : vec4<f32> = u_xlat9;
            u_xlat57 = ((vec2<f32>(x_2863.x, x_2863.y) * vec2<f32>(x_2866.x, x_2866.y)) + vec2<f32>(x_2869.x, x_2869.w));
            let x_2872 : vec4<f32> = u_xlat12;
            let x_2873 : vec3<f32> = vec3<f32>(x_2872.x, x_2872.z, x_2872.w);
            let x_2874 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2873.x, x_2874.y, x_2873.y, x_2873.z);
            let x_2876 : vec4<f32> = u_xlat7;
            let x_2879 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2882 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y) * vec4<f32>(x_2879.x, x_2879.y, x_2879.x, x_2879.y)) + vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2882.y));
            let x_2886 : vec4<f32> = u_xlat7;
            let x_2889 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2892 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2886.x, x_2886.y) * vec2<f32>(x_2889.x, x_2889.y)) + vec2<f32>(x_2892.w, x_2892.y));
            let x_2896 : f32 = u_xlat9.x;
            u_xlat10.x = x_2896;
            let x_2898 : vec4<f32> = u_xlat7;
            let x_2901 : vec4<f32> = x_160.x_AdditionalShadowmapSize;
            let x_2904 : vec4<f32> = u_xlat10;
            let x_2906 : vec2<f32> = ((vec2<f32>(x_2898.x, x_2898.y) * vec2<f32>(x_2901.x, x_2901.y)) + vec2<f32>(x_2904.x, x_2904.y));
            let x_2907 : vec4<f32> = u_xlat7;
            u_xlat7 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2910 : vec4<f32> = u_xlat8;
            let x_2912 : vec4<f32> = u_xlat11;
            u_xlat18 = (vec4<f32>(x_2910.x, x_2910.x, x_2910.x, x_2910.x) * x_2912);
            let x_2915 : vec4<f32> = u_xlat8;
            let x_2917 : vec4<f32> = u_xlat11;
            u_xlat19 = (vec4<f32>(x_2915.y, x_2915.y, x_2915.y, x_2915.y) * x_2917);
            let x_2920 : vec4<f32> = u_xlat8;
            let x_2922 : vec4<f32> = u_xlat11;
            u_xlat20 = (vec4<f32>(x_2920.z, x_2920.z, x_2920.z, x_2920.z) * x_2922);
            let x_2924 : vec4<f32> = u_xlat8;
            let x_2926 : vec4<f32> = u_xlat11;
            u_xlat8 = (vec4<f32>(x_2924.w, x_2924.w, x_2924.w, x_2924.w) * x_2926);
            let x_2929 : vec4<f32> = u_xlat13;
            let x_2930 : vec2<f32> = vec2<f32>(x_2929.x, x_2929.y);
            let x_2932 : f32 = u_xlat6.z;
            txVec43 = vec3<f32>(x_2930.x, x_2930.y, x_2932);
            let x_2939 : vec3<f32> = txVec43;
            let x_2941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2939.xy, x_2939.z);
            u_xlat9.x = x_2941;
            let x_2944 : vec4<f32> = u_xlat13;
            let x_2945 : vec2<f32> = vec2<f32>(x_2944.z, x_2944.w);
            let x_2947 : f32 = u_xlat6.z;
            txVec44 = vec3<f32>(x_2945.x, x_2945.y, x_2947);
            let x_2955 : vec3<f32> = txVec44;
            let x_2957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2955.xy, x_2955.z);
            u_xlat72 = x_2957;
            let x_2958 : f32 = u_xlat72;
            let x_2960 : f32 = u_xlat18.y;
            u_xlat72 = (x_2958 * x_2960);
            let x_2963 : f32 = u_xlat18.x;
            let x_2965 : f32 = u_xlat9.x;
            let x_2967 : f32 = u_xlat72;
            u_xlat9.x = ((x_2963 * x_2965) + x_2967);
            let x_2971 : vec2<f32> = u_xlat49;
            let x_2973 : f32 = u_xlat6.z;
            txVec45 = vec3<f32>(x_2971.x, x_2971.y, x_2973);
            let x_2980 : vec3<f32> = txVec45;
            let x_2982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2980.xy, x_2980.z);
            u_xlat49.x = x_2982;
            let x_2985 : f32 = u_xlat18.z;
            let x_2987 : f32 = u_xlat49.x;
            let x_2990 : f32 = u_xlat9.x;
            u_xlat49.x = ((x_2985 * x_2987) + x_2990);
            let x_2994 : vec4<f32> = u_xlat16;
            let x_2995 : vec2<f32> = vec2<f32>(x_2994.x, x_2994.y);
            let x_2997 : f32 = u_xlat6.z;
            txVec46 = vec3<f32>(x_2995.x, x_2995.y, x_2997);
            let x_3005 : vec3<f32> = txVec46;
            let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
            u_xlat70 = x_3007;
            let x_3009 : f32 = u_xlat18.w;
            let x_3010 : f32 = u_xlat70;
            let x_3013 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3009 * x_3010) + x_3013);
            let x_3017 : vec4<f32> = u_xlat14;
            let x_3018 : vec2<f32> = vec2<f32>(x_3017.x, x_3017.y);
            let x_3020 : f32 = u_xlat6.z;
            txVec47 = vec3<f32>(x_3018.x, x_3018.y, x_3020);
            let x_3027 : vec3<f32> = txVec47;
            let x_3029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3027.xy, x_3027.z);
            u_xlat70 = x_3029;
            let x_3031 : f32 = u_xlat19.x;
            let x_3032 : f32 = u_xlat70;
            let x_3035 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3031 * x_3032) + x_3035);
            let x_3039 : vec4<f32> = u_xlat14;
            let x_3040 : vec2<f32> = vec2<f32>(x_3039.z, x_3039.w);
            let x_3042 : f32 = u_xlat6.z;
            txVec48 = vec3<f32>(x_3040.x, x_3040.y, x_3042);
            let x_3049 : vec3<f32> = txVec48;
            let x_3051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3049.xy, x_3049.z);
            u_xlat70 = x_3051;
            let x_3053 : f32 = u_xlat19.y;
            let x_3054 : f32 = u_xlat70;
            let x_3057 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3053 * x_3054) + x_3057);
            let x_3061 : vec4<f32> = u_xlat15;
            let x_3062 : vec2<f32> = vec2<f32>(x_3061.x, x_3061.y);
            let x_3064 : f32 = u_xlat6.z;
            txVec49 = vec3<f32>(x_3062.x, x_3062.y, x_3064);
            let x_3071 : vec3<f32> = txVec49;
            let x_3073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3071.xy, x_3071.z);
            u_xlat70 = x_3073;
            let x_3075 : f32 = u_xlat19.z;
            let x_3076 : f32 = u_xlat70;
            let x_3079 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3075 * x_3076) + x_3079);
            let x_3083 : vec4<f32> = u_xlat16;
            let x_3084 : vec2<f32> = vec2<f32>(x_3083.z, x_3083.w);
            let x_3086 : f32 = u_xlat6.z;
            txVec50 = vec3<f32>(x_3084.x, x_3084.y, x_3086);
            let x_3093 : vec3<f32> = txVec50;
            let x_3095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3093.xy, x_3093.z);
            u_xlat70 = x_3095;
            let x_3097 : f32 = u_xlat19.w;
            let x_3098 : f32 = u_xlat70;
            let x_3101 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3097 * x_3098) + x_3101);
            let x_3105 : vec4<f32> = u_xlat17;
            let x_3106 : vec2<f32> = vec2<f32>(x_3105.x, x_3105.y);
            let x_3108 : f32 = u_xlat6.z;
            txVec51 = vec3<f32>(x_3106.x, x_3106.y, x_3108);
            let x_3115 : vec3<f32> = txVec51;
            let x_3117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3115.xy, x_3115.z);
            u_xlat70 = x_3117;
            let x_3119 : f32 = u_xlat20.x;
            let x_3120 : f32 = u_xlat70;
            let x_3123 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3119 * x_3120) + x_3123);
            let x_3127 : vec4<f32> = u_xlat17;
            let x_3128 : vec2<f32> = vec2<f32>(x_3127.z, x_3127.w);
            let x_3130 : f32 = u_xlat6.z;
            txVec52 = vec3<f32>(x_3128.x, x_3128.y, x_3130);
            let x_3137 : vec3<f32> = txVec52;
            let x_3139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
            u_xlat70 = x_3139;
            let x_3141 : f32 = u_xlat20.y;
            let x_3142 : f32 = u_xlat70;
            let x_3145 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3141 * x_3142) + x_3145);
            let x_3149 : vec2<f32> = u_xlat30;
            let x_3151 : f32 = u_xlat6.z;
            txVec53 = vec3<f32>(x_3149.x, x_3149.y, x_3151);
            let x_3158 : vec3<f32> = txVec53;
            let x_3160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3158.xy, x_3158.z);
            u_xlat70 = x_3160;
            let x_3162 : f32 = u_xlat20.z;
            let x_3163 : f32 = u_xlat70;
            let x_3166 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3162 * x_3163) + x_3166);
            let x_3170 : vec2<f32> = u_xlat57;
            let x_3172 : f32 = u_xlat6.z;
            txVec54 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3179 : vec3<f32> = txVec54;
            let x_3181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3179.xy, x_3179.z);
            u_xlat70 = x_3181;
            let x_3183 : f32 = u_xlat20.w;
            let x_3184 : f32 = u_xlat70;
            let x_3187 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3183 * x_3184) + x_3187);
            let x_3191 : vec4<f32> = u_xlat12;
            let x_3192 : vec2<f32> = vec2<f32>(x_3191.x, x_3191.y);
            let x_3194 : f32 = u_xlat6.z;
            txVec55 = vec3<f32>(x_3192.x, x_3192.y, x_3194);
            let x_3201 : vec3<f32> = txVec55;
            let x_3203 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3201.xy, x_3201.z);
            u_xlat70 = x_3203;
            let x_3205 : f32 = u_xlat8.x;
            let x_3206 : f32 = u_xlat70;
            let x_3209 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3205 * x_3206) + x_3209);
            let x_3213 : vec4<f32> = u_xlat12;
            let x_3214 : vec2<f32> = vec2<f32>(x_3213.z, x_3213.w);
            let x_3216 : f32 = u_xlat6.z;
            txVec56 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
            let x_3223 : vec3<f32> = txVec56;
            let x_3225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
            u_xlat70 = x_3225;
            let x_3227 : f32 = u_xlat8.y;
            let x_3228 : f32 = u_xlat70;
            let x_3231 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3227 * x_3228) + x_3231);
            let x_3235 : vec2<f32> = u_xlat52;
            let x_3237 : f32 = u_xlat6.z;
            txVec57 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3244 : vec3<f32> = txVec57;
            let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
            u_xlat70 = x_3246;
            let x_3248 : f32 = u_xlat8.z;
            let x_3249 : f32 = u_xlat70;
            let x_3252 : f32 = u_xlat49.x;
            u_xlat49.x = ((x_3248 * x_3249) + x_3252);
            let x_3256 : vec4<f32> = u_xlat7;
            let x_3257 : vec2<f32> = vec2<f32>(x_3256.x, x_3256.y);
            let x_3259 : f32 = u_xlat6.z;
            txVec58 = vec3<f32>(x_3257.x, x_3257.y, x_3259);
            let x_3266 : vec3<f32> = txVec58;
            let x_3268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3266.xy, x_3266.z);
            u_xlat7.x = x_3268;
            let x_3271 : f32 = u_xlat8.w;
            let x_3273 : f32 = u_xlat7.x;
            let x_3276 : f32 = u_xlat49.x;
            u_xlat69 = ((x_3271 * x_3273) + x_3276);
          }
        }
      } else {
        let x_3280 : vec4<f32> = u_xlat6;
        let x_3281 : vec2<f32> = vec2<f32>(x_3280.x, x_3280.y);
        let x_3283 : f32 = u_xlat6.z;
        txVec59 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
        let x_3290 : vec3<f32> = txVec59;
        let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
        u_xlat69 = x_3292;
      }
      let x_3293 : i32 = u_xlati67;
      let x_3295 : f32 = x_160.x_AdditionalShadowParams[x_3293].x;
      u_xlat6.x = (1.0f + -(x_3295));
      let x_3299 : f32 = u_xlat69;
      let x_3300 : i32 = u_xlati67;
      let x_3302 : f32 = x_160.x_AdditionalShadowParams[x_3300].x;
      let x_3305 : f32 = u_xlat6.x;
      u_xlat6.x = ((x_3299 * x_3302) + x_3305);
      let x_3309 : f32 = u_xlat6.z;
      u_xlatb27.x = (0.0f >= x_3309);
      let x_3314 : f32 = u_xlat6.z;
      u_xlatb48 = (x_3314 >= 1.0f);
      let x_3316 : bool = u_xlatb48;
      let x_3318 : bool = u_xlatb27.x;
      u_xlatb27.x = (x_3316 | x_3318);
      let x_3322 : bool = u_xlatb27.x;
      if (x_3322) {
        x_3323 = 1.0f;
      } else {
        let x_3328 : f32 = u_xlat6.x;
        x_3323 = x_3328;
      }
      let x_3329 : f32 = x_3323;
      u_xlat6.x = x_3329;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_3334 : f32 = u_xlat6.x;
    u_xlat27.x = (-(x_3334) + 1.0f);
    let x_3339 : f32 = u_xlat2.x;
    let x_3341 : f32 = u_xlat27.x;
    let x_3344 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_3339 * x_3341) + x_3344);
    let x_3347 : f32 = u_xlat68;
    let x_3349 : f32 = u_xlat6.x;
    u_xlat68 = (x_3347 * x_3349);
    let x_3351 : f32 = u_xlat68;
    let x_3353 : i32 = u_xlati67;
    let x_3355 : vec4<f32> = x_1827.x_AdditionalLightsColor[x_3353];
    let x_3357 : vec3<f32> = (vec3<f32>(x_3351, x_3351, x_3351) * vec3<f32>(x_3355.x, x_3355.y, x_3355.z));
    let x_3358 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3357.x, x_3357.y, x_3357.z, x_3358.w);
    let x_3360 : vec4<f32> = u_xlat1;
    let x_3362 : vec4<f32> = u_xlat5;
    u_xlat67 = dot(vec3<f32>(x_3360.x, x_3360.y, x_3360.z), vec3<f32>(x_3362.x, x_3362.y, x_3362.z));
    let x_3365 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3365, 0.0f, 1.0f);
    let x_3367 : f32 = u_xlat67;
    let x_3369 : vec4<f32> = u_xlat6;
    let x_3371 : vec3<f32> = (vec3<f32>(x_3367, x_3367, x_3367) * vec3<f32>(x_3369.x, x_3369.y, x_3369.z));
    let x_3372 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3371.x, x_3371.y, x_3371.z, x_3372.w);
    let x_3374 : vec4<f32> = u_xlat5;
    let x_3376 : vec4<f32> = u_xlat0;
    let x_3379 : vec4<f32> = u_xlat4;
    let x_3381 : vec3<f32> = ((vec3<f32>(x_3374.x, x_3374.y, x_3374.z) * vec3<f32>(x_3376.y, x_3376.z, x_3376.w)) + vec3<f32>(x_3379.x, x_3379.y, x_3379.z));
    let x_3382 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3381.x, x_3381.y, x_3381.z, x_3382.w);

    continuing {
      let x_3384 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3384 + bitcast<u32>(1i));
    }
  }
  let x_3387 : vec4<f32> = u_xlat3;
  let x_3389 : vec4<f32> = u_xlat0;
  let x_3392 : vec3<f32> = u_xlat23;
  u_xlat21 = ((vec3<f32>(x_3387.x, x_3387.y, x_3387.z) * vec3<f32>(x_3389.y, x_3389.z, x_3389.w)) + x_3392);
  let x_3396 : vec4<f32> = u_xlat4;
  let x_3398 : vec3<f32> = u_xlat21;
  let x_3399 : vec3<f32> = (vec3<f32>(x_3396.x, x_3396.y, x_3396.z) + x_3398);
  let x_3400 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3399.x, x_3399.y, x_3399.z, x_3400.w);
  let x_3404 : f32 = x_56.x_Surface;
  u_xlatb21 = (x_3404 == 1.0f);
  let x_3406 : bool = u_xlatb21;
  if (x_3406) {
    let x_3411 : f32 = u_xlat0.x;
    x_3407 = x_3411;
  } else {
    x_3407 = 1.0f;
  }
  let x_3413 : f32 = x_3407;
  SV_Target0.w = x_3413;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


