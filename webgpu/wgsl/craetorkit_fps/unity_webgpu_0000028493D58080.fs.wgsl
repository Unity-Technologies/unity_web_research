struct PGlobals {
  x_TextureSampleAdd : vec4<f32>,
}

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(1) var x_AlphaTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_AlphaTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_COLOR0.w;
  u_xlat0.x = (x_16 * 255.0f);
  let x_23 : f32 = u_xlat0.x;
  u_xlat0.x = round(x_23);
  let x_27 : f32 = u_xlat0.x;
  u_xlat0.w = (x_27 * 0.003921569f);
  let x_45 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_45);
  let x_48 : vec3<f32> = vec3<f32>(x_46.x, x_46.y, x_46.z);
  let x_49 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_48.x, x_48.y, x_48.z, x_49.w);
  let x_51 : vec4<f32> = u_xlat1;
  let x_60 : vec4<f32> = x_55.x_TextureSampleAdd;
  let x_62 : vec3<f32> = (vec3<f32>(x_51.x, x_51.y, x_51.z) + vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_AlphaTex, sampler_AlphaTex, x_71);
  u_xlat2 = x_72.x;
  let x_74 : f32 = u_xlat2;
  let x_77 : f32 = x_55.x_TextureSampleAdd.w;
  u_xlat1.w = (x_74 + x_77);
  let x_80 : vec4<f32> = vs_COLOR0;
  let x_81 : vec3<f32> = vec3<f32>(x_80.x, x_80.y, x_80.z);
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_84 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_84 * x_85);
  let x_89 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat0;
  let x_93 : vec3<f32> = (vec3<f32>(x_89.w, x_89.w, x_89.w) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : f32 = u_xlat0.w;
  SV_Target0.w = x_97;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

