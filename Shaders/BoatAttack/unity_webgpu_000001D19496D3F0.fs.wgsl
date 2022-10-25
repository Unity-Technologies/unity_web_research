var<private> vs_TEXCOORD1 : f32;

@group(0) @binding(0) var x_HaloFalloff : texture_2d<f32>;

@group(0) @binding(1) var sampler_HaloFalloff : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat2 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : f32 = vs_TEXCOORD1;
  u_xlat0 = x_11;
  let x_12 : f32 = u_xlat0;
  u_xlat0 = clamp(x_12, 0.0f, 1.0f);
  let x_30 : vec2<f32> = vs_TEXCOORD0;
  let x_32 : vec4<f32> = textureSample(x_HaloFalloff, sampler_HaloFalloff, x_30);
  u_xlat2 = x_32.w;
  let x_39 : f32 = u_xlat2;
  let x_43 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec3<f32>(x_39, x_39, x_39) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_48 : f32 = u_xlat2;
  SV_Target0.w = x_48;
  let x_51 : f32 = u_xlat0;
  let x_53 : vec3<f32> = u_xlat1;
  let x_54 : vec3<f32> = (vec3<f32>(x_51, x_51, x_51) * x_53);
  let x_55 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : f32, @location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

