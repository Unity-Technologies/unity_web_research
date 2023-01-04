var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> phase0_Output0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec3<f32> = in_POSITION0;
  let x_21 : vec2<f32> = vec2<f32>(x_20.x, x_20.y);
  let x_24 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_21.x, x_21.y, x_24.z, x_24.w);
  let x_30 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_30.x, x_30.y, vec2<f32>(0.0f, 1.0f).x, vec2<f32>(0.0f, 1.0f).y);
  let x_34 : vec3<f32> = in_POSITION0;
  u_xlat0 = (vec4<f32>(x_34.x, x_34.y, x_34.x, x_34.y) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_39 : vec4<f32> = u_xlat0;
  phase0_Output0_1 = ((x_39 * vec4<f32>(0.5f, -0.5f, 0.5f, -0.5f)) + vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  let x_48 : vec4<f32> = phase0_Output0_1;
  vs_TEXCOORD0 = vec2<f32>(x_48.x, x_48.y);
  let x_52 : vec4<f32> = phase0_Output0_1;
  vs_TEXCOORD1 = vec2<f32>(x_52.z, x_52.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1);
}

