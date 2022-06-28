struct PGlobals {
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_35.x, x_35.y, x_35.z));
  let x_40 : vec3<f32> = u_xlat0;
  let x_41 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_44 : vec3<f32> = u_xlat0;
  let x_47 : vec3<f32> = vs_TEXCOORD4;
  let x_48 : vec3<f32> = (x_44 * x_47);
  let x_49 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_48.x, x_48.y, x_48.z, x_49.w);
  SV_Target0.w = 1.0f;
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_65 : vec3<f32> = ((x_61 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_66 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_65.x, x_65.y, x_65.z, x_66.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD4_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target3, SV_Target1, SV_Target2);
}

