@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_32 : f32 = u_xlat0.w;
  u_xlatb1 = (x_32 < 0.0f);
  let x_35 : bool = u_xlatb1;
  if (((select(0i, 1i, x_35) * -1i) != 0i)) {
    discard;
  }
  let x_49 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = vs_COLOR0;
  let x_55 : vec3<f32> = (vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_59 : f32 = u_xlat0.w;
  SV_Target0.w = x_59;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

