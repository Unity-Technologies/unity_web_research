diagnostic(off, derivative_uniformity);

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
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_61 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat9 : f32;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_149 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb4 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_201 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let x_19 : vec3<f32> = vs_TEXCOORD5;
  let x_20 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_19.x, x_19.y, x_19.z, x_20.w);
  SV_Target2.w = 0.0f;
  let x_31 : f32 = vs_TEXCOORD5.y;
  let x_33 : f32 = vs_TEXCOORD5.y;
  u_xlat0.x = (x_31 * x_33);
  let x_39 : f32 = vs_TEXCOORD5.x;
  let x_41 : f32 = vs_TEXCOORD5.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_39 * x_41) + -(x_44));
  let x_50 : vec3<f32> = vs_TEXCOORD5;
  let x_52 : vec3<f32> = vs_TEXCOORD5;
  u_xlat1 = (vec4<f32>(x_50.y, x_50.z, x_50.z, x_50.x) * vec4<f32>(x_52.x, x_52.y, x_52.z, x_52.z));
  let x_66 : vec4<f32> = x_61.unity_SHBr;
  let x_67 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_66, x_67);
  let x_72 : vec4<f32> = x_61.unity_SHBg;
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_72, x_73);
  let x_78 : vec4<f32> = x_61.unity_SHBb;
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_78, x_79);
  let x_84 : vec4<f32> = x_61.unity_SHC;
  let x_86 : vec3<f32> = u_xlat0;
  let x_89 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_86.x, x_86.x, x_86.x)) + x_89);
  let x_91 : vec3<f32> = vs_TEXCOORD5;
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  u_xlat1.w = 1.0f;
  let x_97 : vec4<f32> = x_61.unity_SHAr;
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_97, x_98);
  let x_103 : vec4<f32> = x_61.unity_SHAg;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_103, x_104);
  let x_109 : vec4<f32> = x_61.unity_SHAb;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_109, x_110);
  let x_113 : vec3<f32> = u_xlat0;
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_113 + x_114);
  let x_116 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_116, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_124 : vec4<f32> = vs_TEXCOORD4;
  let x_125 : vec2<f32> = vec2<f32>(x_124.x, x_124.y);
  let x_127 : f32 = vs_TEXCOORD4.z;
  txVec0 = vec3<f32>(x_125.x, x_125.y, x_127);
  let x_142 : vec3<f32> = txVec0;
  let x_144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_142.xy, x_142.z);
  u_xlat9 = x_144;
  let x_153 : f32 = x_149.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_153) + 1.0f);
  let x_157 : f32 = u_xlat9;
  let x_159 : f32 = x_149.x_MainLightShadowParams.x;
  let x_162 : f32 = u_xlat1.x;
  u_xlat9 = ((x_157 * x_159) + x_162);
  let x_168 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_168);
  let x_172 : f32 = vs_TEXCOORD4.z;
  u_xlatb4 = (x_172 >= 1.0f);
  let x_174 : bool = u_xlatb4;
  let x_175 : bool = u_xlatb1;
  u_xlatb1 = (x_174 | x_175);
  let x_177 : bool = u_xlatb1;
  let x_178 : f32 = u_xlat9;
  u_xlat9 = select(x_178, 1.0f, x_177);
  let x_181 : vec4<f32> = vs_TEXCOORD3;
  let x_183 : f32 = u_xlat9;
  let x_186 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183, x_183, x_183)) + x_186);
  let x_198 : vec2<f32> = vs_TEXCOORD0;
  let x_204 : f32 = x_201.x_GlobalMipBias.x;
  let x_205 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_198, x_204);
  let x_206 : vec3<f32> = vec3<f32>(x_205.x, x_205.y, x_205.z);
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = vs_TEXCOORD2;
  let x_214 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec3<f32> = u_xlat0;
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = (x_218 * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD5_param : vec3<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}


