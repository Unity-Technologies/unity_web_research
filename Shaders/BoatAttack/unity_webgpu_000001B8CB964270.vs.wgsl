var<private> gl_VertexIndex : i32;

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
  var u_xlatu0 : vec3<u32>;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat0 : vec2<f32>;
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
  let x_58 : i32 = gl_VertexIndex;
  u_xlatu0.z = (bitcast<u32>(x_58) & 2u);
  let x_68 : vec3<u32> = u_xlatu0;
  u_xlat0 = vec2<f32>(vec2<u32>(x_68.x, x_68.z));
  let x_77 : vec2<f32> = u_xlat0;
  let x_83 : vec2<f32> = ((x_77 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_86 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_83.x, x_83.y, x_86.z, x_86.w);
  let x_91 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_91.x, x_91.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(gl_Position);
}

