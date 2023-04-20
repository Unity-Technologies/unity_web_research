diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_BlitScaleBias : vec4<f32>,
  /* @offset(16) */
  x_Metrics : vec4<f32>,
}

var<private> u_xlatu0 : vec4<u32>;

var<private> gl_VertexIndex : i32;

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_104 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  param = 0i;
  let x_51 : i32 = gl_VertexIndex;
  param_1 = x_51;
  param_2 = 1i;
  param_3 = 1i;
  let x_54 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlatu0.x = bitcast<u32>(x_54);
  let x_59 : i32 = gl_VertexIndex;
  u_xlatu0.w = (bitcast<u32>(x_59) & 2u);
  let x_70 : vec4<u32> = u_xlatu0;
  let x_73 : vec2<f32> = vec2<f32>(vec2<u32>(x_70.x, x_70.w));
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_88 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_88.x, x_88.y, x_91.z, x_91.w);
  let x_95 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_95) + 1.0f);
  let x_100 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = x_104.x_BlitScaleBias;
  let x_111 : vec4<f32> = x_104.x_BlitScaleBias;
  let x_113 : vec2<f32> = ((vec2<f32>(x_100.x, x_100.z) * vec2<f32>(x_107.x, x_107.y)) + vec2<f32>(x_111.z, x_111.w));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_118 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_118.x, x_118.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  let x_122 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = x_104.x_Metrics;
  vs_TEXCOORD1 = (vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_125.z, x_125.w));
  let x_129 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec2<f32>(x_129.x, x_129.y);
  let x_133 : vec4<f32> = x_104.x_Metrics;
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec4<f32>(x_133.x, x_133.x, x_133.y, x_133.y) * vec4<f32>(-0.25f, 1.25f, -0.125f, -0.125f)) + vec4<f32>(x_140.x, x_140.x, x_140.y, x_140.y));
  let x_144 : vec4<f32> = x_104.x_Metrics;
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_144.x, x_144.y, x_144.x, x_144.y) * vec4<f32>(-0.125f, -0.25f, -0.125f, 1.25f)) + vec4<f32>(x_148.x, x_148.y, x_148.x, x_148.y));
  let x_152 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_152.x, x_152.z, x_152.y, x_152.w);
  let x_155 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = x_155;
  let x_156 : vec4<f32> = u_xlat0;
  let x_157 : vec2<f32> = vec2<f32>(x_156.y, x_156.w);
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_157.x, x_157.y);
  let x_162 : vec4<f32> = x_104.x_Metrics;
  let x_168 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = ((vec4<f32>(x_162.x, x_162.x, x_162.y, x_162.y) * vec4<f32>(-8.0f, 8.0f, -8.0f, 8.0f)) + x_168);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}


