var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_17 : vec2<f32> = (x_13 * vec2<f32>(0.5f, 1.0f));
  let x_18 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_17.x, x_17.y, x_18.z);
  let x_30 : vec3<f32> = u_xlat0;
  let x_33 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_30.x, x_30.y));
  u_xlat0 = vec3<f32>(x_33.x, x_33.y, x_33.z);
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = ((x_36 * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_43 : vec3<f32> = u_xlat0;
  let x_44 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_43 * x_44) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_51 : vec3<f32> = u_xlat0;
  let x_52 : vec3<f32> = u_xlat1;
  let x_53 : vec3<f32> = (x_51 * x_52);
  let x_54 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  let x_60 : vec2<f32> = ((x_56 * vec2<f32>(0.5f, 1.0f)) + vec2<f32>(0.5f, 0.0f));
  let x_61 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_60.x, x_60.y, x_61.z);
  let x_66 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_66.x, x_66.y));
  u_xlat0.x = x_68.y;
  let x_76 : f32 = u_xlat0.x;
  SV_Target0.w = x_76;
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

