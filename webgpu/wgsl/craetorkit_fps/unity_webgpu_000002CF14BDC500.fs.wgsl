@group(0) @binding(0) var x_CameraDepthNormalsTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_CameraDepthNormalsTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat4 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_CameraDepthNormalsTexture, sampler_CameraDepthNormalsTexture, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec3<f32>(3.555399895f, 3.555399895f, 0.0f)) + vec3<f32>(-1.777699947f, -1.777699947f, 1.0f));
  let x_38 : vec3<f32> = u_xlat0;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat4 = dot(x_38, x_39);
  let x_42 : f32 = u_xlat4;
  u_xlat4 = (2.0f / x_42);
  let x_45 : vec3<f32> = u_xlat0;
  let x_47 : f32 = u_xlat4;
  let x_49 : vec2<f32> = (vec2<f32>(x_45.x, x_45.y) * vec2<f32>(x_47, x_47));
  let x_50 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_49.x, x_49.y, x_50.z);
  let x_52 : f32 = u_xlat4;
  u_xlat1.z = (x_52 + -1.0f);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec3<f32> = (x_60 * vec3<f32>(1.0f, 1.0f, -1.0f));
  let x_63 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

