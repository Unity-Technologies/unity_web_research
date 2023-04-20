diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_BlitScaleBias : vec4<f32>,
}

var<private> u_xlatu0 : vec4<u32>;

var<private> gl_VertexIndex : i32;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_109 : VGlobals;

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
  let x_55 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_55.x, x_55.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  param = 0i;
  let x_65 : i32 = gl_VertexIndex;
  param_1 = x_65;
  param_2 = 1i;
  param_3 = 1i;
  let x_68 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlatu0.x = bitcast<u32>(x_68);
  let x_73 : i32 = gl_VertexIndex;
  u_xlatu0.w = (bitcast<u32>(x_73) & 2u);
  let x_83 : vec4<u32> = u_xlatu0;
  let x_85 : vec2<f32> = vec2<f32>(vec2<u32>(x_83.x, x_83.w));
  let x_86 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_85.x, x_85.y, x_86.z);
  let x_90 : vec3<f32> = u_xlat0;
  u_xlat1 = ((vec2<f32>(x_90.x, x_90.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_100 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_100) + 1.0f);
  let x_105 : vec3<f32> = u_xlat0;
  let x_112 : vec4<f32> = x_109.x_BlitScaleBias;
  let x_116 : vec4<f32> = x_109.x_BlitScaleBias;
  let x_118 : vec2<f32> = ((vec2<f32>(x_105.x, x_105.z) * vec2<f32>(x_112.x, x_112.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_119 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec2<f32> = u_xlat1;
  let x_123 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_121.x, x_121.y, x_123.z, x_123.w);
  let x_125 : vec2<f32> = u_xlat1;
  let x_129 : vec2<f32> = ((x_125 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
  let x_130 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_130.x, x_130.y, x_129.x, x_129.y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}


