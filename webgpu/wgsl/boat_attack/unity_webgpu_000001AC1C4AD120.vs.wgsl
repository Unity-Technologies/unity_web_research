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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_59 : VGlobals;

var<private> vs_INTERP7 : vec3<f32>;

var<private> vs_INTERP0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP5 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_12.y, x_12.y, x_12.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_33 : vec3<f32> = in_POSITION0;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_31.x, x_31.y, x_31.z) * vec3<f32>(x_33.x, x_33.x, x_33.x)) + x_36);
  let x_40 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_42 : vec3<f32> = in_POSITION0;
  let x_45 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_40.x, x_40.y, x_40.z) * vec3<f32>(x_42.z, x_42.z, x_42.z)) + x_45);
  let x_47 : vec3<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_47 + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_55 : vec3<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_59.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_61);
  let x_64 : vec4<f32> = x_59.unity_MatrixVP[0i];
  let x_65 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_59.unity_MatrixVP[2i];
  let x_72 : vec3<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_79 : vec3<f32> = u_xlat0;
  vs_INTERP7 = x_79;
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = x_59.unity_MatrixVP[3i];
  gl_Position = (x_85 + x_87);
  let x_96 : vec4<f32> = in_TEXCOORD1;
  let x_100 : vec4<f32> = x_21.unity_LightmapST;
  let x_104 : vec4<f32> = x_21.unity_LightmapST;
  vs_INTERP0 = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_100.x, x_100.y)) + vec2<f32>(x_104.z, x_104.w));
  let x_108 : vec4<f32> = in_TANGENT0;
  let x_111 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_108.y, x_108.y, x_108.y) * vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_115 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_117 : vec4<f32> = in_TANGENT0;
  let x_120 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_117.x, x_117.x, x_117.x)) + x_120);
  let x_123 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_125 : vec4<f32> = in_TANGENT0;
  let x_128 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.z, x_125.z, x_125.z)) + x_128);
  let x_132 : vec3<f32> = u_xlat0;
  let x_133 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_132, x_133);
  let x_135 : f32 = u_xlat6;
  u_xlat6 = max(x_135, 1.17549435e-38f);
  let x_138 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_138);
  let x_141 : f32 = u_xlat6;
  let x_143 : vec3<f32> = u_xlat0;
  let x_144 : vec3<f32> = (vec3<f32>(x_141, x_141, x_141) * x_143);
  let x_145 : vec4<f32> = vs_INTERP4;
  vs_INTERP4 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_150 : f32 = in_TANGENT0.w;
  vs_INTERP4.w = x_150;
  let x_155 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP5 = x_155;
  vs_INTERP6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_160 : vec3<f32> = in_NORMAL0;
  let x_162 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_160, vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_167 : vec3<f32> = in_NORMAL0;
  let x_169 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_167, vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_173 : vec3<f32> = in_NORMAL0;
  let x_175 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_173, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_179 : vec3<f32> = u_xlat0;
  let x_180 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_179, x_180);
  let x_182 : f32 = u_xlat6;
  u_xlat6 = max(x_182, 1.17549435e-38f);
  let x_184 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_184);
  let x_187 : f32 = u_xlat6;
  let x_189 : vec3<f32> = u_xlat0;
  vs_INTERP8 = (vec3<f32>(x_187, x_187, x_187) * x_189);
  return;
}

struct main_out {
  @location(3)
  vs_INTERP7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec2<f32>,
  @location(1)
  vs_INTERP4_1 : vec4<f32>,
  @location(2)
  vs_INTERP5_1 : vec4<f32>,
  @location(4)
  vs_INTERP8_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_INTERP7, gl_Position, vs_INTERP0, vs_INTERP4, vs_INTERP5, vs_INTERP8);
}


