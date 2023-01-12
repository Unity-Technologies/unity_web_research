var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_17 + 1.0f);
  let x_23 : vec4<f32> = vs_TEXCOORD1;
  let x_25 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_23.x, x_23.y) / vec2<f32>(x_25.x, x_25.x));
  let x_30 : vec2<f32> = u_xlat0;
  let x_36 : vec2<f32> = ((x_30 * vec2<f32>(0.281262308f, 0.281262308f)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_39 : vec4<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec2<f32>(x_39.w, x_39.w) * vec2<f32>(1.0f, 255.0f));
  let x_44 : vec2<f32> = u_xlat0;
  u_xlat0 = fract(x_44);
  let x_48 : f32 = u_xlat0.y;
  let x_53 : f32 = u_xlat0.x;
  SV_Target0.z = ((-(x_48) * 0.003921569f) + x_53);
  let x_58 : f32 = u_xlat0.y;
  SV_Target0.w = x_58;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

