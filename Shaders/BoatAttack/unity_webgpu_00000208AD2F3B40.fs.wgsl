@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_28 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_28.x, x_28.y, x_28.z) * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_38 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_36.x, x_36.y, x_36.z) * x_38) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_45 : vec4<f32> = u_xlat0;
  let x_47 : vec3<f32> = u_xlat1;
  let x_48 : vec3<f32> = (vec3<f32>(x_45.x, x_45.y, x_45.z) * x_47);
  let x_49 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_48.x, x_48.y, x_48.z, x_49.w);
  let x_55 : f32 = u_xlat0.w;
  SV_Target0.w = x_55;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

