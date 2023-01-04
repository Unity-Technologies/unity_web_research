struct PGlobals {
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_32 : PGlobals;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  let x_39 : vec3<f32> = (x_29 * vec3<f32>(x_37.x, x_37.y, x_37.z));
  let x_40 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  SV_Target0.w = 1.0f;
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_53 : vec3<f32> = vs_TEXCOORD1;
  let x_57 : vec3<f32> = ((x_53 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_58 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_57.x, x_57.y, x_57.z, x_58.w);
  SV_Target2.w = 1.0f;
  SV_Target3 = vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}

