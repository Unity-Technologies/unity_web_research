diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_BlitScaleBias : vec4<f32>,
  /* @offset(16) */
  x_Metrics : vec4<f32>,
}

var<private> u_xlatu0 : vec4<u32>;

var<private> gl_VertexIndex : i32;

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_105 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

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
  let x_74 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_73.x, x_73.y, x_74.z);
  let x_82 : vec3<f32> = u_xlat0;
  let x_89 : vec2<f32> = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_92 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_89.x, x_89.y, x_92.z, x_92.w);
  let x_96 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_96) + 1.0f);
  let x_101 : vec3<f32> = u_xlat0;
  let x_108 : vec4<f32> = x_105.x_BlitScaleBias;
  let x_112 : vec4<f32> = x_105.x_BlitScaleBias;
  let x_114 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.z) * vec2<f32>(x_108.x, x_108.y)) + vec2<f32>(x_112.z, x_112.w));
  let x_115 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_114.x, x_114.y, x_115.z);
  let x_119 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_119.x, x_119.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  let x_123 : vec3<f32> = u_xlat0;
  vs_TEXCOORD0 = vec2<f32>(x_123.x, x_123.y);
  let x_127 : vec4<f32> = x_105.x_Metrics;
  let x_132 : vec3<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec4<f32>(x_127.x, x_127.y, x_127.x, x_127.y) * vec4<f32>(-1.0f, 0.0f, 0.0f, -1.0f)) + vec4<f32>(x_132.x, x_132.y, x_132.x, x_132.y));
  let x_137 : vec4<f32> = x_105.x_Metrics;
  let x_141 : vec3<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec4<f32>(x_137.x, x_137.y, x_137.x, x_137.y) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_141.x, x_141.y, x_141.x, x_141.y));
  let x_146 : vec4<f32> = x_105.x_Metrics;
  let x_151 : vec3<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec4<f32>(x_146.x, x_146.y, x_146.x, x_146.y) * vec4<f32>(-2.0f, 0.0f, 0.0f, -2.0f)) + vec4<f32>(x_151.x, x_151.y, x_151.x, x_151.y));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}


