diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_TimeParameters : vec4<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_60 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_100 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_INTERP2 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = in_TEXCOORD0;
  let x_19 : vec2<f32> = (vec2<f32>(x_14.y, x_14.y) + vec2<f32>(0.5f, 1.0f));
  let x_20 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_19.x, x_19.y, x_20.z);
  let x_27 : f32 = u_xlat0.y;
  u_xlat2.x = floor(x_27);
  let x_32 : f32 = u_xlat2.x;
  let x_35 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_32) + x_35);
  let x_39 : f32 = u_xlat0.x;
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (x_39 + x_41);
  let x_45 : f32 = u_xlat0.x;
  u_xlat0.x = ((abs(x_45) * 2.0f) + -1.0f);
  let x_53 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * 6.2831859588623046875f);
  let x_65 : f32 = x_60.x_TimeParameters.x;
  let x_69 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_65 * 3.0f) + x_69);
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_73);
  let x_77 : f32 = u_xlat0.x;
  let x_81 : f32 = in_COLOR0.y;
  u_xlat0.x = (x_77 * x_81);
  let x_85 : f32 = u_xlat0.x;
  let x_92 : f32 = in_POSITION0.z;
  u_xlat0.x = ((-(x_85) * 0.5f) + x_92);
  let x_95 : vec3<f32> = in_POSITION0;
  let x_104 : vec4<f32> = x_100.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_95.y, x_95.y, x_95.y) * vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_108 : vec4<f32> = x_100.unity_ObjectToWorld[0i];
  let x_110 : vec3<f32> = in_POSITION0;
  let x_113 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(x_110.x, x_110.x, x_110.x)) + x_113);
  let x_117 : vec4<f32> = x_100.unity_ObjectToWorld[2i];
  let x_119 : vec3<f32> = u_xlat0;
  let x_122 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_117.x, x_117.y, x_117.z) * vec3<f32>(x_119.x, x_119.x, x_119.x)) + x_122);
  let x_124 : vec3<f32> = u_xlat0;
  let x_127 : vec4<f32> = x_100.unity_ObjectToWorld[3i];
  u_xlat0 = (x_124 + vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_132 : vec3<f32> = u_xlat0;
  let x_135 : vec4<f32> = x_60.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_132.y, x_132.y, x_132.y, x_132.y) * x_135);
  let x_138 : vec4<f32> = x_60.unity_MatrixVP[0i];
  let x_139 : vec3<f32> = u_xlat0;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_138 * vec4<f32>(x_139.x, x_139.x, x_139.x, x_139.x)) + x_142);
  let x_145 : vec4<f32> = x_60.unity_MatrixVP[2i];
  let x_146 : vec3<f32> = u_xlat0;
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_145 * vec4<f32>(x_146.z, x_146.z, x_146.z, x_146.z)) + x_149);
  let x_152 : vec3<f32> = u_xlat0;
  vs_INTERP1 = x_152;
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec4<f32> = x_60.unity_MatrixVP[3i];
  gl_Position = (x_157 + x_159);
  let x_164 : vec4<f32> = in_COLOR0;
  vs_INTERP0 = x_164;
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_168 : vec4<f32> = x_100.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_166, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_174 : vec4<f32> = x_100.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_172, vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : vec3<f32> = in_NORMAL0;
  let x_180 : vec4<f32> = x_100.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_178, vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_185 : vec3<f32> = u_xlat0;
  let x_186 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_185, x_186);
  let x_188 : f32 = u_xlat6;
  u_xlat6 = max(x_188, 1.17549435e-38f);
  let x_191 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_191);
  let x_194 : f32 = u_xlat6;
  let x_196 : vec3<f32> = u_xlat0;
  vs_INTERP2 = (vec3<f32>(x_194, x_194, x_194) * x_196);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec4<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP0);
}


